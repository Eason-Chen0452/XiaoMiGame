package com.mi.milink.sdk.session.persistent;

import android.os.Handler;
import android.text.TextUtils;
import com.google.protobuf.ByteString;
import com.mi.milink.sdk.account.AnonymousAccount;
import com.mi.milink.sdk.account.IAccount;
import com.mi.milink.sdk.account.MiAccount;
import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.Device.Network;
import com.mi.milink.sdk.base.os.Device.Network.NetworkDetailInfo;
import com.mi.milink.sdk.base.os.info.DeviceDash;
import com.mi.milink.sdk.config.ConfigManager;
import com.mi.milink.sdk.config.HeartBeatManager;
import com.mi.milink.sdk.config.MiLinkIpInfoManager;
import com.mi.milink.sdk.connection.DomainManager;
import com.mi.milink.sdk.connection.IConnection;
import com.mi.milink.sdk.connection.IConnectionCallback;
import com.mi.milink.sdk.connection.TcpConnection;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.debug.InternalDataMonitor;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.debug.TrafficMonitor;
import com.mi.milink.sdk.event.MiLinkEvent.ServerNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEvent.ServerNotificationEvent.EventType;
import com.mi.milink.sdk.event.MiLinkEvent.SessionConnectEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SessionConnectEvent.EventType;
import com.mi.milink.sdk.event.MiLinkEvent.SessionOtherEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SessionOtherEvent.EventType;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdAnonymousReq;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdAnonymousReq.Builder;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdFastloginReq;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdFastloginReq.Builder;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdHandShakeReq;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdHandShakeReq.Builder;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdHeartBeat;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdHeartBeat.Builder;
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
import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import org.greenrobot.eventbus.EventBus;

public class Session
  implements IConnectionCallback, MsgProcessor
{
  protected static final int CONNECTED_STATE = 2;
  protected static final int CONNECTING_STATE = 1;
  protected static final int FAST_CHECK_PING_TIME_OUT = 10000;
  protected static final int HANDSHAKE_INITED_STATE = 4;
  protected static final int HANDSHAKE_INITING_STATE = 3;
  protected static final int MSG_CHECK_TIMEOUT = 3;
  protected static final int MSG_CONNECT = 1;
  protected static final int MSG_DISCONNECT = 4;
  protected static final int MSG_HANDLE_REQUEST = 2;
  protected static final int MSG_POST_STATISTICS_TIMEOUT_PACKET = 5;
  protected static final int NO_CONNECT_STATE = 0;
  public static final int SESSION_TYPE_ASSIST = 1;
  public static final int SESSION_TYPE_DEFAULT = 0;
  private String TAG = "Session";
  private int appId;
  private ResponseListener mAnonymousFastLoginRspListener = new Session.4(this);
  protected boolean mCanClose = true;
  private ResponseListener mChannelFastLoginRspListener = new Session.6(this);
  private String mClientIp = "";
  private String mClientIsp = "";
  protected IConnection mConn;
  protected long mConnectStartTime = 0L;
  protected int mContinuousRecv110Count = 0;
  protected int mCurState = 0;
  protected long mDnsWaitTime = 0L;
  private ResponseListener mFastLoginRspListener = new Session.5(this);
  public int mFlagForSessionManager;
  protected ResponseListener mHandShakeRspListener = new Session.3(this);
  private Runnable mHandlePendingStatisticTimeoutedRunnable = new Session.2(this);
  private boolean mIsHandshakeRequestFailed = false;
  protected long mLastReceivedFastPingTime = 0L;
  protected long mLastReceivedPacketTime = 0L;
  protected long mLastSendFastCheckPingTime = 0L;
  protected String mLogTag = this.TAG;
  private ResponseListener mLogoffRspListener = new Session.9(this);
  protected boolean mNeedClientInfo = true;
  protected long mOpenSessionDoneTime = 0L;
  private OpenSessionSucessReturnInfo mOpenSessionSucessReturnInfo;
  protected ConcurrentHashMap<Integer, Request> mPendingStatisticTimeoutedRequestMap = new ConcurrentHashMap();
  private ReceiveBuffer.ReceiveBufferSink mRecBufSink = new Session.1(this);
  protected ReceiveBuffer mRecBuffer;
  protected RecvDataProcessUtil mRecvDataProcessUtil = new RecvDataProcessUtil(this);
  protected ConcurrentHashMap<Integer, Request> mRequestMap = new ConcurrentHashMap();
  protected ServerProfile mServerProfile;
  protected ServerProfile mServerProfileForStatistic;
  protected int mSessionNO = 0;
  protected int mSessionType = 1;
  
  public Session()
  {
    this(0);
    this.appId = Global.getClientAppInfo().getAppId();
    this.TAG += this.appId;
  }
  
  public Session(int paramInt)
  {
    this.mSessionType = paramInt;
    this.mSessionNO = SessionConst.generateSessionNO();
    ReceiveBuffer.ReceiveBufferSink localReceiveBufferSink;
    if (this.mSessionType == 1)
    {
      this.mLogTag = (String.format("[as_No:%d]", new Object[] { Integer.valueOf(this.mSessionNO) }) + this.TAG);
      this.mConn = null;
      this.mServerProfile = null;
      localReceiveBufferSink = this.mRecBufSink;
      paramInt = this.mSessionNO;
      if (this.mSessionType != 1) {
        break label372;
      }
    }
    for (;;)
    {
      this.mRecBuffer = new ReceiveBuffer(localReceiveBufferSink, paramInt, bool);
      this.mCurState = 0;
      return;
      this.mLogTag = (String.format("[No:%d]", new Object[] { Integer.valueOf(this.mSessionNO) }) + this.TAG);
      break;
      label372:
      bool = false;
    }
  }
  
  private void checkIsReadTimeOut()
  {
    int j = 0;
    boolean bool1 = false;
    ConcurrentLinkedQueue localConcurrentLinkedQueue = new ConcurrentLinkedQueue();
    Iterator localIterator = this.mRequestMap.keySet().iterator();
    int i = 0;
    Request localRequest;
    boolean bool3;
    if (localIterator.hasNext())
    {
      int n = ((Integer)localIterator.next()).intValue();
      localRequest = (Request)this.mRequestMap.get(Integer.valueOf(n));
      k = i;
      bool3 = bool1;
      int m = j;
      if (localRequest != null)
      {
        bool2 = bool1;
        if (isFastCheckPing(localRequest))
        {
          k = 1;
          bool2 = bool1;
          j = k;
          if (localRequest.isTimeout())
          {
            if (this.mLastReceivedPacketTime >= localRequest.getCreatedTime()) {
              break label280;
            }
            bool2 = true;
            MiLinkLog.e(this.mLogTag, "mLastReceivedPacketTime = " + this.mLastReceivedPacketTime + ",createTime = " + localRequest.getCreatedTime() + ", fastping is timeout");
          }
        }
      }
      for (j = k;; j = k)
      {
        k = i;
        bool3 = bool2;
        m = j;
        if (localRequest.isTimeout())
        {
          i += 1;
          this.mRequestMap.remove(Integer.valueOf(n));
          localConcurrentLinkedQueue.add(localRequest);
          k = i;
          bool3 = bool2;
          m = j;
          if ("milink.heartbeat" == localRequest.getData().getCommand())
          {
            HeartBeatManager.getInstance().reciveTimeoutHeartBeat(localRequest.getData().getSeqNo());
            m = j;
            bool3 = bool2;
            k = i;
          }
        }
        i = k;
        bool1 = bool3;
        j = m;
        break;
        label280:
        MiLinkLog.e(this.mLogTag, "mLastReceivedPacketTime = " + this.mLastReceivedPacketTime + ",createTime = " + localRequest.getCreatedTime() + ", fastping timeout,but can recv msg");
        bool2 = bool1;
      }
    }
    int k = 0;
    long l = System.currentTimeMillis();
    localIterator = localConcurrentLinkedQueue.iterator();
    boolean bool2 = false;
    while (localIterator.hasNext())
    {
      localRequest = (Request)localIterator.next();
      MiLinkLog.e(this.mLogTag, "Request read time out, seq=" + localRequest.getSeqNo() + ",cmd=" + localRequest.getData().getCommand());
      if (localRequest.getTimeOut() >= 10000) {
        k = 1;
      }
      if (l - localRequest.getSentTime() > 40000L)
      {
        bool2 = true;
        MiLinkLog.e(this.mLogTag, "hasLongLongTimeoutRequest=true");
      }
      localRequest.onDataSendFailed(515, "request time out");
      this.mPendingStatisticTimeoutedRequestMap.put(Integer.valueOf(localRequest.getSeqNo()), localRequest);
    }
    localConcurrentLinkedQueue.clear();
    if (k != 0) {
      MiLinkLog.e(this.mLogTag, Device.Network.getCurrentNetworkDetailInfo().toString());
    }
    if (System.currentTimeMillis() - this.mLastReceivedPacketTime > 300000L)
    {
      bool3 = true;
      if ((!bool1) && (!bool2) && (!bool3) && (i <= 2)) {
        break label625;
      }
      MiLinkLog.e(this.mLogTag, "checkIsReadTimeOut,isFastCheckPingTimeout=" + bool1 + " hasLongLongTimeoutRequest=" + bool2 + " isFastCheckPingTimeout || hasLongLongTimeoutRequest || isBadConnect=" + bool3 + " timeoutNum=" + i);
      disConnect(515);
    }
    label625:
    while ((j != 0) || (k == 0))
    {
      return;
      bool3 = false;
      break;
    }
    fastCheckPing();
  }
  
  private void fastCheckPing()
  {
    Object localObject = new PacketData();
    ((PacketData)localObject).setCommand("milink.ping");
    ((PacketData)localObject).setSeqNo(Global.getSequence());
    localObject = new Request((PacketData)localObject, null, (byte)0, MiAccountManager.getInstance().getCurrentAccount());
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
    if (this.mSessionType == 1)
    {
      EventBus.getDefault().post(new MiLinkEvent.SessionConnectEvent(MiLinkEvent.SessionConnectEvent.EventType.AssistSessionConnectFailed, this, paramInt));
      return;
    }
    EventBus.getDefault().post(new MiLinkEvent.SessionConnectEvent(MiLinkEvent.SessionConnectEvent.EventType.SessionBuildFailed, this, paramInt));
  }
  
  private void onOpenSessionBuildConnectSuccess()
  {
    this.mCurState = 2;
    if (this.mSessionType == 1)
    {
      EventBus.getDefault().post(new MiLinkEvent.SessionConnectEvent(MiLinkEvent.SessionConnectEvent.EventType.AssistSessionConnectSuccess, this, 0));
      return;
    }
    handShake(MiAccountManager.getInstance().getCurrentAccount());
  }
  
  private void onOpenSessionHandshakeFail(int paramInt)
  {
    this.mOpenSessionDoneTime = System.currentTimeMillis();
    this.mCurState = 2;
    EventBus.getDefault().post(new MiLinkEvent.SessionConnectEvent(MiLinkEvent.SessionConnectEvent.EventType.SessionBuildFailed, this, paramInt));
  }
  
  private void onSessionError(int paramInt)
  {
    this.mCurState = 0;
    if (this.mSessionType == 1)
    {
      EventBus.getDefault().post(new MiLinkEvent.SessionConnectEvent(MiLinkEvent.SessionConnectEvent.EventType.AssistSessionRunError, this, paramInt));
      return;
    }
    EventBus.getDefault().post(new MiLinkEvent.SessionConnectEvent(MiLinkEvent.SessionConnectEvent.EventType.SessionRunError, this, paramInt));
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
      if (this.mSessionType == 0) {
        EventBus.getDefault().post(new MiLinkEvent.ServerNotificationEvent(MiLinkEvent.ServerNotificationEvent.EventType.ServerLineBroken));
      }
      return false;
    }
    return true;
  }
  
  public boolean checkRequestsTimeout()
  {
    if (shouldCheckRequestsTimeout()) {
      return postMessage(3, null, 0);
    }
    EventBus.getDefault().post(new MiLinkEvent.SessionOtherEvent(MiLinkEvent.SessionOtherEvent.EventType.RequestMapIsEmpty, this));
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
      MiLinkLog.w(this.mLogTag, "stop begin");
      this.mConn.stop();
      this.mConn = null;
      this.mServerProfile = null;
      this.mCurState = 0;
      MiLinkLog.w(this.mLogTag, "stop over");
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
    Object localObject1 = null;
    switch (MiAccountManager.getInstance().getCurrentAccountType())
    {
    default: 
      ((Request)localObject1).setInternal(true);
      handleRequest((Request)localObject1);
      MiAccountManager.getInstance().setIsLogining(true);
      return;
    case 1: 
      localObject1 = SystemPacketProto.MnsCmdAnonymousReq.newBuilder();
      localObject2 = ConfigManager.getInstance().getSuidAnonymous();
      if (!TextUtils.isEmpty((CharSequence)localObject2))
      {
        ((SystemPacketProto.MnsCmdAnonymousReq.Builder)localObject1).setSUID((String)localObject2);
        MiLinkLog.w(this.TAG, "start Anonymous fastlogin, suid=" + (String)localObject2);
      }
      for (;;)
      {
        ((SystemPacketProto.MnsCmdAnonymousReq.Builder)localObject1).setPrivacyKey(AnonymousAccount.getInstance().getPrivacyKey());
        ((SystemPacketProto.MnsCmdAnonymousReq.Builder)localObject1).setDeviceinfo(DeviceDash.getInstance().getDeviceSimplifiedInfo());
        ((SystemPacketProto.MnsCmdAnonymousReq.Builder)localObject1).setOnoff(true);
        localObject2 = new PacketData();
        ((PacketData)localObject2).setSeqNo(Global.getSequence());
        ((PacketData)localObject2).setData(((SystemPacketProto.MnsCmdAnonymousReq.Builder)localObject1).build().toByteArray());
        ((PacketData)localObject2).setCommand("milink.anonymous");
        localObject1 = new Request((PacketData)localObject2, this.mAnonymousFastLoginRspListener, (byte)7, AnonymousAccount.getInstance());
        MiLinkLog.v(this.mLogTag, "start anonymous fastlogin, seq=" + ((Request)localObject1).getSeqNo());
        break;
        MiLinkLog.w(this.TAG, "start Anonymous fastlogin, suid is empty");
      }
    }
    localObject1 = SystemPacketProto.MnsCmdFastloginReq.newBuilder();
    Object localObject2 = ConfigManager.getInstance().getSuid();
    if (!TextUtils.isEmpty((CharSequence)localObject2))
    {
      ((SystemPacketProto.MnsCmdFastloginReq.Builder)localObject1).setSUID((String)localObject2);
      MiLinkLog.w(this.TAG, "start fastlogin, suid=" + (String)localObject2);
    }
    for (;;)
    {
      ((SystemPacketProto.MnsCmdFastloginReq.Builder)localObject1).setPassportlogin(MiAccountManager.getInstance().getPassportInit());
      ((SystemPacketProto.MnsCmdFastloginReq.Builder)localObject1).setOnoff(true);
      localObject2 = MiAccount.getInstance().getFastLoginExtra();
      if (localObject2 != null) {
        ((SystemPacketProto.MnsCmdFastloginReq.Builder)localObject1).setExtra(ByteString.copyFrom((byte[])localObject2));
      }
      localObject2 = new PacketData();
      ((PacketData)localObject2).setSeqNo(Global.getSequence());
      ((PacketData)localObject2).setData(((SystemPacketProto.MnsCmdFastloginReq.Builder)localObject1).build().toByteArray());
      ((PacketData)localObject2).setCommand("milink.fastlogin");
      localObject1 = new Request((PacketData)localObject2, this.mFastLoginRspListener, (byte)3, MiAccount.getInstance());
      MiLinkLog.v(this.mLogTag, "start fastlogin, seq=" + ((Request)localObject1).getSeqNo());
      break;
      MiLinkLog.w(this.TAG, "start fastlogin, suid is empty");
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
  
  public int getSessionNO()
  {
    return this.mSessionNO;
  }
  
  protected void handShake(IAccount paramIAccount)
  {
    this.mCurState = 3;
    Object localObject = SystemPacketProto.MnsCmdHandShakeReq.newBuilder();
    ((SystemPacketProto.MnsCmdHandShakeReq.Builder)localObject).setType(1);
    localObject = ((SystemPacketProto.MnsCmdHandShakeReq.Builder)localObject).build();
    PacketData localPacketData = new PacketData();
    localPacketData.setCommand("milink.handshake");
    localPacketData.setSeqNo(Global.getSequence());
    localPacketData.setData(((SystemPacketProto.MnsCmdHandShakeReq)localObject).toByteArray());
    paramIAccount = new Request(localPacketData, this.mHandShakeRspListener, (byte)5, paramIAccount);
    paramIAccount.setInternal(true);
    MiLinkLog.v(this.mLogTag, "start hand shake, seq=" + paramIAccount.getSeqNo());
    handleRequest(paramIAccount);
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
      HeartBeatManager.getInstance().setLastPacketSendTime(paramRequest.getData().getSeqNo(), paramRequest.getData().getCommand());
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("handleRequest seq=").append(paramRequest.getSeqNo()).append(" cmd=").append(paramRequest.getData().getCommand()).append(" mServerProfile=").append(this.mServerProfile.toString()).append(" mNeedClientInfo=").append(this.mNeedClientInfo);
      MiLinkLog.w(this.mLogTag, localStringBuilder.toString());
      paramRequest.setHandleSessionNO(this.mSessionNO);
      bool2 = postMessage(2, paramRequest, 0);
      if (this.mConn != null) {
        this.mConn.wakeUp();
      }
      bool1 = bool2;
    } while (SessionManager.getInstance().isTimerOpen());
    EventBus.getDefault().post(new MiLinkEvent.SessionOtherEvent(MiLinkEvent.SessionOtherEvent.EventType.RequestMapIsNotEmpty, this));
    return bool2;
  }
  
  public void heartBeat(boolean paramBoolean)
  {
    if (!Global.getClientAppInfo().isHeartBeatEnable()) {
      return;
    }
    SystemPacketProto.MnsCmdHeartBeat.Builder localBuilder = SystemPacketProto.MnsCmdHeartBeat.newBuilder().setTimeStamp(ConfigManager.getInstance().getConfigTimeStamp());
    Object localObject1;
    if (MiAccountManager.getInstance().isAnonymousModeCurrent()) {
      localObject1 = ConfigManager.getInstance().getSuidAnonymous();
    }
    for (;;)
    {
      label76:
      Object localObject2;
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        localBuilder.setSUID((String)localObject1);
        MiLinkLog.v(this.mLogTag, "start heartbeat, suid=" + (String)localObject1);
        localObject1 = new B();
        if ((ClientAppInfo.isSupportMiPush()) && (!MiAccountManager.getInstance().hasUploadRegIdToServer()))
        {
          localObject2 = MiAccountManager.getInstance().getMiPushRegId();
          if (TextUtils.isEmpty((CharSequence)localObject2)) {}
        }
      }
      try
      {
        MiLinkLog.v(this.TAG, "heartbeat regid:" + (String)localObject2);
        localBuilder.setDevicetoken(ByteString.copyFrom(((String)localObject2).getBytes("utf-8")));
        ((B)localObject1).b = true;
        localObject2 = new PacketData();
        ((PacketData)localObject2).setCommand("milink.heartbeat");
        ((PacketData)localObject2).setSeqNo(Global.getSequence());
        ((PacketData)localObject2).setData(localBuilder.build().toByteArray());
        localObject1 = new Request((PacketData)localObject2, new Session.7(this, (B)localObject1), MiAccountManager.getInstance().getBusinessEncByMode(), MiAccountManager.getInstance().getCurrentAccount());
        ((Request)localObject1).setInternal(true);
        if (paramBoolean)
        {
          ((Request)localObject1).setAfterHandleCallBack(new Session.8(this));
          HeartBeatManager.getInstance().startHeartBeatProbeManager(((PacketData)localObject2).getSeqNo());
        }
        for (;;)
        {
          MiLinkLog.v(this.mLogTag, "start heartbeat, seq=" + ((Request)localObject1).getSeqNo());
          handleRequest((Request)localObject1);
          return;
          localObject1 = ConfigManager.getInstance().getSuid();
          break;
          MiLinkLog.v(this.mLogTag, "start heartbeat, suid is empty");
          break label76;
          HeartBeatManager.getInstance().sendHeartBeat(((PacketData)localObject2).getSeqNo());
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        for (;;) {}
      }
    }
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
    localObject = new Request(localPacketData, this.mLogoffRspListener, MiAccountManager.getInstance().getBusinessEncByMode(), MiAccountManager.getInstance().getCurrentAccount());
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
        ((Request)localObject).onDataSendFailed(516, "native network broken");
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
        MiLinkLog.w(this.mLogTag, "OnMsgProc disconnect = " + paramInt2 + " mCurState=" + this.mCurState);
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
    EventBus.getDefault().post(new MiLinkEvent.SessionConnectEvent(MiLinkEvent.SessionConnectEvent.EventType.SessionBuildSuccess, this, 0));
  }
  
  public boolean onRecv(byte[] paramArrayOfByte)
  {
    MiLinkLog.w(this.mLogTag, "recv data:" + paramArrayOfByte.length);
    if (this.mRecBuffer != null) {}
    try
    {
      this.mRecBuffer.append(paramArrayOfByte);
      return true;
    }
    catch (InvalidPacketExecption paramArrayOfByte)
    {
      if ((this.mCurState != 3) && (this.mCurState != 4)) {
        disConnect(517);
      }
      if ((paramArrayOfByte.errCode == 1) && (this.mSessionType == 0)) {
        EventBus.getDefault().post(new MiLinkEvent.SessionOtherEvent(MiLinkEvent.SessionOtherEvent.EventType.RecvInvalidPacket, this));
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
    MiLinkLog.w(this.mLogTag, "send end: seq=" + paramInt);
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
          break label263;
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
    label263:
    this.mServerProfile = paramServerProfile;
    postMessage(1, null, 0);
    return true;
  }
  
  public void ping()
  {
    Object localObject = new PacketData();
    ((PacketData)localObject).setCommand("milink.ping");
    ((PacketData)localObject).setSeqNo(Global.getSequence());
    localObject = new Request((PacketData)localObject, null, (byte)0, MiAccountManager.getInstance().getCurrentAccount());
    ((Request)localObject).setInternal(true);
    ((Request)localObject).setPing(true);
    MiLinkLog.v(this.mLogTag, "start ping, seq=" + ((Request)localObject).getSeqNo());
    handleRequest((Request)localObject);
  }
  
  public void postStatisticsTimeoutPacketAction()
  {
    postMessage(5, null, 0);
  }
  
  public void pushAck(int paramInt)
  {
    paramInt *= -1;
    Object localObject = new PacketData();
    ((PacketData)localObject).setCommand("milink.push.ack");
    ((PacketData)localObject).setSeqNo(paramInt);
    ((PacketData)localObject).setData(new byte[0]);
    ((PacketData)localObject).setNeedResponse(false);
    ((PacketData)localObject).setNeedClientInfo(false);
    localObject = new Request((PacketData)localObject, null, MiAccountManager.getInstance().getBusinessEncByMode(), MiAccountManager.getInstance().getCurrentAccount());
    ((Request)localObject).setInternal(true);
    MiLinkLog.v(this.mLogTag, "start push ack, seq=" + paramInt);
    handleRequest((Request)localObject);
  }
  
  public void resetContinuousRecv110Count()
  {
    this.mContinuousRecv110Count = 0;
  }
  
  public void setAppId(int paramInt)
  {
    this.appId = paramInt;
  }
  
  public boolean shouldCheckRequestsTimeout()
  {
    return (isConnected()) && (!this.mRequestMap.isEmpty());
  }
  
  static class B
  {
    public boolean b = false;
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\Session.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */