package com.mi.milink.sdk.session.simplechannel;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.text.TextUtils;
import com.mi.milink.sdk.account.IAccount;
import com.mi.milink.sdk.account.manager.MiChannelAccountManager;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.Device.Network;
import com.mi.milink.sdk.base.os.Device.Network.NetworkDetailInfo;
import com.mi.milink.sdk.base.os.info.DeviceDash;
import com.mi.milink.sdk.config.ConfigManager;
import com.mi.milink.sdk.config.MiLinkIpInfoManager;
import com.mi.milink.sdk.connection.DomainManager;
import com.mi.milink.sdk.connection.IConnection;
import com.mi.milink.sdk.connection.IConnectionCallback;
import com.mi.milink.sdk.connection.TcpConnection;
import com.mi.milink.sdk.debug.InternalDataMonitor;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.debug.TrafficMonitor;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.ServerNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.ServerNotificationEvent.EventType;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionConnectEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionConnectEvent.EventType;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionOtherEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionOtherEvent.EventType;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdChannelReq;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdChannelReq.Builder;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdLoginOff;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdLoginOff.Builder;
import com.mi.milink.sdk.session.common.InvalidPacketExecption;
import com.mi.milink.sdk.session.common.MsgProcessor;
import com.mi.milink.sdk.session.common.OpenSessionSucessReturnInfo;
import com.mi.milink.sdk.session.common.ReceiveBuffer;
import com.mi.milink.sdk.session.common.ReceiveBuffer.ReceiveBufferSink;
import com.mi.milink.sdk.session.common.Request;
import com.mi.milink.sdk.session.common.ResponseListener;
import com.mi.milink.sdk.session.common.ServerProfile;
import com.mi.milink.sdk.session.common.SessionConst;
import com.mi.milink.sdk.session.persistent.Session;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.greenrobot.eventbus.EventBus;

public class SessionForSimpleChannel
  extends Session
  implements IConnectionCallback, MsgProcessor
{
  private String TAG = "SessionForSimpleChannel_";
  private MiChannelAccountManager accountManager;
  private int appId;
  private ResponseListener mChannelFastLoginRspListener = new SessionForSimpleChannel.3(this);
  private String mClientIp = "";
  private String mClientIsp = "";
  private Runnable mHandlePendingStatisticTimeoutedRunnable = new SessionForSimpleChannel.2(this);
  private boolean mIsHandshakeRequestFailed = false;
  private ResponseListener mLogoffRspListener = new SessionForSimpleChannel.4(this);
  private OpenSessionSucessReturnInfo mOpenSessionSucessReturnInfo;
  @SuppressLint({"DefaultLocale"})
  private ReceiveBuffer.ReceiveBufferSink mRecBufSink = new SessionForSimpleChannel.1(this);
  private SessionManagerForSimpleChannel sessionManager;
  
  public SessionForSimpleChannel(SessionManagerForSimpleChannel paramSessionManagerForSimpleChannel, MiChannelAccountManager paramMiChannelAccountManager, int paramInt)
  {
    this.TAG += paramInt;
    this.mSessionNO = SessionConst.generateSessionNO();
    this.mLogTag = (String.format("[No:%d]", new Object[] { Integer.valueOf(this.mSessionNO) }) + this.TAG);
    this.mConn = null;
    this.mServerProfile = null;
    this.mRecBuffer = new ReceiveBuffer(this.mRecBufSink, this.mSessionNO, true);
    this.mCurState = 0;
    this.sessionManager = paramSessionManagerForSimpleChannel;
    this.accountManager = paramMiChannelAccountManager;
    this.appId = paramInt;
  }
  
  private void checkIsReadTimeOut()
  {
    Iterator localIterator = this.mRequestMap.keySet().iterator();
    int i = 0;
    int m = 0;
    int j = 0;
    int i3;
    Request localRequest;
    int n;
    int i1;
    int i2;
    int k;
    if (localIterator.hasNext())
    {
      i3 = ((Integer)localIterator.next()).intValue();
      localRequest = (Request)this.mRequestMap.get(Integer.valueOf(i3));
      n = i;
      i1 = m;
      i2 = j;
      if (localRequest != null)
      {
        k = m;
        if (isFastCheckPing(localRequest))
        {
          if (!localRequest.isTimeout()) {
            break label454;
          }
          k = 1;
          j = 1;
        }
      }
    }
    for (;;)
    {
      n = i;
      i1 = k;
      i2 = j;
      if (localRequest.isTimeout())
      {
        MiLinkLog.e(this.mLogTag, "Const.InternalErrorCode.CONNECT_FAIL, seq=" + localRequest.getSeqNo() + ",cmd=" + localRequest.getData().getCommand());
        if (localRequest.getTimeOut() >= 10000) {
          i = 1;
        }
        if (localRequest.canRetry())
        {
          localRequest.setHasRetry();
          MiLinkLog.e(this.mLogTag, "seq=" + localRequest.getSeqNo() + ",cmd=" + localRequest.getData().getCommand() + " will be retry send from timeout check.");
          MiLinkEventForSimpleChannel.SessionOtherEvent localSessionOtherEvent = new MiLinkEventForSimpleChannel.SessionOtherEvent(MiLinkEventForSimpleChannel.SessionOtherEvent.EventType.PackageNeedRetry, this);
          localSessionOtherEvent.obj = localRequest;
          this.sessionManager.getChannelEventBus().post(localSessionOtherEvent);
          m = k;
          break;
        }
        this.mRequestMap.remove(Integer.valueOf(i3));
        MiLinkLog.e(this.mLogTag, "Request read time out, seq=" + localRequest.getSeqNo() + ",cmd=" + localRequest.getData().getCommand());
        localRequest.onDataSendFailed(515, "request time out");
        this.mPendingStatisticTimeoutedRequestMap.put(Integer.valueOf(localRequest.getSeqNo()), localRequest);
        localRequest.onDataSendFailed(516, "native network broken");
        i2 = j;
        i1 = k;
        n = i;
      }
      i = n;
      m = i1;
      j = i2;
      break;
      if (i != 0) {
        MiLinkLog.e(this.mLogTag, Device.Network.getCurrentNetworkDetailInfo().toString());
      }
      if ((m != 0) || (i != 0))
      {
        MiLinkLog.e(this.mLogTag, "checkIsReadTimeOut, fast ping timeout, reconnect");
        disConnect(515);
      }
      while ((j != 0) || (i == 0)) {
        return;
      }
      fastCheckPing();
      return;
      label454:
      j = 1;
      k = m;
    }
  }
  
  private void fastCheckPing()
  {
    Object localObject = new PacketData();
    ((PacketData)localObject).setCommand("milink.ping");
    ((PacketData)localObject).setSeqNo(Global.getSequence());
    localObject = new Request((PacketData)localObject, null, (byte)0, this.accountManager.getCurrentAccount());
    ((Request)localObject).setInternal(true);
    ((Request)localObject).setPing(true);
    ((Request)localObject).setTimeOut(10000);
    MiLinkLog.v(this.mLogTag, "start fast ping, seq=" + ((Request)localObject).getSeqNo());
    handleRequest((Request)localObject);
  }
  
  private void handlePendingStatisticTimeoutedRequestMap()
  {
    long l = System.currentTimeMillis();
    Iterator localIterator = this.mPendingStatisticTimeoutedRequestMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Request localRequest = (Request)((Map.Entry)localIterator.next()).getValue();
      MiLinkLog.v(this.mLogTag, "handleTimeoutedRequest seq=" + localRequest.getSeqNo());
      if (isJustSentFastCheckPing())
      {
        String str1;
        label155:
        InternalDataMonitor localInternalDataMonitor;
        String str2;
        label180:
        int i;
        if (this.mLastSendFastCheckPingTime > this.mLastReceivedFastPingTime)
        {
          if (localRequest.getSentTime() < this.mLastSendFastCheckPingTime)
          {
            MiLinkLog.e(this.mLogTag, "seq=" + localRequest.getSeqNo() + " timeouted, ping also timeout,Reported 3");
            if (localRequest.getData() == null)
            {
              str1 = "milink.ping";
              localInternalDataMonitor = InternalDataMonitor.getInstance(this.appId);
              if (this.mServerProfileForStatistic == null) {
                break label246;
              }
              str2 = this.mServerProfileForStatistic.getServerIP();
              if (this.mServerProfileForStatistic == null) {
                break label253;
              }
            }
            label246:
            label253:
            for (i = this.mServerProfileForStatistic.getServerPort();; i = 0)
            {
              localInternalDataMonitor.trace(str2, i, str1, 3, localRequest.getSentTime(), l, localRequest.getSize(), 0, localRequest.getSeqNo());
              localIterator.remove();
              break;
              str1 = localRequest.getData().getCommand();
              break label155;
              str2 = "";
              break label180;
            }
          }
        }
        else
        {
          MiLinkLog.e(this.mLogTag, "seq=" + localRequest.getSeqNo() + " timeouted, ping not timeout,Reported 1");
          if (localRequest.getData() == null)
          {
            str1 = "milink.ping";
            label305:
            localInternalDataMonitor = InternalDataMonitor.getInstance(this.appId);
            if (this.mServerProfileForStatistic == null) {
              break label396;
            }
            str2 = this.mServerProfileForStatistic.getServerIP();
            label330:
            if (this.mServerProfileForStatistic == null) {
              break label403;
            }
          }
          label396:
          label403:
          for (i = this.mServerProfileForStatistic.getServerPort();; i = 0)
          {
            localInternalDataMonitor.trace(str2, i, str1, 1, localRequest.getSentTime(), l, localRequest.getSize(), 0, localRequest.getSeqNo());
            localIterator.remove();
            break;
            str1 = localRequest.getData().getCommand();
            break label305;
            str2 = "";
            break label330;
          }
        }
      }
    }
  }
  
  private boolean isFastCheckPing(Request paramRequest)
  {
    return (paramRequest.isPingRequest()) && (paramRequest.getTimeOut() == 10000);
  }
  
  private boolean isJustSentFastCheckPing()
  {
    return System.currentTimeMillis() - this.mLastSendFastCheckPingTime <= 20000L;
  }
  
  private void onOpenSessionBuildConnectFail(int paramInt)
  {
    this.mOpenSessionDoneTime = System.currentTimeMillis();
    this.mCurState = 0;
    this.sessionManager.getChannelEventBus().post(new MiLinkEventForSimpleChannel.SessionConnectEvent(MiLinkEventForSimpleChannel.SessionConnectEvent.EventType.SessionBuildFailed, this, paramInt));
  }
  
  private void onOpenSessionBuildConnectSuccess()
  {
    this.mCurState = 2;
    handShake(this.accountManager.getCurrentAccount());
  }
  
  private void onOpenSessionHandshakeFail(int paramInt)
  {
    this.mOpenSessionDoneTime = System.currentTimeMillis();
    this.mCurState = 2;
    this.sessionManager.getChannelEventBus().post(new MiLinkEventForSimpleChannel.SessionConnectEvent(MiLinkEventForSimpleChannel.SessionConnectEvent.EventType.SessionBuildFailed, this, paramInt));
  }
  
  private void onSessionError(int paramInt)
  {
    this.mCurState = 0;
    this.sessionManager.getChannelEventBus().post(new MiLinkEventForSimpleChannel.SessionConnectEvent(MiLinkEventForSimpleChannel.SessionConnectEvent.EventType.SessionRunError, this, paramInt));
  }
  
  private boolean postMessage(int paramInt1, Object paramObject, int paramInt2)
  {
    boolean bool1 = false;
    if (this.mConn == null) {
      MiLinkLog.e(this.mLogTag, "postMessage " + paramInt1 + " mConn == null!!!!");
    }
    for (;;)
    {
      return bool1;
      try
      {
        boolean bool2 = this.mConn.postMessage(paramInt1, paramObject, paramInt2, this);
        bool1 = bool2;
        if (!bool2)
        {
          MiLinkLog.e(this.mLogTag, "mMessage must be full ! uMsg = " + paramInt1);
          return bool2;
        }
      }
      catch (NullPointerException paramObject) {}
    }
    return false;
  }
  
  public void addContinuousRecv110Count()
  {
    this.mContinuousRecv110Count += 1;
  }
  
  public boolean checkExceedMaxContinuousRecv110Count()
  {
    MiLinkLog.v(this.mLogTag, "mContinuousRecv110Count = " + this.mContinuousRecv110Count);
    if (this.mContinuousRecv110Count >= 3)
    {
      this.sessionManager.getChannelEventBus().post(new MiLinkEventForSimpleChannel.ServerNotificationEvent(MiLinkEventForSimpleChannel.ServerNotificationEvent.EventType.ServerLineBroken));
      return false;
    }
    return true;
  }
  
  public boolean checkRequestsTimeout()
  {
    if (shouldCheckRequestsTimeout()) {
      return postMessage(3, null, 0);
    }
    this.sessionManager.getChannelEventBus().post(new MiLinkEventForSimpleChannel.SessionOtherEvent(MiLinkEventForSimpleChannel.SessionOtherEvent.EventType.RequestMapIsEmpty, this));
    return false;
  }
  
  public boolean close()
  {
    if (!this.mCanClose)
    {
      MiLinkLog.i(this.mLogTag, "connecting! can not close");
      return false;
    }
    if (this.mConn != null)
    {
      MiLinkLog.i(this.mLogTag, "stop begin");
      this.mConn.stop();
      this.mConn = null;
      this.mServerProfile = null;
      this.mCurState = 0;
      MiLinkLog.i(this.mLogTag, "stop over");
    }
    return true;
  }
  
  public void disConnect()
  {
    disConnect(-1);
  }
  
  public void disConnect(int paramInt)
  {
    MiLinkLog.i(this.mLogTag, "disConnect, errorCallBackErrorCode=" + paramInt);
    postMessage(4, null, paramInt);
  }
  
  public void fastLogin()
  {
    Object localObject = null;
    switch (this.accountManager.getCurrentAccountType())
    {
    }
    for (;;)
    {
      ((Request)localObject).setInternal(true);
      handleRequest((Request)localObject);
      this.accountManager.setIsLogining(true);
      return;
      localObject = SystemPacketProto.MnsCmdChannelReq.newBuilder();
      ((SystemPacketProto.MnsCmdChannelReq.Builder)localObject).setPrivacyKey(this.accountManager.getCurrentAccount().getPrivacyKey());
      ((SystemPacketProto.MnsCmdChannelReq.Builder)localObject).setDeviceinfo(DeviceDash.getInstance().getDeviceSimplifiedInfo());
      PacketData localPacketData = new PacketData();
      localPacketData.setSeqNo(Global.getSequence());
      localPacketData.setData(((SystemPacketProto.MnsCmdChannelReq.Builder)localObject).build().toByteArray());
      ((SystemPacketProto.MnsCmdChannelReq.Builder)localObject).getDeviceinfo();
      localPacketData.setCommand("milink.channel");
      localObject = new Request(localPacketData, this.mChannelFastLoginRspListener, (byte)9, this.accountManager.getCurrentAccount());
      MiLinkLog.v(this.mLogTag, "start channel fastlogin, seq=" + ((Request)localObject).getSeqNo());
    }
  }
  
  public String getClientIp()
  {
    return this.mClientIp;
  }
  
  public String getClientIsp()
  {
    return this.mClientIsp;
  }
  
  public long getDnsWaitTime()
  {
    return this.mDnsWaitTime;
  }
  
  public OpenSessionSucessReturnInfo getOpenSessionSucessReturnInfo()
  {
    return this.mOpenSessionSucessReturnInfo;
  }
  
  public long getOpenSessionTimecost()
  {
    return this.mOpenSessionDoneTime - this.mConnectStartTime;
  }
  
  public ServerProfile getServerProfile()
  {
    return this.mServerProfile;
  }
  
  public ServerProfile getServerProfileForStatistic()
  {
    return this.mServerProfileForStatistic;
  }
  
  public SessionManagerForSimpleChannel getSessionManagerForSimpleChannel()
  {
    return this.sessionManager;
  }
  
  public int getSessionNO()
  {
    return this.mSessionNO;
  }
  
  public boolean handleRequest(Request paramRequest)
  {
    boolean bool1 = false;
    if (paramRequest == null) {
      MiLinkLog.e(this.mLogTag, "handleRequest request == null");
    }
    boolean bool2;
    do
    {
      return bool1;
      MiLinkLog.v(this.mLogTag, "handleRequest seq=" + paramRequest.getSeqNo() + " mNeedClientInfo=" + this.mNeedClientInfo + " " + this.mServerProfile);
      paramRequest.setHandleSessionNO(this.mSessionNO);
      bool2 = postMessage(2, paramRequest, 0);
      if (this.mConn != null) {
        this.mConn.wakeUp();
      }
      bool1 = bool2;
    } while (this.sessionManager.isTimerOpen());
    this.sessionManager.getChannelEventBus().post(new MiLinkEventForSimpleChannel.SessionOtherEvent(MiLinkEventForSimpleChannel.SessionOtherEvent.EventType.RequestMapIsNotEmpty, this));
    return bool2;
  }
  
  public boolean isAvailable()
  {
    switch (this.mCurState)
    {
    default: 
      return false;
    }
    return true;
  }
  
  public boolean isConnected()
  {
    switch (this.mCurState)
    {
    default: 
      return false;
    }
    return true;
  }
  
  public boolean isDeadConnection(long paramLong1, long paramLong2)
  {
    return System.currentTimeMillis() - this.mLastReceivedPacketTime > paramLong2;
  }
  
  public void logoff()
  {
    Object localObject = SystemPacketProto.MnsCmdLoginOff.newBuilder();
    if (!TextUtils.isEmpty(ConfigManager.getInstance().getSuid())) {
      ((SystemPacketProto.MnsCmdLoginOff.Builder)localObject).setSUID(ConfigManager.getInstance().getSuid());
    }
    localObject = ((SystemPacketProto.MnsCmdLoginOff.Builder)localObject).build();
    PacketData localPacketData = new PacketData();
    localPacketData.setNeedResponse(false);
    localPacketData.setCommand("milink.loginoff");
    localPacketData.setSeqNo(Global.getSequence());
    localPacketData.setData(((SystemPacketProto.MnsCmdLoginOff)localObject).toByteArray());
    localObject = new Request(localPacketData, this.mLogoffRspListener, (byte)8, this.accountManager.getCurrentAccount());
    ((Request)localObject).setInternal(true);
    MiLinkLog.v(this.mLogTag, "start logoff, seq=" + ((Request)localObject).getSeqNo());
    handleRequest((Request)localObject);
  }
  
  public void onAccNeedRetryWithClientInfo(Request paramRequest)
  {
    MiLinkLog.w(this.TAG, "onAccNeedRetryWithClientInfo");
    this.mNeedClientInfo = true;
    if (paramRequest.getRetryCount() <= 0)
    {
      paramRequest.addRetryCount();
      handleRequest(paramRequest);
      return;
    }
    MiLinkLog.w(this.TAG, "try 118 too many times");
  }
  
  public boolean onConnect(boolean paramBoolean, int paramInt)
  {
    this.mCanClose = true;
    MiLinkLog.d(this.mLogTag, "isSuccess=" + paramBoolean);
    if (paramBoolean)
    {
      onOpenSessionBuildConnectSuccess();
      return true;
    }
    onOpenSessionBuildConnectFail(paramInt);
    return true;
  }
  
  public boolean onDisconnect()
  {
    MiLinkLog.i(this.mLogTag, "OnDisconnect");
    this.mRecBuffer.reset();
    Iterator localIterator = this.mRequestMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Integer)localIterator.next();
      localObject = (Request)this.mRequestMap.get(localObject);
      if (localObject != null)
      {
        MiLinkLog.e(this.mLogTag, "Const.InternalErrorCode.CONNECT_FAIL, seq=" + ((Request)localObject).getSeqNo() + ",cmd=" + ((Request)localObject).getData().getCommand());
        if (((Request)localObject).canRetry())
        {
          ((Request)localObject).setHasRetry();
          MiLinkLog.e(this.mLogTag, "seq=" + ((Request)localObject).getSeqNo() + ",cmd=" + ((Request)localObject).getData().getCommand() + " will be retry send from onDisconnect.");
          MiLinkEventForSimpleChannel.SessionOtherEvent localSessionOtherEvent = new MiLinkEventForSimpleChannel.SessionOtherEvent(MiLinkEventForSimpleChannel.SessionOtherEvent.EventType.PackageNeedRetry, this);
          localSessionOtherEvent.obj = localObject;
          this.sessionManager.getChannelEventBus().post(localSessionOtherEvent);
        }
        else
        {
          ((Request)localObject).onDataSendFailed(516, "native network broken");
        }
      }
    }
    this.mRequestMap.clear();
    handlePendingStatisticTimeoutedRequestMap();
    this.mPendingStatisticTimeoutedRequestMap.clear();
    return true;
  }
  
  public boolean onError(int paramInt)
  {
    if (this.mIsHandshakeRequestFailed)
    {
      MiLinkLog.e(this.mLogTag, "onError but handshake failed has already notice SM, socketStatus:" + paramInt + ", mCurState=" + this.mCurState);
      this.mIsHandshakeRequestFailed = false;
      return true;
    }
    MiLinkLog.e(this.mLogTag, "onError socketStatus " + paramInt + ", mCurState=" + this.mCurState);
    switch (this.mCurState)
    {
    default: 
      MiLinkLog.e(this.mLogTag, "onError wrong state = " + this.mCurState);
      return true;
    case 0: 
    case 1: 
    case 2: 
      onOpenSessionBuildConnectFail(1);
      return true;
    case 3: 
      if (paramInt == 526)
      {
        onOpenSessionHandshakeFail(3);
        return true;
      }
      onOpenSessionHandshakeFail(2);
      return true;
    }
    onSessionError(paramInt);
    return true;
  }
  
  public void onMsgProc(int paramInt1, Object paramObject, int paramInt2)
  {
    MiLinkLog.v(this.mLogTag, "onMsgProc, uMsg=" + paramInt1 + ", wParam=" + paramInt2);
    switch (paramInt1)
    {
    default: 
      MiLinkLog.e(this.mLogTag, "OnMsgProc unknow uMsgID = " + paramInt1);
    case 1: 
    case 2: 
    case 3: 
    case 4: 
      do
      {
        String str;
        byte[] arrayOfByte;
        do
        {
          do
          {
            return;
            if (this.mServerProfile == null)
            {
              MiLinkLog.e(this.mLogTag, "OnMsgProc mServerProfile == null!!!");
              onOpenSessionBuildConnectFail(1);
              return;
            }
            this.mServerProfileForStatistic = this.mServerProfile;
            long l = System.currentTimeMillis();
            paramObject = MiLinkIpInfoManager.getInstance().getDefaultHost();
            if (this.mServerProfile.getServerIP().equals(paramObject))
            {
              paramObject = DomainManager.getInstance().getDomainIP(this.mServerProfile.getServerIP());
              if (paramObject == null)
              {
                onOpenSessionBuildConnectFail(1);
                return;
              }
              this.mServerProfile.setServerIP((String)paramObject);
            }
            for (;;)
            {
              MiLinkLog.e(this.mLogTag, "connect to " + this.mServerProfile);
              this.mConnectStartTime = System.currentTimeMillis();
              this.mDnsWaitTime = (this.mConnectStartTime - l);
              if (this.mConn == null) {
                break;
              }
              this.mCanClose = false;
              this.mConn.connect((String)paramObject, this.mServerProfile.getServerPort(), this.mServerProfile.getProxyIP(), this.mServerProfile.getPorxyPort(), ConfigManager.getInstance().getConnetionTimeout(), 0);
              return;
              paramObject = this.mServerProfile.getServerIP();
            }
            paramObject = (Request)paramObject;
          } while (paramObject == null);
          if (!((Request)paramObject).isValidNow())
          {
            MiLinkLog.e(this.mLogTag, String.format("seq=%d,cmd=%s is invalid", new Object[] { Integer.valueOf(((Request)paramObject).getSeqNo()), ((Request)paramObject).getData().getCommand() }));
            this.mRequestMap.remove(Integer.valueOf(((Request)paramObject).getSeqNo()));
            ((Request)paramObject).onDataSendFailed(998, "package is already over the valid time");
            return;
          }
          ((Request)paramObject).setSentTime(System.currentTimeMillis());
          PacketData localPacketData = ((Request)paramObject).getData();
          str = localPacketData.getCommand();
          if (("milink.fastlogin".equals(str)) || ("milink.anonymous".equals(str)))
          {
            this.mNeedClientInfo = true;
            MiLinkLog.v(this.mLogTag, "set mNeedClientInfo=true when send login or fastlogin");
          }
          localPacketData.setNeedClientInfo(this.mNeedClientInfo);
          arrayOfByte = ((Request)paramObject).toBytes();
          if (localPacketData.needResponse()) {
            this.mRequestMap.put(Integer.valueOf(((Request)paramObject).getSeqNo()), paramObject);
          }
          if (isFastCheckPing((Request)paramObject))
          {
            this.mLastSendFastCheckPingTime = System.currentTimeMillis();
            Global.getMainHandler().postDelayed(this.mHandlePendingStatisticTimeoutedRunnable, 10200L);
          }
          if (arrayOfByte == null) {
            break;
          }
          MiLinkLog.v(this.mLogTag, "connection send data, seq=" + ((Request)paramObject).getSeqNo());
        } while (!this.mConn.sendData(arrayOfByte, ((Request)paramObject).getSeqNo(), ((Request)paramObject).getTimeOut()));
        TrafficMonitor.getInstance().traffic(str, arrayOfByte.length);
        return;
        this.mRequestMap.remove(Integer.valueOf(((Request)paramObject).getSeqNo()));
        ((Request)paramObject).onDataSendFailed(518, "data encryption failed");
        MiLinkLog.w(this.mLogTag, "connection send data, but data = null");
        return;
        checkIsReadTimeOut();
        return;
        if (this.mConn != null) {
          this.mConn.disconnect();
        }
        this.mCurState = 0;
      } while (paramInt2 <= 0);
      onSessionError(paramInt2);
      return;
    }
    handlePendingStatisticTimeoutedRequestMap();
  }
  
  protected void onOpenSessionHandshakeSuccess(OpenSessionSucessReturnInfo paramOpenSessionSucessReturnInfo)
  {
    this.mOpenSessionDoneTime = System.currentTimeMillis();
    this.mCurState = 4;
    this.mOpenSessionSucessReturnInfo = paramOpenSessionSucessReturnInfo;
    this.sessionManager.getChannelEventBus().post(new MiLinkEventForSimpleChannel.SessionConnectEvent(MiLinkEventForSimpleChannel.SessionConnectEvent.EventType.SessionBuildSuccess, this, 0));
  }
  
  public boolean onRecv(byte[] paramArrayOfByte)
  {
    MiLinkLog.v(this.mLogTag, "recv data:" + paramArrayOfByte.length);
    if (this.mRecBuffer != null) {}
    try
    {
      this.mRecBuffer.append(paramArrayOfByte);
      return true;
    }
    catch (InvalidPacketExecption paramArrayOfByte)
    {
      disConnect(517);
      if (paramArrayOfByte.errCode == 1) {
        this.sessionManager.getChannelEventBus().post(new MiLinkEventForSimpleChannel.SessionOtherEvent(MiLinkEventForSimpleChannel.SessionOtherEvent.EventType.RecvInvalidPacket, this));
      }
    }
    return false;
  }
  
  public boolean onSendBegin(int paramInt)
  {
    MiLinkLog.v(this.mLogTag, "send begin: seq=" + paramInt);
    return false;
  }
  
  public boolean onSendEnd(int paramInt)
  {
    MiLinkLog.v(this.mLogTag, "send end: seq=" + paramInt);
    return false;
  }
  
  public boolean onStart()
  {
    return false;
  }
  
  public boolean onTimeOut(int paramInt1, int paramInt2)
  {
    MiLinkLog.v(this.mLogTag, "send time out: seq=" + paramInt1);
    return false;
  }
  
  public boolean openSession(ServerProfile paramServerProfile)
  {
    resetContinuousRecv110Count();
    this.mIsHandshakeRequestFailed = false;
    this.mNeedClientInfo = true;
    if ((paramServerProfile == null) || (paramServerProfile.getProtocol() == 0))
    {
      MiLinkLog.v(this.mLogTag, "openSession fail, serverprofile=" + paramServerProfile);
      onOpenSessionBuildConnectFail(557);
      return false;
    }
    this.mCurState = 1;
    this.mLastSendFastCheckPingTime = 0L;
    boolean bool;
    if ((this.mServerProfile == null) || (this.mServerProfile.getProtocol() != paramServerProfile.getProtocol()))
    {
      MiLinkLog.v(this.mLogTag, "openSession if");
      if (this.mConn != null) {
        this.mConn.stop();
      }
      if (paramServerProfile.getProtocol() == 1) {
        this.mConn = new TcpConnection(this.mSessionNO, this);
      }
      this.mServerProfile = paramServerProfile;
      try
      {
        bool = this.mConn.start();
        if (bool) {
          break label283;
        }
        onOpenSessionBuildConnectFail(562);
        return false;
      }
      catch (Exception localException1)
      {
        for (;;)
        {
          MiLinkLog.e(this.mLogTag, "connection start failed", localException1);
          bool = false;
        }
      }
    }
    else
    {
      MiLinkLog.v(this.mLogTag, "openSession else");
      if ((this.mConn == null) && (paramServerProfile.getProtocol() == 1)) {
        this.mConn = new TcpConnection(this.mSessionNO, this);
      }
      if (!this.mConn.isRunning())
      {
        this.mServerProfile = paramServerProfile;
        try
        {
          bool = this.mConn.start();
          if (!bool)
          {
            onOpenSessionBuildConnectFail(562);
            return false;
          }
        }
        catch (Exception localException2)
        {
          for (;;)
          {
            MiLinkLog.e(this.mLogTag, "connection start failed", localException2);
            bool = false;
          }
        }
      }
    }
    label283:
    this.mServerProfile = paramServerProfile;
    postMessage(1, null, 0);
    return true;
  }
  
  public void postStatisticsTimeoutPacketAction()
  {
    postMessage(5, null, 0);
  }
  
  public void resetContinuousRecv110Count()
  {
    this.mContinuousRecv110Count = 0;
  }
  
  public boolean shouldCheckRequestsTimeout()
  {
    return (isConnected()) && (!this.mRequestMap.isEmpty());
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\SessionForSimpleChannel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */