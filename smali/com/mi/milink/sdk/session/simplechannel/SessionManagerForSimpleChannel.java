package com.mi.milink.sdk.session.simplechannel;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.text.TextUtils;
import com.google.protobuf.ByteString;
import com.mi.milink.sdk.account.IAccount;
import com.mi.milink.sdk.account.manager.MiChannelAccountManager;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.CustomHandlerThread;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.Device.Network;
import com.mi.milink.sdk.base.os.Device.Network.NetworkDetailInfo;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.base.os.info.WifiDash;
import com.mi.milink.sdk.config.MiLinkIpInfoManager;
import com.mi.milink.sdk.config.MiLinkIpInfoManagerForSimpleChannel;
import com.mi.milink.sdk.connection.DomainManager;
import com.mi.milink.sdk.data.Const.ServerPort;
import com.mi.milink.sdk.debug.InternalDataMonitor;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.debug.TrafficMonitor;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.ClientActionEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.ServerNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionConnectEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionLoginEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionManagerNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionManagerNotificationEvent.EventType;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionManagerStateChangeEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionManagerStateChangeEvent.EventType;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SessionOtherEvent;
import com.mi.milink.sdk.event.MiLinkEventForSimpleChannel.SystemNotificationEvent;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdChannelNewPubKeyRsp;
import com.mi.milink.sdk.proto.SystemPacketProto.PublicKeyInfo;
import com.mi.milink.sdk.session.common.IServerManager;
import com.mi.milink.sdk.session.common.OpenSessionSucessReturnInfo;
import com.mi.milink.sdk.session.common.RecentlyServerData;
import com.mi.milink.sdk.session.common.Request;
import com.mi.milink.sdk.session.common.ResponseListener;
import com.mi.milink.sdk.session.common.ServerProfile;
import com.mi.milink.sdk.session.common.SessionConst;
import com.mi.milink.sdk.session.persistent.Session;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardPolicy;
import java.util.concurrent.TimeUnit;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

public class SessionManagerForSimpleChannel
  extends CustomHandlerThread
{
  private static final int AUTO_INTERNAL_OPEN_DELAY = 3000;
  private static final int CHECK_SESSION_INTERVAL = 3000;
  private static final int CHECK_WAKE_LOCK_TIMEOUT = 5;
  private static final int ERRNO_CONNECT_TIME_OUT = 110;
  private static final int ERRNO_NET_UNREACHABLE = 101;
  private static final int ERRNO_NO_ROUTE = 113;
  private static final int ERRNO_PERMISSION_DENIED = 13;
  private static final int ERRNO_REFUSED = 111;
  private static final int FLAG_ABANDON_SESSION = 3;
  private static final int FLAG_MASTER_SESSION = 4;
  private static final int FLAG_TRTING_SESSION = 1;
  private static final int LOGINED_SESSION_STATE = 2;
  private static final int LOGIN_TRY_TIMES = 5;
  public static final int MILINK_OPEN_RET_CODE_ALL_TIME_OUT = 6;
  public static final int MILINK_OPEN_RET_CODE_FAIL = 1;
  public static final int MILINK_OPEN_RET_CODE_LOAD_SO_FAILED = 9;
  public static final int MILINK_OPEN_RET_CODE_MULTI_UNAVAILABLE = 7;
  public static final int MILINK_OPEN_RET_CODE_NETWORK_CHANGE = 4;
  public static final int MILINK_OPEN_RET_CODE_NET_UNREACHABLE = 5;
  public static final int MILINK_OPEN_RET_CODE_NO_ROUTE = 2;
  public static final int MILINK_OPEN_RET_CODE_OK = 0;
  public static final int MILINK_OPEN_RET_CODE_PERMISSION_DENIED = 8;
  public static final int MILINK_OPEN_RET_CODE_REFUSED = 3;
  private static final int MSG_CHECK_SESSION_TIMER = 20;
  private static final int MSG_TYPE_APP_NOT_INIT = 26;
  private static final int MSG_TYPE_CLIENT_ACTION_EVENT = 5;
  private static final int MSG_TYPE_LOGIN_RETRY = 24;
  private static final int MSG_TYPE_RELEASE_WAKE_LOCK = 22;
  private static final int MSG_TYPE_SEND_MSG = 25;
  private static final int MSG_TYPE_SERVER_NOTIFICATON_EVENT = 4;
  private static final int MSG_TYPE_SESSION_EVENT = 1;
  private static final int MSG_TYPE_SESSION_LOGIN_EVENT = 2;
  private static final int MSG_TYPE_SESSION_OTHER_EVENT = 3;
  private static final int MSG_TYPE_SYSTEM_NOTIFICATION_EVENT = 6;
  private static final int NOLOGIN_SESSION_STATE = 0;
  private static final int NO_SESSION_STATE = 0;
  private static final int OPEN_SESSION_TRY_TIMES = 5;
  private static final int SESSION_RECONNECT_TIMES = 2;
  private static final int SINGLE_SESSION_STATE = 2;
  private static String TAG_PRE = "SessionManagerForSimpleChannel_";
  private static final int TRING_SESSION_STATE = 1;
  private String TAG = "SessionManagerForSimpleChannel_";
  private MiChannelAccountManager accountManager;
  private int appId;
  private EventBus channelEventbus;
  private MiLinkIpInfoManagerForSimpleChannel ipInfoManage;
  private boolean isFirstFail = false;
  private boolean mAppInited = false;
  private boolean mCheckTimeOutTimerOpen = false;
  private Runnable mClearConnRunnable = new SessionManagerForSimpleChannel.6(this);
  private boolean mEnableConnectionManualMode = false;
  private Runnable mInternalAutoOpenRunnable = new SessionManagerForSimpleChannel.1(this);
  long mLastUserSendDataTime = System.currentTimeMillis();
  private Object mLock = null;
  private int mLoginState = 0;
  private int mLoginTryTimes = 0;
  private Runnable mLogoffRunnable = new SessionManagerForSimpleChannel.7(this);
  private SessionForSimpleChannel mMasterSession;
  private Device.Network.NetworkDetailInfo mNetworkDetailInfoOnOpen;
  private NetworkChangeReceiver mNetworkReveiver = null;
  private int mOpenSessionTryTimes = 0;
  private long mOpenStartTime = 0L;
  private Object mReportLock = new Object();
  private final ConcurrentLinkedQueue<Request> mSendQueue = new ConcurrentLinkedQueue();
  private IServerManager mServerManager = null;
  private IServerManager mServerManagerBackup = null;
  private IServerManager mServerManagerNormal = null;
  private final HashMap<String, Integer> mSessionAddress2ErrorCodeMap = new HashMap();
  private final List<SessionForSimpleChannel> mSessionList = Collections.synchronizedList(new ArrayList());
  private int mSessionReconnectTryTimes = 0;
  private int mState = 0;
  private Runnable mTryStopTimerRunnable = new SessionManagerForSimpleChannel.2(this);
  private PowerManager.WakeLock mWakeLock = null;
  private ThreadPoolExecutor threadPool = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, new ArrayBlockingQueue(3), new ThreadPoolExecutor.DiscardPolicy());
  
  public SessionManagerForSimpleChannel(EventBus paramEventBus, MiChannelAccountManager paramMiChannelAccountManager, int paramInt)
  {
    super(TAG_PRE);
    this.TAG += paramInt;
    this.appId = paramInt;
    MiLinkLog.w(this.TAG, "SessionManagerForSimpleChannel created, milinkversion=" + Global.getMiLinkVersion() + "_" + Global.getMiLinkSubVersion());
    TrafficMonitor.getInstance().start();
    this.channelEventbus = paramEventBus;
    this.accountManager = paramMiChannelAccountManager;
    this.ipInfoManage = new MiLinkIpInfoManagerForSimpleChannel(paramInt);
    this.mServerManagerNormal = new MiLinkServerManagerForSimpleChannel(this.ipInfoManage);
    this.mServerManagerBackup = new MiLinkBackupServerManagerForSimpleChannel(this.ipInfoManage);
    this.mServerManager = this.mServerManagerNormal;
    setState(0);
    this.mLock = new Object();
    this.mNetworkReveiver = new NetworkChangeReceiver(null);
    this.mNetworkReveiver.setCurrentNetworkInfo();
    Global.registerReceiver(this.mNetworkReveiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    if (this.mAppInited)
    {
      paramEventBus = this.ipInfoManage.getDefaultHost();
      DomainManager.getInstance().startResolve(paramEventBus);
    }
    MiLinkLog.w(this.TAG, "SessionManager created finish");
  }
  
  private void abandonAllSession()
  {
    Iterator localIterator = this.mSessionList.iterator();
    while (localIterator.hasNext())
    {
      SessionForSimpleChannel localSessionForSimpleChannel = (SessionForSimpleChannel)localIterator.next();
      if (localSessionForSimpleChannel != null)
      {
        if (localSessionForSimpleChannel.mFlagForSessionManager == 1)
        {
          localSessionForSimpleChannel.mFlagForSessionManager = 3;
          if (localSessionForSimpleChannel.getServerProfile() != null) {
            MiLinkLog.w(this.TAG, "abandon all session, ip=" + localSessionForSimpleChannel.getServerProfile().getServerIP() + ", port=" + localSessionForSimpleChannel.getServerProfile().getServerPort() + ", protocol=" + localSessionForSimpleChannel.getServerProfile().getProtocol() + ",No=" + localSessionForSimpleChannel.getSessionNO());
          } else {
            MiLinkLog.w(this.TAG, "abandon all session, s.getServerProfile()=null, sessionNO=" + localSessionForSimpleChannel.getSessionNO());
          }
        }
      }
      else {
        MiLinkLog.w(this.TAG, "abandon all session, s =null ");
      }
    }
  }
  
  private void acquireWakeLock()
  {
    acquireWakeLock(5);
  }
  
  private void acquireWakeLock(int paramInt)
  {
    if (this.mHandler != null) {
      this.mHandler.removeMessages(22);
    }
    synchronized (this.mLock)
    {
      try
      {
        Context localContext = Global.getApplicationContext();
        if ((localContext != null) && (this.mWakeLock == null))
        {
          MiLinkLog.w(this.TAG, "Wakelock ACQUIRED :)");
          this.mWakeLock = ((PowerManager)localContext.getApplicationContext().getSystemService("power")).newWakeLock(1, "milink");
          this.mWakeLock.acquire();
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          MiLinkLog.e(this.TAG, "acquireWakeLock exception", localException);
        }
      }
      if (this.mHandler != null) {
        this.mHandler.sendEmptyMessageDelayed(22, paramInt);
      }
      return;
    }
  }
  
  private void addChannelPubKeyQueue(Request paramRequest)
  {
    if (!"milink.channel".equals(paramRequest.getData().getCommand())) {
      addPacketInSendQueue(paramRequest);
    }
  }
  
  private void addClearConnRunnalbe()
  {
    this.mHandler.removeCallbacks(this.mClearConnRunnable);
    this.mHandler.postDelayed(this.mClearConnRunnable, this.accountManager.getKeepAliveTime());
    MiLinkLog.d(this.TAG, "add clearrunnable .");
  }
  
  private void getNextServerProfile(SessionForSimpleChannel paramSessionForSimpleChannel, int paramInt)
  {
    int i = 0;
    MiLinkLog.i(this.TAG, "getNextServerProfile " + String.format("[Session No:%d] ", new Object[] { Integer.valueOf(paramSessionForSimpleChannel.getSessionNO()) }));
    Object localObject = this.mServerManager.getNext(paramSessionForSimpleChannel.getServerProfile(), paramInt);
    paramInt = i;
    if (localObject == null)
    {
      MiLinkLog.i(this.TAG, "newServerProfile == null");
      paramSessionForSimpleChannel.mFlagForSessionManager = 3;
      if (paramSessionForSimpleChannel.close()) {
        this.mSessionList.remove(paramSessionForSimpleChannel);
      }
      if (!isHaveTryingSession())
      {
        MiLinkLog.i(this.TAG, "already no trying session");
        if (this.mMasterSession == null)
        {
          if (!this.isFirstFail)
          {
            this.isFirstFail = true;
            MiLinkLog.w(this.TAG, "session connect failed for first time. try to do dns resolve.");
            paramSessionForSimpleChannel = Collections.synchronizedList(new ArrayList());
            localObject = Const.ServerPort.PORT_ARRAY;
            i = localObject.length;
            paramInt = 0;
            while (paramInt < i)
            {
              int j = localObject[paramInt];
              paramSessionForSimpleChannel.add(new ServerProfile(this.ipInfoManage.getDefaultServer().getServerIP(), j, 1, 4));
              paramInt += 1;
            }
            setState(1);
            paramInt = 0;
            while (paramInt < paramSessionForSimpleChannel.size())
            {
              if (paramSessionForSimpleChannel.get(paramInt) != null)
              {
                localObject = new SessionForSimpleChannel(this, this.accountManager, this.appId);
                ((SessionForSimpleChannel)localObject).mFlagForSessionManager = 1;
                this.mSessionList.add(localObject);
                ((SessionForSimpleChannel)localObject).openSession((ServerProfile)paramSessionForSimpleChannel.get(paramInt));
                MiLinkLog.d(this.TAG, "internalOpen thrid +" + paramInt);
              }
              paramInt += 1;
            }
          }
          setState(0);
          onOpenSessionResult(516, this.mOpenStartTime);
        }
      }
      else
      {
        return;
      }
      MiLinkLog.e(this.TAG, "this session is trying session but masterSession is not null");
      return;
    }
    label351:
    if (paramInt < localObject.length) {
      if (localObject[paramInt] != null)
      {
        if (paramInt != 0) {
          break label390;
        }
        paramSessionForSimpleChannel.mFlagForSessionManager = 1;
        paramSessionForSimpleChannel.openSession(localObject[paramInt]);
      }
    }
    for (;;)
    {
      paramInt += 1;
      break label351;
      break;
      label390:
      SessionForSimpleChannel localSessionForSimpleChannel = new SessionForSimpleChannel(this, this.accountManager, this.appId);
      localSessionForSimpleChannel.mFlagForSessionManager = 1;
      this.mSessionList.add(localSessionForSimpleChannel);
      localSessionForSimpleChannel.openSession(localObject[paramInt]);
    }
  }
  
  private SessionForSimpleChannel getSession()
  {
    switch (this.mState)
    {
    case 0: 
    case 1: 
    default: 
      return null;
    }
    return this.mMasterSession;
  }
  
  private void internalClose()
  {
    MiLinkLog.w(this.TAG, "internalClose");
    setState(0);
    stopTimer();
  }
  
  private void internalManualOpen()
  {
    MiLinkLog.v(this.TAG, "internalManualOpen,mState=" + this.mState);
    resetAllTryTimes();
    internalOpen();
  }
  
  private void internalOpen()
  {
    int i = 0;
    if (!NetworkDash.isAvailable()) {
      MiLinkLog.i(this.TAG, "can not open session, network is not available.");
    }
    for (;;)
    {
      return;
      if (this.mHandler == null)
      {
        MiLinkLog.i(this.TAG, "can not open session, mHandler == null.");
        return;
      }
      MiLinkLog.i(this.TAG, "open session, internalOpen with mState = " + this.mState);
      if (this.mState != 0)
      {
        MiLinkLog.i(this.TAG, "mState is not No_Sesssion state,cancel paoma");
        return;
      }
      MiLinkLog.d(this.TAG, "internalOpen first");
      this.mSessionAddress2ErrorCodeMap.clear();
      this.mOpenStartTime = System.currentTimeMillis();
      this.mNetworkDetailInfoOnOpen = Device.Network.getCurrentNetworkDetailInfo();
      MiLinkLog.d(this.TAG, "internalOpen first -0");
      ServerProfile[] arrayOfServerProfile = this.mServerManager.reset(false);
      this.mServerManager = this.mServerManagerNormal;
      MiLinkLog.d(this.TAG, "internalOpen first -1");
      if ((arrayOfServerProfile == null) || (arrayOfServerProfile.length == 0))
      {
        MiLinkLog.e(this.TAG, "serverProfileList is null ,internalOpne cancel");
        return;
      }
      MiLinkLog.d(this.TAG, "internalOpen second");
      setState(1);
      while (i < arrayOfServerProfile.length)
      {
        if (arrayOfServerProfile[i] != null)
        {
          SessionForSimpleChannel localSessionForSimpleChannel = new SessionForSimpleChannel(this, this.accountManager, this.appId);
          localSessionForSimpleChannel.mFlagForSessionManager = 1;
          this.mSessionList.add(localSessionForSimpleChannel);
          localSessionForSimpleChannel.openSession(arrayOfServerProfile[i]);
          MiLinkLog.d(this.TAG, "internalOpen thrid +" + i);
        }
        i += 1;
      }
    }
  }
  
  private boolean isAbandonSession(SessionForSimpleChannel paramSessionForSimpleChannel)
  {
    if (paramSessionForSimpleChannel == this.mMasterSession) {}
    while ((paramSessionForSimpleChannel != null) && (paramSessionForSimpleChannel.mFlagForSessionManager != 3)) {
      return false;
    }
    MiLinkLog.w(this.TAG, String.format("Session No:%d is AbandonSession return ", new Object[] { Integer.valueOf(paramSessionForSimpleChannel.getSessionNO()) }));
    if (paramSessionForSimpleChannel.close()) {
      this.mSessionList.remove(paramSessionForSimpleChannel);
    }
    return true;
  }
  
  private boolean isAllSessionErrorCode(int paramInt)
  {
    if (this.mSessionAddress2ErrorCodeMap.isEmpty()) {
      return false;
    }
    Iterator localIterator = this.mSessionAddress2ErrorCodeMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (String)localIterator.next();
      localObject = (Integer)this.mSessionAddress2ErrorCodeMap.get(localObject);
      if ((localObject == null) || (((Integer)localObject).intValue() != paramInt)) {
        return false;
      }
    }
    return true;
  }
  
  private boolean isHaveTryingSession()
  {
    Iterator localIterator = this.mSessionList.iterator();
    while (localIterator.hasNext()) {
      if (((SessionForSimpleChannel)localIterator.next()).mFlagForSessionManager == 1) {
        return true;
      }
    }
    return false;
  }
  
  private boolean isMultiUnavailable()
  {
    if (this.mSessionAddress2ErrorCodeMap.isEmpty()) {
      return false;
    }
    Iterator localIterator = this.mSessionAddress2ErrorCodeMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (String)localIterator.next();
      localObject = (Integer)this.mSessionAddress2ErrorCodeMap.get(localObject);
      if ((localObject == null) || ((((Integer)localObject).intValue() != 111) && (((Integer)localObject).intValue() != 101) && (((Integer)localObject).intValue() != 113) && (((Integer)localObject).intValue() != 110))) {
        return false;
      }
    }
    return true;
  }
  
  private void processEvent(MiLinkEventForSimpleChannel.ClientActionEvent paramClientActionEvent)
  {
    switch (SessionManagerForSimpleChannel.8.$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$ClientActionEvent$EventType[paramClientActionEvent.mEventType.ordinal()])
    {
    default: 
    case 1: 
      do
      {
        return;
        MiLinkLog.w(this.TAG, "ClientActionEvent ClientRequestCheckConnection");
        tryConnectIfNeed();
        if (this.mState == 2) {
          this.channelEventbus.post(new MiLinkEventForSimpleChannel.SessionManagerStateChangeEvent(MiLinkEventForSimpleChannel.SessionManagerStateChangeEvent.EventType.SessionStateChange, Integer.MIN_VALUE, 2));
        }
      } while (this.mLoginState != 2);
      this.channelEventbus.post(new MiLinkEventForSimpleChannel.SessionManagerStateChangeEvent(MiLinkEventForSimpleChannel.SessionManagerStateChangeEvent.EventType.LoginStateChange, Integer.MIN_VALUE, 2));
      return;
    case 2: 
      MiLinkLog.w(this.TAG, "ClientActionEvent ClientRequestLogin");
      login("UserAction");
      return;
    case 3: 
      MiLinkLog.w(this.TAG, "ClientActionEvent ClientRequestLogoff");
      logoff();
      return;
    }
    MiLinkLog.w(this.TAG, "ClientActionEvent ClientForceOpen");
    setState(0);
    resetAllTryTimes();
    acquireWakeLock();
    login("ClientForceOpen");
  }
  
  @SuppressLint({"UseSparseArrays"})
  private void processEvent(MiLinkEventForSimpleChannel.ServerNotificationEvent paramServerNotificationEvent)
  {
    switch (SessionManagerForSimpleChannel.8.$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType[paramServerNotificationEvent.mEventType.ordinal()])
    {
    default: 
      return;
    case 1: 
      MiLinkLog.w(this.TAG, "ServerNotificationEvent B2tokenExpired");
      this.accountManager.logoffMiLink();
      login("B2_TOKEN_EXPIRED");
      return;
    case 2: 
      MiLinkLog.e(this.TAG, "ServerNotificationEvent ChannelPubKeyUpdate");
      paramServerNotificationEvent = (UpdateChannelPubKeyValue)paramServerNotificationEvent.mObject;
      Object localObject1 = paramServerNotificationEvent.getChannelNewPubkey();
      addChannelPubKeyQueue(paramServerNotificationEvent.getmRequeset());
      paramServerNotificationEvent = new HashMap();
      if (localObject1 != null)
      {
        localObject1 = ((SystemPacketProto.MnsCmdChannelNewPubKeyRsp)localObject1).getPubInfoList().iterator();
        while (((Iterator)localObject1).hasNext())
        {
          Object localObject2 = (SystemPacketProto.PublicKeyInfo)((Iterator)localObject1).next();
          int i = ((SystemPacketProto.PublicKeyInfo)localObject2).getKeyId();
          localObject2 = ((SystemPacketProto.PublicKeyInfo)localObject2).getPublicKey().toByteArray();
          try
          {
            paramServerNotificationEvent.put(Integer.valueOf(i), new String((byte[])localObject2, "UTF-8"));
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
        }
        this.accountManager.getCurrentAccount().setChannelPubKey(paramServerNotificationEvent);
        MiLinkLog.e(this.TAG, " onUpdateChannelPubKey update  " + paramServerNotificationEvent.size() + " pubkey ");
      }
      paramServerNotificationEvent = getSession();
      if ((paramServerNotificationEvent == null) || (!paramServerNotificationEvent.isAvailable()))
      {
        MiLinkLog.v(this.TAG, "login session is not available.");
        return;
      }
      paramServerNotificationEvent.fastLogin();
      return;
    case 3: 
      addChannelPubKeyQueue((Request)paramServerNotificationEvent.mObject);
      this.accountManager.getCurrentAccount().DelChannelPubKey();
      paramServerNotificationEvent = getSession();
      if ((paramServerNotificationEvent == null) || (!paramServerNotificationEvent.isAvailable()))
      {
        MiLinkLog.v(this.TAG, "login session is not available.");
        return;
      }
      paramServerNotificationEvent.fastLogin();
      return;
    }
    MiLinkLog.e(this.TAG, "ServerNotificationEvent ServerLineBroken");
    setState(0);
    if (NetworkDash.isAvailable())
    {
      this.mServerManager = this.mServerManagerBackup;
      internalOpen();
      return;
    }
    MiLinkLog.e(this.TAG, "on server line broken network isAvailable = false");
  }
  
  private void processEvent(MiLinkEventForSimpleChannel.SessionConnectEvent arg1)
  {
    SessionForSimpleChannel localSessionForSimpleChannel1 = ???.mSession;
    int i = ???.mRetCode;
    switch (SessionManagerForSimpleChannel.8.$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionConnectEvent$EventType[???.mEventType.ordinal()])
    {
    }
    do
    {
      do
      {
        do
        {
          for (;;)
          {
            return;
            MiLinkLog.w(this.TAG, "SessionConnectEvent SessionBuildFailed");
            if (localSessionForSimpleChannel1.getServerProfile().getServerIP() == this.ipInfoManage.getRecentlyServerData().getRecentlyServer().getServerIP()) {
              this.ipInfoManage.setRecentlyServer(new ServerProfile("0.0.0.0", 0, 0, 0));
            }
            synchronized (this.mReportLock)
            {
              this.mReportLock.notifyAll();
              ??? = String.format("%s:%s", new Object[] { localSessionForSimpleChannel1.getServerProfileForStatistic().getServerIP(), Integer.valueOf(localSessionForSimpleChannel1.getServerProfileForStatistic().getServerPort()) });
              this.mSessionAddress2ErrorCodeMap.put(???, Integer.valueOf(i));
              if (!isAbandonSession(localSessionForSimpleChannel1))
              {
                MiLinkLog.w(this.TAG, "MSG_TYPE_OPEN_SESSION_FAIL errCode:" + i);
                if (localSessionForSimpleChannel1.mFlagForSessionManager == 4)
                {
                  MiLinkLog.w(this.TAG, String.format("handleMessage MSG_TYPE_OPEN_SESSION_FAIL is mMasterSession No:%d, mState = %d", new Object[] { Integer.valueOf(localSessionForSimpleChannel1.getSessionNO()), Integer.valueOf(this.mState) }));
                  setState(0);
                  if (!NetworkDash.isAvailable()) {
                    continue;
                  }
                  this.mInternalAutoOpenRunnable.run();
                }
              }
            }
          }
          if (localSessionForSimpleChannel2.mFlagForSessionManager == 1)
          {
            MiLinkLog.w(this.TAG, String.format("handleMessage MSG_TYPE_OPEN_SESSION_FAIL is isTryingSession No:%d, mState = %d", new Object[] { Integer.valueOf(localSessionForSimpleChannel2.getSessionNO()), Integer.valueOf(this.mState) }));
            getNextServerProfile(localSessionForSimpleChannel2, i);
            return;
          }
          MiLinkLog.e(this.TAG, "handleMessage MSG_TYPE_OPEN_SESSION_FAIL is unknown session No:" + localSessionForSimpleChannel2.getSessionNO());
          localSessionForSimpleChannel2.close();
          return;
          MiLinkLog.w(this.TAG, "SessionConnectEvent SessionBuildSuccess");
        } while (isAbandonSession(localSessionForSimpleChannel2));
        MiLinkLog.v(this.TAG, "handleMessage OPEN_SESSION_SUCCESS No:" + localSessionForSimpleChannel2.getSessionNO());
        if ((localSessionForSimpleChannel2.mFlagForSessionManager == 1) || (localSessionForSimpleChannel2.mFlagForSessionManager == 4))
        {
          MiLinkLog.v(this.TAG, "update session");
          updateSession(localSessionForSimpleChannel2);
          synchronized (this.mReportLock)
          {
            this.mReportLock.notifyAll();
            return;
          }
        }
        localSessionForSimpleChannel3.close();
        MiLinkLog.e(this.TAG, "handleMessage OPEN_SESSION_SUCCESS is unknown session No:" + localSessionForSimpleChannel3.getSessionNO());
        return;
        MiLinkLog.w(this.TAG, "SessionConnectEvent SessionRunError");
      } while (isAbandonSession(localSessionForSimpleChannel3));
      MiLinkLog.e(this.TAG, String.format("handleMessage SESSION_ERROR reason = %d, No:%d", new Object[] { Integer.valueOf(i), Integer.valueOf(localSessionForSimpleChannel3.getSessionNO()) }));
      setState(0);
    } while (i == 562);
    if (NetworkDash.isAvailable())
    {
      MiLinkLog.e(this.TAG, " SESSION_ERROR mSessionReconnectTimes=" + this.mSessionReconnectTryTimes + ", mOpenSessionTryTimes=" + this.mOpenSessionTryTimes);
      if (this.mSessionReconnectTryTimes < 2)
      {
        ??? = new SessionForSimpleChannel(this, this.accountManager, this.appId);
        ???.mFlagForSessionManager = 1;
        this.mSessionList.add(???);
        setState(1);
        ???.openSession(localSessionForSimpleChannel3.getServerProfileForStatistic());
        this.mSessionReconnectTryTimes += 1;
        return;
      }
      this.mInternalAutoOpenRunnable.run();
      return;
    }
    MiLinkLog.e(this.TAG, "on seesion error network isAvailable = false");
  }
  
  private void processEvent(MiLinkEventForSimpleChannel.SessionOtherEvent paramSessionOtherEvent)
  {
    SessionForSimpleChannel localSessionForSimpleChannel = paramSessionOtherEvent.mSession;
    if (isAbandonSession(localSessionForSimpleChannel)) {}
    do
    {
      do
      {
        return;
        switch (SessionManagerForSimpleChannel.8.$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionOtherEvent$EventType[paramSessionOtherEvent.mEventType.ordinal()])
        {
        default: 
          return;
        case 1: 
          MiLinkLog.w(this.TAG, "SessionOtherEvent RecvInvalidPacket");
          this.channelEventbus.post(new MiLinkEventForSimpleChannel.SessionManagerNotificationEvent(MiLinkEventForSimpleChannel.SessionManagerNotificationEvent.EventType.RecvInvalidPacket));
          return;
        case 2: 
          MiLinkLog.w(this.TAG, "SessionOtherEvent RequestMapIsEmpty");
        }
      } while (!this.mCheckTimeOutTimerOpen);
      this.mTryStopTimerRunnable.run();
      return;
      MiLinkLog.w(this.TAG, "SessionOtherEvent RequestMapIsNotEmpty");
    } while (this.mCheckTimeOutTimerOpen);
    MiLinkLog.v(this.TAG, "mCheckTimeOutTimerOpen=false,startTimer");
    startTimer();
    return;
    MiLinkLog.w(this.TAG, "SessionOtherEvent StatisticsTimeoutPacket");
    localSessionForSimpleChannel.postStatisticsTimeoutPacketAction();
    return;
    MiLinkLog.w(this.TAG, "SessionOtherEvent PackageNeedRetry");
    paramSessionOtherEvent = (Request)paramSessionOtherEvent.obj;
    paramSessionOtherEvent = this.mHandler.obtainMessage(25, paramSessionOtherEvent);
    this.mHandler.sendMessageDelayed(paramSessionOtherEvent, 2000L);
  }
  
  private void processEvent(MiLinkEventForSimpleChannel.SystemNotificationEvent paramSystemNotificationEvent)
  {
    switch (SessionManagerForSimpleChannel.8.$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType[paramSystemNotificationEvent.mEventType.ordinal()])
    {
    default: 
      return;
    case 1: 
      MiLinkLog.v(this.TAG, "SystemNotificationEvent screen_on");
      tryConnectIfNeed();
      return;
    }
    MiLinkLog.v(this.TAG, "SystemNotificationEvent NetWorkChange");
    acquireWakeLock();
    tryConnectIfNeed();
  }
  
  private void releaseWakeLock()
  {
    synchronized (this.mLock)
    {
      try
      {
        if (this.mWakeLock != null)
        {
          MiLinkLog.w(this.TAG, "Wakelock RELEASED :)");
          this.mWakeLock.release();
          this.mWakeLock = null;
        }
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          MiLinkLog.e(this.TAG, "releaseWakeLock exception", localException);
          this.mWakeLock = null;
        }
      }
    }
  }
  
  private void resetAllTryTimes()
  {
    this.mOpenSessionTryTimes = 0;
    this.mSessionReconnectTryTimes = 0;
    this.mLoginTryTimes = 0;
  }
  
  private boolean sendCacheRequest()
  {
    SessionForSimpleChannel localSessionForSimpleChannel = getSession();
    if (localSessionForSimpleChannel == null)
    {
      MiLinkLog.e(this.TAG, "sendCacheRequest session == null impossible!!!");
      return false;
    }
    MiLinkLog.i(this.TAG, "sendCacheRequest size = " + this.mSendQueue.size());
    Iterator localIterator = this.mSendQueue.iterator();
    while (localIterator.hasNext())
    {
      Request localRequest = (Request)localIterator.next();
      if (localRequest == null)
      {
        localIterator.remove();
      }
      else
      {
        localSessionForSimpleChannel.handleRequest(localRequest);
        localIterator.remove();
      }
    }
    return true;
  }
  
  private void startTimer()
  {
    this.mCheckTimeOutTimerOpen = true;
    this.mHandler.removeMessages(20);
    this.mHandler.sendEmptyMessageDelayed(20, 3000L);
  }
  
  private void stopTimer()
  {
    this.mCheckTimeOutTimerOpen = false;
    this.mHandler.removeMessages(20);
  }
  
  private boolean updateSession(SessionForSimpleChannel paramSessionForSimpleChannel)
  {
    if (paramSessionForSimpleChannel == null) {
      return false;
    }
    MiLinkLog.v(this.TAG, "update session function.");
    paramSessionForSimpleChannel.mFlagForSessionManager = 4;
    this.mSessionList.remove(paramSessionForSimpleChannel);
    if (paramSessionForSimpleChannel.getServerProfile().getProtocol() == 1) {
      abandonAllSession();
    }
    if (this.mServerManager != null) {
      this.mServerManager.save(paramSessionForSimpleChannel.getServerProfile());
    }
    MiLinkLog.v(this.TAG, "updateSession in no session or tring session");
    if ((this.mMasterSession != null) && (this.mMasterSession != paramSessionForSimpleChannel)) {
      this.mMasterSession.close();
    }
    this.mMasterSession = paramSessionForSimpleChannel;
    setState(2);
    MiLinkLog.v(this.TAG, "connected, start milink login");
    this.accountManager.setIsLogining(false);
    login("updateSession");
    onOpenSessionResult(0, this.mOpenStartTime);
    Object localObject = paramSessionForSimpleChannel.getOpenSessionSucessReturnInfo();
    if (localObject != null)
    {
      paramSessionForSimpleChannel = ((OpenSessionSucessReturnInfo)localObject).getClientIp();
      String str = ((OpenSessionSucessReturnInfo)localObject).getClientIsp();
      ArrayList localArrayList = ((OpenSessionSucessReturnInfo)localObject).getBackupServerList();
      localObject = ((OpenSessionSucessReturnInfo)localObject).getOptmumServerList();
      MiLinkLog.w(this.TAG, String.format("clientip:%s clientIsp;%s", new Object[] { paramSessionForSimpleChannel, str }));
      if (!TextUtils.isEmpty(paramSessionForSimpleChannel)) {
        Global.setClientIp(paramSessionForSimpleChannel);
      }
      if (!TextUtils.isEmpty(str)) {
        Global.setClientIsp(str);
      }
      if (this.ipInfoManage != null)
      {
        if (localObject != null) {
          this.ipInfoManage.setOptmumServerList(Global.getClientIsp(), (List)localObject);
        }
        if (localArrayList != null) {
          this.ipInfoManage.setBackupServerList(localArrayList);
        }
      }
    }
    return true;
  }
  
  public void addPacketInSendQueue(Request paramRequest)
  {
    this.mSendQueue.add(paramRequest);
    MiLinkLog.d(this.TAG, "add packet in send queue");
  }
  
  public boolean close()
  {
    return this.mHandler.post(new SessionManagerForSimpleChannel.3(this));
  }
  
  public EventBus getChannelEventBus()
  {
    return this.channelEventbus;
  }
  
  public int getSessionState()
  {
    return this.mState;
  }
  
  public void initApp()
  {
    this.mAppInited = true;
    resetAllTryTimes();
  }
  
  public boolean isMilinkLogined()
  {
    return this.mLoginState == 2;
  }
  
  public boolean isTimerOpen()
  {
    return this.mCheckTimeOutTimerOpen;
  }
  
  public void login(String paramString)
  {
    MiLinkLog.v(this.TAG, "login from=" + paramString);
    MiLinkLog.v(this.TAG, "login from=" + this.mState);
    if (this.accountManager.isLogining()) {
      MiLinkLog.v(this.TAG, "milink is logining");
    }
    do
    {
      return;
      if (!this.mAppInited)
      {
        MiLinkLog.v(this.TAG, "app not init");
        paramString = this.mHandler.obtainMessage(26);
        this.mHandler.sendMessageAtFrontOfQueue(paramString);
        return;
      }
      if (this.mState == 0)
      {
        internalManualOpen();
        return;
      }
    } while (this.mState == 1);
    MiLinkLog.v(this.TAG, "milink login, session manager state: " + this.mState);
    paramString = getSession();
    if ((paramString == null) || (!paramString.isAvailable()))
    {
      MiLinkLog.v(this.TAG, "login session is not available.");
      return;
    }
    if (this.mLoginTryTimes < 5)
    {
      this.mLoginTryTimes += 1;
      MiLinkLog.v(this.TAG, "milink login start, mLoginTryTimes=" + this.mLoginTryTimes);
      paramString.fastLogin();
      return;
    }
    MiLinkLog.v(this.TAG, "milink login has exceeded max times");
  }
  
  public void logoff()
  {
    MiLinkLog.v(this.TAG, "milink logoff");
    InternalDataMonitor.getInstance(this.appId).doPostDataAtOnce();
    this.mLogoffRunnable.run();
  }
  
  @Subscribe
  public void onEvent(MiLinkEventForSimpleChannel.ClientActionEvent paramClientActionEvent)
  {
    paramClientActionEvent = this.mHandler.obtainMessage(5, paramClientActionEvent);
    this.mHandler.sendMessage(paramClientActionEvent);
  }
  
  @Subscribe
  public void onEvent(MiLinkEventForSimpleChannel.ServerNotificationEvent paramServerNotificationEvent)
  {
    paramServerNotificationEvent = this.mHandler.obtainMessage(4, paramServerNotificationEvent);
    this.mHandler.sendMessage(paramServerNotificationEvent);
  }
  
  @Subscribe
  public void onEvent(MiLinkEventForSimpleChannel.SessionConnectEvent paramSessionConnectEvent)
  {
    paramSessionConnectEvent = this.mHandler.obtainMessage(1, paramSessionConnectEvent);
    this.mHandler.sendMessage(paramSessionConnectEvent);
  }
  
  @Subscribe
  public void onEvent(MiLinkEventForSimpleChannel.SessionLoginEvent paramSessionLoginEvent)
  {
    paramSessionLoginEvent = this.mHandler.obtainMessage(2, paramSessionLoginEvent);
    this.mHandler.sendMessage(paramSessionLoginEvent);
  }
  
  @Subscribe
  public void onEvent(MiLinkEventForSimpleChannel.SessionOtherEvent paramSessionOtherEvent)
  {
    paramSessionOtherEvent = this.mHandler.obtainMessage(3, paramSessionOtherEvent);
    this.mHandler.sendMessage(paramSessionOtherEvent);
  }
  
  @Subscribe
  public void onEvent(MiLinkEventForSimpleChannel.SystemNotificationEvent paramSystemNotificationEvent)
  {
    paramSystemNotificationEvent = this.mHandler.obtainMessage(6, paramSystemNotificationEvent);
    this.mHandler.sendMessage(paramSystemNotificationEvent);
  }
  
  public void onOpenSessionResult(int paramInt, long paramLong)
  {
    MiLinkLog.w(this.TAG, "onOpenSessionResult, errorCode = " + paramInt);
    if (paramInt != 0)
    {
      stopTimer();
      if (isMultiUnavailable())
      {
        MiLinkLog.w(this.TAG, "statistic milink.open, code=7");
        InternalDataMonitor.getInstance(this.appId).trace("", 0, "milink.open", 7, paramLong, System.currentTimeMillis(), 0, 0, 0);
      }
    }
    label326:
    label333:
    label344:
    while (this.mMasterSession == null) {
      for (;;)
      {
        return;
        int[] arrayOfInt = new int[6];
        tmp84_82 = arrayOfInt;
        tmp84_82[0] = 8;
        tmp89_84 = tmp84_82;
        tmp89_84[1] = 6;
        tmp94_89 = tmp89_84;
        tmp94_89[2] = 2;
        tmp98_94 = tmp94_89;
        tmp98_94[3] = 3;
        tmp102_98 = tmp98_94;
        tmp102_98[4] = 5;
        tmp106_102 = tmp102_98;
        tmp106_102[5] = 9;
        tmp106_102;
        int j = 0;
        paramInt = 0;
        int i = j;
        if (paramInt < 6)
        {
          i = j;
          if (paramInt < 6)
          {
            if (!isAllSessionErrorCode(new int[] { 13, 110, 113, 111, 101, 562 }[paramInt])) {
              break label326;
            }
            MiLinkLog.w(this.TAG, "statistic milink.open, code=" + arrayOfInt[paramInt]);
            InternalDataMonitor.getInstance(this.appId).trace("", 0, "milink.open", arrayOfInt[paramInt], paramLong, System.currentTimeMillis(), 0, 0, 0);
            i = 1;
          }
        }
        if (i == 0)
        {
          if (!NetworkDash.isAvailable()) {
            break label333;
          }
          this.threadPool.execute(new SessionManagerForSimpleChannel.4(this, paramLong));
        }
        for (;;)
        {
          if (!NetworkDash.isAvailable()) {
            break label344;
          }
          this.mHandler.removeCallbacks(this.mInternalAutoOpenRunnable);
          this.mHandler.postAtTime(this.mInternalAutoOpenRunnable, 3000L);
          MiLinkLog.v(this.TAG, "onOpenSessionResult reconnect times:" + this.mOpenSessionTryTimes);
          return;
          paramInt += 1;
          break;
          MiLinkLog.w(this.TAG, "check isInternetAvailable, but network is unavailable");
        }
      }
    }
    MiLinkLog.w(this.TAG, String.format("mMasterSession = [Session No:%d] ", new Object[] { Integer.valueOf(this.mMasterSession.getSessionNO()) }));
    InternalDataMonitor.getInstance(this.appId).trace(this.mMasterSession.getServerProfile().getServerIP(), this.mMasterSession.getServerProfile().getServerPort(), "milink.open", 0, paramLong, System.currentTimeMillis(), 0, 0, 0);
  }
  
  public void processEvent(MiLinkEventForSimpleChannel.SessionLoginEvent paramSessionLoginEvent)
  {
    if (isAbandonSession(paramSessionLoginEvent.mSession)) {
      return;
    }
    switch (SessionManagerForSimpleChannel.8.$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionLoginEvent$EventType[paramSessionLoginEvent.mEventType.ordinal()])
    {
    default: 
      return;
    case 1: 
      MiLinkLog.w(this.TAG, "SessionLoginEvent LoginFailed");
      this.accountManager.setIsLogining(false);
      this.mLoginState = 0;
      this.channelEventbus.post(new MiLinkEventForSimpleChannel.SessionManagerStateChangeEvent(MiLinkEventForSimpleChannel.SessionManagerStateChangeEvent.EventType.LoginStateChange, Integer.MIN_VALUE, 0));
      this.mHandler.removeMessages(24);
      this.mHandler.sendEmptyMessageDelayed(24, 10000L);
      return;
    case 2: 
      MiLinkLog.w(this.TAG, "SessionLoginEvent LoginSuccess");
      this.accountManager.setIsLogining(false);
      this.mLoginState = 2;
      sendCacheRequest();
      MiLinkLog.v(this.TAG, "onLoginResult loginState=2");
      this.channelEventbus.post(new MiLinkEventForSimpleChannel.SessionManagerStateChangeEvent(MiLinkEventForSimpleChannel.SessionManagerStateChangeEvent.EventType.LoginStateChange, Integer.MIN_VALUE, 2));
      addClearConnRunnalbe();
      return;
    }
    MiLinkLog.w(this.TAG, "SessionLoginEvent LogoffCmdReturn");
    this.mHandler.removeCallbacks(this.mLogoffRunnable);
    this.mLogoffRunnable.run();
  }
  
  protected void processMessage(Message paramMessage)
  {
    MiLinkLog.w(this.TAG, "processMessage +" + paramMessage.what);
    switch (paramMessage.what)
    {
    case 7: 
    case 8: 
    case 9: 
    case 10: 
    case 11: 
    case 12: 
    case 13: 
    case 14: 
    case 15: 
    case 16: 
    case 17: 
    case 18: 
    case 19: 
    case 21: 
    case 23: 
    default: 
      return;
    case 1: 
      processEvent((MiLinkEventForSimpleChannel.SessionConnectEvent)paramMessage.obj);
      return;
    case 2: 
      processEvent((MiLinkEventForSimpleChannel.SessionLoginEvent)paramMessage.obj);
      return;
    case 3: 
      processEvent((MiLinkEventForSimpleChannel.SessionOtherEvent)paramMessage.obj);
      return;
    case 4: 
      processEvent((MiLinkEventForSimpleChannel.ServerNotificationEvent)paramMessage.obj);
      return;
    case 5: 
      processEvent((MiLinkEventForSimpleChannel.ClientActionEvent)paramMessage.obj);
      return;
    case 6: 
      processEvent((MiLinkEventForSimpleChannel.SystemNotificationEvent)paramMessage.obj);
      return;
    case 20: 
      MiLinkLog.w(this.TAG, "MSG_CHECK_SESSION_TIMER");
      paramMessage = getSession();
      if (paramMessage != null) {
        paramMessage.checkRequestsTimeout();
      }
      paramMessage = this.mSessionList.iterator();
      while (paramMessage.hasNext())
      {
        localSessionForSimpleChannel = (SessionForSimpleChannel)paramMessage.next();
        if (localSessionForSimpleChannel.mFlagForSessionManager == 1) {
          localSessionForSimpleChannel.checkRequestsTimeout();
        }
      }
      this.mHandler.sendEmptyMessageDelayed(20, 3000L);
      return;
    case 22: 
      MiLinkLog.w(this.TAG, "release wake lock");
      releaseWakeLock();
      return;
    case 24: 
      login("LOGIN_RETRY");
      return;
    case 26: 
      MiLinkLog.v(this.TAG, "MSG_TYPE_APP_NOT_INIT,app not init, call app init by onEventGetServiceToken");
      this.channelEventbus.post(new MiLinkEventForSimpleChannel.SessionManagerNotificationEvent(MiLinkEventForSimpleChannel.SessionManagerNotificationEvent.EventType.GetServiceToken));
      return;
    }
    SessionForSimpleChannel localSessionForSimpleChannel = getSession();
    MiLinkLog.v(this.TAG, "send data, session manager state: " + this.mState);
    if ((localSessionForSimpleChannel != null) && (localSessionForSimpleChannel.isDeadConnection(6000L, 180000L)))
    {
      MiLinkLog.w(this.TAG, "session isDeadConnection=true");
      setState(0);
      localSessionForSimpleChannel = null;
    }
    for (;;)
    {
      paramMessage = (Request)paramMessage.obj;
      if ((localSessionForSimpleChannel == null) || (!localSessionForSimpleChannel.isAvailable()) || (this.mLoginState != 2))
      {
        MiLinkLog.v(this.TAG, "push request in cache, seq=" + paramMessage.getSeqNo());
        this.mSendQueue.add(paramMessage);
        login("handleRequest");
        return;
      }
      MiLinkLog.v(this.TAG, "send data to session, seq=" + paramMessage.getSeqNo());
      localSessionForSimpleChannel.handleRequest(paramMessage);
      return;
    }
  }
  
  public boolean sendData(PacketData paramPacketData, int paramInt, ResponseListener paramResponseListener)
  {
    if (TextUtils.isEmpty(paramPacketData.getCommand()))
    {
      MiLinkLog.v(this.TAG, "send data ,cmd can not be null");
      return false;
    }
    this.mLastUserSendDataTime = System.currentTimeMillis();
    paramPacketData.setSeqNo(Global.getSequence());
    MiLinkLog.v(this.TAG, "send data cmd=" + paramPacketData.getCommand() + ", seq=" + paramPacketData.getSeqNo());
    paramPacketData = new Request(paramPacketData, paramResponseListener, this.accountManager.getBusinessEncByMode(), this.accountManager.getCurrentAccount());
    paramPacketData.setTimeOut(paramInt);
    new SessionManagerForSimpleChannel.5(this, paramPacketData).start();
    addClearConnRunnalbe();
    return true;
  }
  
  public void setState(int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      MiLinkLog.i(this.TAG, "setState mState = " + this.mState + ",newState = " + paramInt);
      MiLinkLog.v(this.TAG, "mSessionList.size=" + this.mSessionList.size());
      int i = this.mState;
      this.mState = paramInt;
      if (this.mState != i) {
        this.channelEventbus.post(new MiLinkEventForSimpleChannel.SessionManagerStateChangeEvent(MiLinkEventForSimpleChannel.SessionManagerStateChangeEvent.EventType.SessionStateChange, i, this.mState));
      }
      return;
      Object localObject2;
      synchronized (this.mSessionList)
      {
        ArrayList localArrayList = new ArrayList();
        localObject2 = this.mSessionList.iterator();
        while (((Iterator)localObject2).hasNext())
        {
          SessionForSimpleChannel localSessionForSimpleChannel = (SessionForSimpleChannel)((Iterator)localObject2).next();
          if (localSessionForSimpleChannel != null)
          {
            localSessionForSimpleChannel.mFlagForSessionManager = 3;
            if (localSessionForSimpleChannel.close()) {
              localArrayList.add(localSessionForSimpleChannel);
            }
          }
        }
      }
      Iterator localIterator = ((List)localObject1).iterator();
      while (localIterator.hasNext())
      {
        localObject2 = (SessionForSimpleChannel)localIterator.next();
        this.mSessionList.remove(localObject2);
      }
      if (this.mMasterSession != null)
      {
        this.mMasterSession.mFlagForSessionManager = 3;
        this.mMasterSession.close();
        this.mMasterSession = null;
      }
      this.mLoginState = 0;
      this.accountManager.setIsLogining(false);
    }
  }
  
  public boolean tryConnectIfNeed()
  {
    if (this.mState == 0) {
      internalOpen();
    }
    while (this.mState == 1) {
      return false;
    }
    if (this.mLoginState == 0)
    {
      this.mLoginTryTimes = 0;
      login("tryConnectIfNeed");
      return false;
    }
    return true;
  }
  
  private class NetworkChangeReceiver
    extends BroadcastReceiver
  {
    private String apnName = "";
    private int currentType = -1;
    
    private NetworkChangeReceiver() {}
    
    private boolean isNetworkChanged(NetworkInfo paramNetworkInfo)
    {
      if (paramNetworkInfo == null) {
        if ((this.currentType != -1) || (!TextUtils.isEmpty(this.apnName))) {}
      }
      do
      {
        return false;
        return true;
        if (this.currentType != paramNetworkInfo.getType()) {
          break;
        }
        if (this.currentType != 0) {
          break label67;
        }
      } while ((this.apnName != null) && (this.apnName.equals(paramNetworkInfo.getSubtypeName())));
      label67:
      while ((this.apnName == null) || (!this.apnName.equals(WifiDash.getBSSID()))) {
        return true;
      }
      return false;
    }
    
    private void onNetworkConnectivityAction()
    {
      Object localObject = ((ConnectivityManager)Global.getSystemService("connectivity")).getActiveNetworkInfo();
      MiLinkLog.i(SessionManagerForSimpleChannel.this.TAG, "NetworkChangeReceiver, networkInfo=" + localObject);
      boolean bool = isNetworkChanged((NetworkInfo)localObject);
      MiLinkLog.i(SessionManagerForSimpleChannel.this.TAG, "isNetworkChange : " + bool);
      setCurrentNetworkInfo((NetworkInfo)localObject);
      if ((localObject != null) && (((NetworkInfo)localObject).isAvailable()))
      {
        if (bool)
        {
          MiLinkLog.i(SessionManagerForSimpleChannel.this.TAG, "NetworkChangeReceiver, network change need forceOpen");
          SessionConst.setNewApn(true);
          if (SessionManagerForSimpleChannel.this.mAppInited)
          {
            localObject = MiLinkIpInfoManager.getInstance().getDefaultHost();
            DomainManager.getInstance().startResolve((String)localObject);
          }
          Global.getMainHandler().postDelayed(new SessionManagerForSimpleChannel.NetworkChangeReceiver.2(this), 2000L);
        }
        do
        {
          return;
          MiLinkLog.i(SessionManagerForSimpleChannel.this.TAG, "NetworkChangeReceiver, network not change, mState=" + SessionManagerForSimpleChannel.this.mState);
          if (SessionManagerForSimpleChannel.this.mState == 0)
          {
            if (SessionManagerForSimpleChannel.this.mAppInited)
            {
              localObject = MiLinkIpInfoManager.getInstance().getDefaultHost();
              DomainManager.getInstance().startResolve((String)localObject);
            }
            Global.getMainHandler().postDelayed(new SessionManagerForSimpleChannel.NetworkChangeReceiver.3(this), 2000L);
            return;
          }
          localObject = SessionManagerForSimpleChannel.this.getSession();
        } while ((localObject == null) || (!((SessionForSimpleChannel)localObject).isAvailable()));
        ((SessionForSimpleChannel)localObject).ping();
        return;
      }
      if (SessionManagerForSimpleChannel.this.mState != 0) {
        SessionManagerForSimpleChannel.this.close();
      }
      MiLinkLog.i(SessionManagerForSimpleChannel.this.TAG, "network is disconnected()");
    }
    
    private void setCurrentNetworkInfo(NetworkInfo paramNetworkInfo)
    {
      if (paramNetworkInfo != null)
      {
        this.currentType = paramNetworkInfo.getType();
        if (this.currentType == 0)
        {
          this.apnName = paramNetworkInfo.getSubtypeName();
          return;
        }
        this.apnName = WifiDash.getBSSID();
        return;
      }
      this.currentType = -1;
      this.apnName = "";
    }
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if ("android.net.conn.CONNECTIVITY_CHANGE".equals(paramIntent.getAction())) {}
      try
      {
        new SessionManagerForSimpleChannel.NetworkChangeReceiver.1(this).start();
        return;
      }
      catch (Exception paramContext)
      {
        setCurrentNetworkInfo(null);
        MiLinkLog.e(SessionManagerForSimpleChannel.this.TAG, "Get networkInfo fail", paramContext);
      }
    }
    
    public void setCurrentNetworkInfo()
    {
      try
      {
        NetworkInfo localNetworkInfo = ((ConnectivityManager)Global.getSystemService("connectivity")).getActiveNetworkInfo();
        MiLinkLog.i(SessionManagerForSimpleChannel.this.TAG, "NetworkChangeReceiver, setCurrentNetworkInfo=" + localNetworkInfo);
        setCurrentNetworkInfo(localNetworkInfo);
        return;
      }
      catch (Exception localException)
      {
        setCurrentNetworkInfo(null);
        MiLinkLog.e(SessionManagerForSimpleChannel.this.TAG, "Get networkInfo fail", localException);
      }
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\simplechannel\SessionManagerForSimpleChannel.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */