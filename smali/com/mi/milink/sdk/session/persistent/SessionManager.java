package com.mi.milink.sdk.session.persistent;

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
import com.mi.milink.sdk.account.AnonymousAccount;
import com.mi.milink.sdk.account.manager.MiAccountManager;
import com.mi.milink.sdk.aidl.PacketData;
import com.mi.milink.sdk.base.CustomHandlerThread;
import com.mi.milink.sdk.base.Global;
import com.mi.milink.sdk.base.os.Device.Network;
import com.mi.milink.sdk.base.os.Device.Network.NetworkDetailInfo;
import com.mi.milink.sdk.base.os.info.NetworkDash;
import com.mi.milink.sdk.base.os.info.WifiDash;
import com.mi.milink.sdk.config.HeartBeatManager;
import com.mi.milink.sdk.config.MiLinkIpInfoManager;
import com.mi.milink.sdk.connection.DomainManager;
import com.mi.milink.sdk.data.ClientAppInfo;
import com.mi.milink.sdk.debug.InternalDataMonitor;
import com.mi.milink.sdk.debug.MiLinkLog;
import com.mi.milink.sdk.debug.TrafficMonitor;
import com.mi.milink.sdk.event.MiLinkEvent.ChannelStatusChangeEvent;
import com.mi.milink.sdk.event.MiLinkEvent.ClientActionEvent;
import com.mi.milink.sdk.event.MiLinkEvent.ClientActionEvent.EventType;
import com.mi.milink.sdk.event.MiLinkEvent.ServerNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SessionConnectEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SessionLoginEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SessionManagerNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SessionManagerNotificationEvent.EventType;
import com.mi.milink.sdk.event.MiLinkEvent.SessionManagerStateChangeEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SessionManagerStateChangeEvent.EventType;
import com.mi.milink.sdk.event.MiLinkEvent.SessionOtherEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SystemNotificationEvent;
import com.mi.milink.sdk.event.MiLinkEvent.SystemNotificationEvent.EventType;
import com.mi.milink.sdk.proto.DataExtraProto.DataLoglevel;
import com.mi.milink.sdk.proto.DataExtraProto.DataLoglevel.Builder;
import com.mi.milink.sdk.proto.PushPacketProto.MilinkLogReq;
import com.mi.milink.sdk.proto.PushPacketProto.PushLogLevel;
import com.mi.milink.sdk.proto.SystemPacketProto.MnsCmdChannelNewPubKeyRsp;
import com.mi.milink.sdk.proto.SystemPacketProto.PublicKeyInfo;
import com.mi.milink.sdk.session.common.IServerManager;
import com.mi.milink.sdk.session.common.OpenSessionSucessReturnInfo;
import com.mi.milink.sdk.session.common.RecentlyServerData;
import com.mi.milink.sdk.session.common.Request;
import com.mi.milink.sdk.session.common.ResponseListener;
import com.mi.milink.sdk.session.common.ServerProfile;
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

public class SessionManager
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
  private static final int MEDIUM_CONNECTION_CLOSE_INTERNAL = 600000;
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
  private static final int MSG_TYPE_GET_SERVICE_TOKEN = 23;
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
  private static final String TAG = "SessionManager";
  private static final int TRING_SESSION_STATE = 1;
  private static SessionManager sInstance;
  Runnable channelIdleReset = new SessionManager.1(this);
  private boolean mAllowAssitSessionWork = false;
  private boolean mAppInited = false;
  private Session mAssistSession;
  private int mAssistSessionState = 0;
  private boolean mCheckTimeOutTimerOpen = false;
  private long mConnectionBuildTimestamp = 0L;
  private boolean mEnableConnectionManualMode = false;
  boolean mGlobalPushFlag = false;
  private Runnable mInternalAutoOpenRunnable = new SessionManager.2(this);
  long mLastUploadTime = 0L;
  long mLastUserSendDataTime = System.currentTimeMillis();
  private Object mLock = null;
  private int mLoginState = 0;
  private int mLoginTryTimes = 0;
  private Runnable mLogoffRunnable = new SessionManager.6(this);
  private Session mMasterSession;
  private Device.Network.NetworkDetailInfo mNetworkDetailInfoOnOpen;
  private NetworkChangeReceiver mNetworkReveiver = null;
  private int mOpenSessionTryTimes = 0;
  private long mOpenStartTime = 0L;
  private Object mReportLock = new Object();
  private ScreenOnChangeReceiver mScreenOnReveiver = null;
  private final ConcurrentLinkedQueue<Request> mSendQueue = new ConcurrentLinkedQueue();
  private IServerManager mServerManager = null;
  private final HashMap<String, Integer> mSessionAddress2ErrorCodeMap = new HashMap();
  private final List<Session> mSessionList = Collections.synchronizedList(new ArrayList());
  private int mSessionReconnectTryTimes = 0;
  private int mState = 0;
  private Runnable mTryStopTimerRunnable = new SessionManager.3(this);
  private PowerManager.WakeLock mWakeLock = null;
  private ThreadPoolExecutor threadPool = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, new ArrayBlockingQueue(3), new ThreadPoolExecutor.DiscardPolicy());
  
  private SessionManager()
  {
    super("SessionManager");
    MiLinkLog.e("SessionManager", "SessionManager created, milinkversion=" + Global.getMiLinkVersion() + "_" + Global.getMiLinkSubVersion());
    EventBus.getDefault().register(this);
    TrafficMonitor.getInstance().start();
    this.mServerManager = MiLinkServerManager.getInstance();
    setState(0);
    this.mLock = new Object();
    this.mNetworkReveiver = new NetworkChangeReceiver(null);
    this.mScreenOnReveiver = new ScreenOnChangeReceiver(null);
    this.mNetworkReveiver.setCurrentNetworkInfo();
    Global.registerReceiver(this.mNetworkReveiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    Object localObject = new IntentFilter("android.intent.action.SCREEN_ON");
    ((IntentFilter)localObject).addAction("android.intent.action.SCREEN_OFF");
    Global.registerReceiver(this.mScreenOnReveiver, (IntentFilter)localObject);
    localObject = MiLinkIpInfoManager.getInstance().getDefaultHost();
    if (MiAccountManager.getInstance().appHasLogined()) {
      DomainManager.getInstance().startResolve((String)localObject);
    }
    MiLinkLog.w("SessionManager", "SessionManager created finish");
  }
  
  private void abandonAllSession()
  {
    Iterator localIterator = this.mSessionList.iterator();
    while (localIterator.hasNext())
    {
      Session localSession = (Session)localIterator.next();
      if (localSession.mFlagForSessionManager == 1)
      {
        localSession.mFlagForSessionManager = 3;
        if (localSession.getServerProfile() != null) {
          MiLinkLog.w("SessionManager", "abandon all session, ip=" + localSession.getServerProfile().getServerIP() + ", port=" + localSession.getServerProfile().getServerPort() + ", protocol=" + localSession.getServerProfile().getProtocol() + ",No=" + localSession.getSessionNO());
        } else {
          MiLinkLog.w("SessionManager", "abandon all session, s.getServerProfile()=null, sessionNO=" + localSession.getSessionNO());
        }
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
          MiLinkLog.w("SessionManager", "Wakelock ACQUIRED :)");
          this.mWakeLock = ((PowerManager)localContext.getApplicationContext().getSystemService("power")).newWakeLock(1, "milink");
          this.mWakeLock.acquire();
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          MiLinkLog.e("SessionManager", "acquireWakeLock exception", localException);
        }
      }
      if (this.mHandler != null) {
        this.mHandler.sendEmptyMessageDelayed(22, paramInt);
      }
      return;
    }
  }
  
  private void closeAllBandonSession()
  {
    Object localObject1 = new ArrayList();
    Object localObject2 = this.mSessionList.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      Session localSession = (Session)((Iterator)localObject2).next();
      if ((localSession.mFlagForSessionManager == 3) && (localSession.close())) {
        ((List)localObject1).add(localSession);
      }
    }
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Session)((Iterator)localObject1).next();
      this.mSessionList.remove(localObject2);
    }
  }
  
  private Session getAssistSession()
  {
    switch (this.mAssistSessionState)
    {
    case 0: 
    case 1: 
    default: 
      return null;
    }
    return this.mAssistSession;
  }
  
  public static SessionManager getInstance()
  {
    try
    {
      if (sInstance == null) {
        sInstance = new SessionManager();
      }
      SessionManager localSessionManager = sInstance;
      return localSessionManager;
    }
    finally {}
  }
  
  private void getNextServerProfile(Session paramSession, int paramInt)
  {
    int i = 0;
    MiLinkLog.i("SessionManager", "getNextServerProfile " + String.format("[Session No:%d] ", new Object[] { Integer.valueOf(paramSession.getSessionNO()) }));
    ServerProfile[] arrayOfServerProfile = this.mServerManager.getNext(paramSession.getServerProfile(), paramInt);
    paramInt = i;
    if (arrayOfServerProfile == null)
    {
      MiLinkLog.i("SessionManager", "newServerProfile == null");
      paramSession.mFlagForSessionManager = 3;
      if (paramSession.close()) {
        this.mSessionList.remove(paramSession);
      }
      if (!isHaveTryingSession())
      {
        MiLinkLog.i("SessionManager", "already no trying session");
        if (this.mMasterSession == null)
        {
          setState(0);
          onOpenSessionResult(516, this.mOpenStartTime);
        }
      }
      else
      {
        return;
      }
      MiLinkLog.e("SessionManager", "this session is trying session but masterSession is not null");
      return;
    }
    label143:
    if (paramInt < arrayOfServerProfile.length) {
      if (arrayOfServerProfile[paramInt] != null)
      {
        if (paramInt != 0) {
          break label182;
        }
        paramSession.mFlagForSessionManager = 1;
        paramSession.openSession(arrayOfServerProfile[paramInt]);
      }
    }
    for (;;)
    {
      paramInt += 1;
      break label143;
      break;
      label182:
      Session localSession = new Session();
      localSession.mFlagForSessionManager = 1;
      this.mSessionList.add(localSession);
      localSession.openSession(arrayOfServerProfile[paramInt]);
    }
  }
  
  private Session getSession()
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
  
  private void internalAssistSessionOpen()
  {
    if (!NetworkDash.isAvailable())
    {
      MiLinkLog.i("SessionManager", "can not open session, network is not available.");
      return;
    }
    if (!MiAccountManager.getInstance().appHasLogined())
    {
      MiLinkLog.i("SessionManager", "app not login internalOpen cancel");
      return;
    }
    if (this.mHandler == null)
    {
      MiLinkLog.i("SessionManager", "can not open session, mHandler == null.");
      return;
    }
    MiLinkLog.i("SessionManager", "open assistsession, internalAssistSessionOpen with mState = " + this.mState);
    if (this.mAssistSessionState != 0)
    {
      MiLinkLog.i("SessionManager", "mAssistSessionState is not No_Sesssion state,cancel link");
      return;
    }
    setAssistSessionState(1);
    this.mAssistSession = new Session(1);
    this.mAssistSession.mFlagForSessionManager = 1;
    ServerProfile localServerProfile2 = this.mMasterSession.getServerProfileForStatistic();
    ServerProfile localServerProfile1 = localServerProfile2;
    if (localServerProfile2 == null) {
      localServerProfile1 = this.mServerManager.reset(true)[0];
    }
    this.mAssistSession.openSession(localServerProfile1);
  }
  
  private void internalClose()
  {
    MiLinkLog.w("SessionManager", "internalClose");
    setState(0);
    stopTimer();
  }
  
  private void internalManualOpen()
  {
    MiLinkLog.v("SessionManager", "internalManualOpen,mState=" + this.mState);
    resetAllTryTimes();
    if (this.mEnableConnectionManualMode == true) {}
    for (this.mServerManager = ManualServerManager.getInstance();; this.mServerManager = MiLinkServerManager.getInstance())
    {
      internalOpen();
      return;
    }
  }
  
  private void internalOpen()
  {
    int i = 0;
    if (!NetworkDash.isAvailable())
    {
      MiLinkLog.w("SessionManager", "can not open session, network is not available.");
      return;
    }
    if (!MiAccountManager.getInstance().appHasLogined())
    {
      MiLinkLog.w("SessionManager", "app not login internalOpen cancel");
      return;
    }
    if (this.mHandler == null)
    {
      MiLinkLog.w("SessionManager", "can not open session, mHandler == null.");
      return;
    }
    MiLinkLog.i("SessionManager", "open session, internalOpen with mState = " + this.mState);
    if (this.mState != 0)
    {
      MiLinkLog.w("SessionManager", "mState is not No_Sesssion state,cancel paoma");
      return;
    }
    this.mSessionAddress2ErrorCodeMap.clear();
    this.mOpenStartTime = System.currentTimeMillis();
    ServerProfile[] arrayOfServerProfile = this.mServerManager.reset(false);
    this.mServerManager = MiLinkServerManager.getInstance();
    if ((arrayOfServerProfile == null) || (arrayOfServerProfile.length == 0))
    {
      MiLinkLog.e("SessionManager", "serverProfileList is null ,internalOpne cancel");
      return;
    }
    MiLinkLog.d("SessionManager", "internalOpen 4");
    setState(1);
    while (i < arrayOfServerProfile.length)
    {
      if (arrayOfServerProfile[i] != null)
      {
        Session localSession = new Session();
        localSession.mFlagForSessionManager = 1;
        this.mSessionList.add(localSession);
        localSession.openSession(arrayOfServerProfile[i]);
      }
      i += 1;
    }
    this.mNetworkDetailInfoOnOpen = Device.Network.getCurrentNetworkDetailInfo();
  }
  
  private boolean isAbandonSession(Session paramSession)
  {
    boolean bool = false;
    if ((paramSession == null) || (paramSession.mFlagForSessionManager == 3))
    {
      MiLinkLog.w("SessionManager", String.format("Session No:%d is AbandonSession return ", new Object[] { Integer.valueOf(paramSession.getSessionNO()) }));
      if (paramSession.close()) {
        this.mSessionList.remove(paramSession);
      }
      bool = true;
    }
    return bool;
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
      if (((Session)localIterator.next()).mFlagForSessionManager == 1) {
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
  
  private void processEvent(MiLinkEvent.ClientActionEvent paramClientActionEvent)
  {
    switch (SessionManager.7.$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ClientActionEvent$EventType[paramClientActionEvent.mEventType.ordinal()])
    {
    }
    do
    {
      do
      {
        return;
        MiLinkLog.e("SessionManager", "ClientActionEvent ClientNotSameUserLogin");
        internalClose();
        return;
        MiLinkLog.w("SessionManager", "ClientActionEvent ClientRequestCheckConnection");
        tryConnectIfNeed();
        if (this.mState == 2) {
          EventBus.getDefault().post(new MiLinkEvent.SessionManagerStateChangeEvent(MiLinkEvent.SessionManagerStateChangeEvent.EventType.SessionStateChange, Integer.MIN_VALUE, 2));
        }
      } while (this.mLoginState != 2);
      EventBus.getDefault().post(new MiLinkEvent.SessionManagerStateChangeEvent(MiLinkEvent.SessionManagerStateChangeEvent.EventType.LoginStateChange, Integer.MIN_VALUE, 2));
      return;
      MiLinkLog.w("SessionManager", "ClientActionEvent ClientRequestLogin");
      login("UserAction");
      return;
      MiLinkLog.w("SessionManager", "ClientActionEvent ClientRequestLogoff");
      logoff();
      return;
      MiLinkLog.w("SessionManager", "ClientActionEvent ClientForceOpen");
      setState(0);
      resetAllTryTimes();
      acquireWakeLock();
      login("ClientForceOpen");
      return;
      MiLinkLog.w("SessionManager", "ClientActionEvent ClientSuspectBadConnection");
    } while ((this.mState != 2) || (System.currentTimeMillis() - this.mConnectionBuildTimestamp <= 300000L));
    setState(0);
    resetAllTryTimes();
    acquireWakeLock();
    login("ClientSuspectBadConnection");
  }
  
  @SuppressLint({"UseSparseArrays"})
  private void processEvent(MiLinkEvent.ServerNotificationEvent paramServerNotificationEvent)
  {
    switch (SessionManager.7.$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ServerNotificationEvent$EventType[paramServerNotificationEvent.mEventType.ordinal()])
    {
    }
    do
    {
      return;
      MiLinkLog.e("SessionManager", "ServerNotificationEvent ServerLineBroken");
      setState(0);
      if (NetworkDash.isAvailable())
      {
        this.mServerManager = MiLinkBackupServerManager.getInstance();
        internalOpen();
        return;
      }
      MiLinkLog.e("SessionManager", "on server line broken network isAvailable = false");
      return;
      MiLinkLog.e("SessionManager", "ServerNotificationEvent B2tokenExpired");
      MiAccountManager.getInstance().logoffMiLink();
      login("B2_TOKEN_EXPIRED");
      return;
      MiLinkLog.e("SessionManager", "ServerNotificationEvent ChannelPubKeyUpdate");
      localObject1 = (SystemPacketProto.MnsCmdChannelNewPubKeyRsp)paramServerNotificationEvent.mObject;
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
        AnonymousAccount.getInstance().setChannelPubKey(paramServerNotificationEvent);
        MiLinkLog.e("SessionManager", " onUpdateChannelPubKey update  " + paramServerNotificationEvent.size() + " pubkey ");
      }
      paramServerNotificationEvent = getSession();
      if ((paramServerNotificationEvent == null) || (!paramServerNotificationEvent.isAvailable()))
      {
        MiLinkLog.v("SessionManager", "login session is not available.");
        return;
      }
      paramServerNotificationEvent.fastLogin();
      return;
      MiLinkLog.e("SessionManager", "ServerNotificationEvent ServiceTokenExpired");
      this.mLogoffRunnable.run();
      EventBus.getDefault().post(new MiLinkEvent.SessionManagerNotificationEvent(MiLinkEvent.SessionManagerNotificationEvent.EventType.ServiceTokenExpired));
      return;
      MiLinkLog.e("SessionManager", "ServerNotificationEvent ShouldUpdate");
      EventBus.getDefault().post(new MiLinkEvent.SessionManagerNotificationEvent(MiLinkEvent.SessionManagerNotificationEvent.EventType.ShouldUpdate));
      return;
      MiLinkLog.e("SessionManager", "ServerNotificationEvent KickByServer");
      this.mHandler.postDelayed(this.mLogoffRunnable, 5000L);
      EventBus.getDefault().post(new MiLinkEvent.SessionManagerNotificationEvent(MiLinkEvent.SessionManagerNotificationEvent.EventType.KickByServer, paramServerNotificationEvent.mObject));
      return;
      try
      {
        UploadLogManager.uploadMilinkLog((PushPacketProto.MilinkLogReq)paramServerNotificationEvent.mObject, MiAccountManager.getInstance().getCurrentAccount(), false);
        return;
      }
      catch (Exception paramServerNotificationEvent)
      {
        return;
      }
      paramServerNotificationEvent = (PushPacketProto.PushLogLevel)paramServerNotificationEvent.mObject;
      MiLinkLog.d("SessionManager", "requireChannelLogLevel.");
    } while (!paramServerNotificationEvent.hasLoglevel());
    Object localObject1 = DataExtraProto.DataLoglevel.newBuilder();
    ((DataExtraProto.DataLoglevel.Builder)localObject1).setLoglevel(paramServerNotificationEvent.getLoglevel());
    ((DataExtraProto.DataLoglevel.Builder)localObject1).setTimeLong(paramServerNotificationEvent.getTimeLong());
    PacketData localPacketData = new PacketData();
    localPacketData.setCommand("data.loglevel");
    localPacketData.setData(((DataExtraProto.DataLoglevel.Builder)localObject1).build().toByteArray());
    MnsPacketDispatcher.getInstance().dispatchPacket(localPacketData);
    MiLinkLog.e("SessionManager", "notify app to change log level.level=" + paramServerNotificationEvent.getLoglevel() + ", time=" + paramServerNotificationEvent.getTimeLong());
  }
  
  private void processEvent(MiLinkEvent.SessionConnectEvent arg1)
  {
    Session localSession1 = ???.mSession;
    int i = ???.mRetCode;
    switch (SessionManager.7.$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionConnectEvent$EventType[???.mEventType.ordinal()])
    {
    default: 
    case 1: 
    case 2: 
    case 3: 
      do
      {
        do
        {
          do
          {
            for (;;)
            {
              return;
              MiLinkLog.w("SessionManager", "SessionConnectEvent SessionBuildFailed");
              if (localSession1.getServerProfile().getServerIP() == MiLinkIpInfoManager.getInstance().getRecentlyServerData().getRecentlyServer().getServerIP()) {
                MiLinkIpInfoManager.getInstance().setRecentlyServer(new ServerProfile("0.0.0.0", 0, 0, 0));
              }
              synchronized (this.mReportLock)
              {
                this.mReportLock.notifyAll();
                ??? = localSession1.getServerProfileForStatistic();
                MiLinkLog.w("SessionManager", "SessionBuildFailed ServerProfile " + ???.toString());
                if (??? != null)
                {
                  ??? = String.format("%s:%s", new Object[] { ???.getServerIP(), Integer.valueOf(???.getServerPort()) });
                  this.mSessionAddress2ErrorCodeMap.put(???, Integer.valueOf(i));
                }
                if (!isAbandonSession(localSession1))
                {
                  MiLinkLog.w("SessionManager", "MSG_TYPE_OPEN_SESSION_FAIL errCode:" + i);
                  if (localSession1.mFlagForSessionManager == 4)
                  {
                    MiLinkLog.e("SessionManager", String.format("handleMessage MSG_TYPE_OPEN_SESSION_FAIL is mMasterSession No:%d, mState = %d", new Object[] { Integer.valueOf(localSession1.getSessionNO()), Integer.valueOf(this.mState) }));
                    setState(0);
                    if (!NetworkDash.isAvailable()) {
                      continue;
                    }
                    this.mInternalAutoOpenRunnable.run();
                  }
                }
              }
            }
            if (localSession2.mFlagForSessionManager == 1)
            {
              MiLinkLog.e("SessionManager", String.format("handleMessage MSG_TYPE_OPEN_SESSION_FAIL is isTryingSession No:%d, mState = %d", new Object[] { Integer.valueOf(localSession2.getSessionNO()), Integer.valueOf(this.mState) }));
              getNextServerProfile(localSession2, i);
              return;
            }
            MiLinkLog.e("SessionManager", "handleMessage MSG_TYPE_OPEN_SESSION_FAIL is unknown session No:" + localSession2.getSessionNO());
            localSession2.close();
            return;
            MiLinkLog.w("SessionManager", "SessionConnectEvent SessionBuildSuccess");
          } while (isAbandonSession(localSession2));
          MiLinkLog.v("SessionManager", "handleMessage OPEN_SESSION_SUCCESS No:" + localSession2.getSessionNO());
          if ((localSession2.mFlagForSessionManager == 1) || (localSession2.mFlagForSessionManager == 4))
          {
            MiLinkLog.v("SessionManager", "update session");
            updateSession(localSession2);
            synchronized (this.mReportLock)
            {
              this.mReportLock.notifyAll();
              return;
            }
          }
          localSession3.close();
          MiLinkLog.e("SessionManager", "handleMessage OPEN_SESSION_SUCCESS is unknown session No:" + localSession3.getSessionNO());
          return;
          MiLinkLog.w("SessionManager", "SessionConnectEvent SessionRunError");
        } while (isAbandonSession(localSession3));
        MiLinkLog.e("SessionManager", String.format("handleMessage SESSION_ERROR reason = %d, No:%d", new Object[] { Integer.valueOf(i), Integer.valueOf(localSession3.getSessionNO()) }));
        setState(0);
      } while ((i == 562) || (i == 104));
      if (NetworkDash.isAvailable())
      {
        MiLinkLog.e("SessionManager", " SESSION_ERROR mSessionReconnectTimes=" + this.mSessionReconnectTryTimes + ", mOpenSessionTryTimes=" + this.mOpenSessionTryTimes);
        if (this.mSessionReconnectTryTimes < 2)
        {
          ??? = new Session();
          ???.mFlagForSessionManager = 1;
          this.mSessionList.add(???);
          setState(1);
          ???.openSession(localSession3.getServerProfileForStatistic());
          this.mSessionReconnectTryTimes += 1;
        }
        for (;;)
        {
          HeartBeatManager.getInstance().reciveConnectRunError(i);
          return;
          this.mInternalAutoOpenRunnable.run();
        }
      }
      MiLinkLog.e("SessionManager", "on seesion error network isAvailable = false");
      return;
    case 4: 
      MiLinkLog.w("SessionManager", "SessionConnectEvent AssistSessionConnectSuccess");
      localSession3.mFlagForSessionManager = 4;
      MiLinkLog.v("SessionManager", "updateSession in no session or tring session");
      if ((this.mAssistSession != null) && (this.mAssistSession != localSession3)) {
        this.mAssistSession.close();
      }
      this.mAssistSession = localSession3;
      setAssistSessionState(2);
      return;
    case 5: 
      MiLinkLog.w("SessionManager", "SessionConnectEvent AssistSessionConnectFailed");
      localSession3.mFlagForSessionManager = 3;
      setAssistSessionState(0);
      return;
    }
    MiLinkLog.w("SessionManager", "SessionConnectEvent AssistSessionRunError");
    localSession3.mFlagForSessionManager = 3;
    setAssistSessionState(0);
  }
  
  private void processEvent(MiLinkEvent.SessionLoginEvent paramSessionLoginEvent)
  {
    if (isAbandonSession(paramSessionLoginEvent.mSession)) {
      return;
    }
    switch (SessionManager.7.$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionLoginEvent$EventType[paramSessionLoginEvent.mEventType.ordinal()])
    {
    default: 
      return;
    case 1: 
      MiLinkLog.w("SessionManager", "SessionLoginEvent LoginFailed");
      MiAccountManager.getInstance().setIsLogining(false);
      this.mLoginState = 0;
      EventBus.getDefault().post(new MiLinkEvent.SessionManagerStateChangeEvent(MiLinkEvent.SessionManagerStateChangeEvent.EventType.LoginStateChange, Integer.MIN_VALUE, 0));
      this.mHandler.removeMessages(24);
      this.mHandler.sendEmptyMessageDelayed(24, 10000L);
      return;
    case 2: 
      MiLinkLog.w("SessionManager", "SessionLoginEvent LoginSuccess");
      MiAccountManager.getInstance().setIsLogining(false);
      this.mLoginState = 2;
      sendCacheRequest();
      MiLinkLog.v("SessionManager", "onLoginResult loginState=2");
      EventBus.getDefault().post(new MiLinkEvent.SessionManagerStateChangeEvent(MiLinkEvent.SessionManagerStateChangeEvent.EventType.LoginStateChange, Integer.MIN_VALUE, 2));
      return;
    }
    MiLinkLog.w("SessionManager", "SessionLoginEvent LogoffCmdReturn");
    this.mHandler.removeCallbacks(this.mLogoffRunnable);
    this.mLogoffRunnable.run();
  }
  
  private void processEvent(MiLinkEvent.SessionOtherEvent paramSessionOtherEvent)
  {
    Session localSession = paramSessionOtherEvent.mSession;
    if (isAbandonSession(localSession)) {}
    do
    {
      do
      {
        return;
        switch (SessionManager.7.$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionOtherEvent$EventType[paramSessionOtherEvent.mEventType.ordinal()])
        {
        default: 
          return;
        case 1: 
          MiLinkLog.w("SessionManager", "SessionOtherEvent RecvInvalidPacket");
          EventBus.getDefault().post(new MiLinkEvent.SessionManagerNotificationEvent(MiLinkEvent.SessionManagerNotificationEvent.EventType.RecvInvalidPacket));
          return;
        case 2: 
          MiLinkLog.w("SessionManager", "SessionOtherEvent RequestMapIsEmpty");
        }
      } while (!this.mCheckTimeOutTimerOpen);
      this.mTryStopTimerRunnable.run();
      return;
      MiLinkLog.w("SessionManager", "SessionOtherEvent RequestMapIsNotEmpty");
    } while (this.mCheckTimeOutTimerOpen);
    MiLinkLog.v("SessionManager", "mCheckTimeOutTimerOpen=false,startTimer");
    startTimer();
    return;
    MiLinkLog.w("SessionManager", "SessionOtherEvent StatisticsTimeoutPacket");
    localSession.postStatisticsTimeoutPacketAction();
  }
  
  private void processEvent(MiLinkEvent.SystemNotificationEvent paramSystemNotificationEvent)
  {
    switch (SessionManager.7.$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SystemNotificationEvent$EventType[paramSystemNotificationEvent.mEventType.ordinal()])
    {
    default: 
    case 1: 
    case 2: 
      do
      {
        do
        {
          return;
          closeAllBandonSession();
          InternalDataMonitor.getInstance().onAlarmArrive();
          if ((Global.getClientAppInfo().isMediumConnection()) && (System.currentTimeMillis() - this.mLastUserSendDataTime > 600000L))
          {
            MiLinkLog.w("SessionManager", "medium connection mode,user not send any packet in 10 min,close connection");
            internalClose();
            return;
          }
          if (!MiAccountManager.getInstance().appHasLogined())
          {
            MiLinkLog.w("SessionManager", "onAlarmArrived, app not login");
            return;
          }
          MiLinkLog.w("SessionManager", "SystemNotificationEvent onAlarmArrived mState=" + this.mState + " sendCacheRequest size = " + this.mSendQueue.size());
          resetAllTryTimes();
          acquireWakeLock();
          MiLinkLog.v("SessionManager", "session manager state: " + this.mState);
          paramSystemNotificationEvent = getSession();
        } while (tryConnectIfNeed());
        MiLinkLog.v("SessionManager", "send heart beat to session");
        if ((paramSystemNotificationEvent == null) || (!paramSystemNotificationEvent.isAvailable()))
        {
          MiLinkLog.w("SessionManager", "session is not available.");
          return;
        }
        paramSystemNotificationEvent.heartBeat(false);
        return;
        MiLinkLog.v("SessionManager", "SystemNotificationEvent screen_on");
        if (!MiAccountManager.getInstance().appHasLogined())
        {
          MiLinkLog.w("SessionManager", "screen_on, app not login");
          return;
        }
      } while (Global.getClientAppInfo().isMediumConnection());
      tryConnectIfNeed();
      return;
    case 3: 
      MiLinkLog.v("SessionManager", "SystemNotificationEvent NetWorkChange");
      acquireWakeLock();
      tryConnectIfNeed();
      return;
    }
    MiLinkLog.v("SessionManager", "SystemNotificationEvent ServiceCreated");
    if (this.mAppInited)
    {
      acquireWakeLock();
      tryConnectIfNeed();
      return;
    }
    EventBus.getDefault().post(new MiLinkEvent.SessionManagerNotificationEvent(MiLinkEvent.SessionManagerNotificationEvent.EventType.GetServiceToken));
  }
  
  private void releaseWakeLock()
  {
    synchronized (this.mLock)
    {
      try
      {
        if (this.mWakeLock != null)
        {
          MiLinkLog.w("SessionManager", "Wakelock RELEASED :)");
          this.mWakeLock.release();
          this.mWakeLock = null;
        }
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          MiLinkLog.e("SessionManager", "releaseWakeLock exception", localException);
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
    Session localSession = getSession();
    if (localSession == null)
    {
      MiLinkLog.e("SessionManager", "sendCacheRequest session == null impossible!!!");
      return false;
    }
    MiLinkLog.w("SessionManager", "sendCacheRequest size = " + this.mSendQueue.size());
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
        localSession.handleRequest(localRequest);
        localIterator.remove();
      }
    }
    return true;
  }
  
  private void setAssistSessionState(int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      MiLinkLog.i("SessionManager", "setAssistSessionState mAssistSessionState = " + this.mAssistSessionState + ",newState = " + paramInt);
      this.mAssistSessionState = paramInt;
      return;
      if (this.mAssistSession != null)
      {
        this.mAssistSession.mFlagForSessionManager = 3;
        this.mAssistSession.close();
        this.mAssistSession = null;
      }
    }
  }
  
  private void setState(int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      MiLinkLog.i("SessionManager", "setState mState = " + this.mState + ",newState = " + paramInt);
      MiLinkLog.v("SessionManager", "mSessionList.size=" + this.mSessionList.size());
      int i = this.mState;
      this.mState = paramInt;
      if (this.mState != i) {
        EventBus.getDefault().post(new MiLinkEvent.SessionManagerStateChangeEvent(MiLinkEvent.SessionManagerStateChangeEvent.EventType.SessionStateChange, i, this.mState));
      }
      return;
      Iterator localIterator = this.mSessionList.iterator();
      while (localIterator.hasNext()) {
        ((Session)localIterator.next()).mFlagForSessionManager = 3;
      }
      closeAllBandonSession();
      if (this.mMasterSession != null)
      {
        this.mMasterSession.mFlagForSessionManager = 3;
        this.mMasterSession.close();
        this.mMasterSession = null;
      }
      this.mLoginState = 0;
      MiAccountManager.getInstance().setIsLogining(false);
      continue;
      closeAllBandonSession();
      this.mConnectionBuildTimestamp = System.currentTimeMillis();
    }
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
  
  private boolean updateSession(Session paramSession)
  {
    if (paramSession == null) {
      return false;
    }
    MiLinkLog.v("SessionManager", "update session function.");
    paramSession.mFlagForSessionManager = 4;
    this.mSessionList.remove(paramSession);
    if (paramSession.getServerProfile().getProtocol() == 1) {
      abandonAllSession();
    }
    if (this.mServerManager != null) {
      this.mServerManager.save(paramSession.getServerProfile());
    }
    MiLinkLog.v("SessionManager", "updateSession in no session or tring session");
    if ((this.mMasterSession != null) && (this.mMasterSession != paramSession)) {
      this.mMasterSession.close();
    }
    this.mMasterSession = paramSession;
    setState(2);
    MiLinkLog.v("SessionManager", "connected, start milink login");
    MiAccountManager.getInstance().setIsLogining(false);
    login("updateSession");
    onOpenSessionResult(0, this.mOpenStartTime);
    Object localObject = paramSession.getOpenSessionSucessReturnInfo();
    if (localObject != null)
    {
      paramSession = ((OpenSessionSucessReturnInfo)localObject).getClientIp();
      String str = ((OpenSessionSucessReturnInfo)localObject).getClientIsp();
      ArrayList localArrayList = ((OpenSessionSucessReturnInfo)localObject).getBackupServerList();
      localObject = ((OpenSessionSucessReturnInfo)localObject).getOptmumServerList();
      MiLinkLog.w("SessionManager", String.format("clientip:%s clientIsp;%s", new Object[] { paramSession, str }));
      if (!TextUtils.isEmpty(paramSession)) {
        Global.setClientIp(paramSession);
      }
      if (!TextUtils.isEmpty(str)) {
        Global.setClientIsp(str);
      }
      MiLinkIpInfoManager.getInstance().setOptmumServerList(Global.getClientIsp(), (List)localObject);
      MiLinkIpInfoManager.getInstance().setBackupServerList(localArrayList);
    }
    for (;;)
    {
      return true;
      MiLinkLog.w("SessionManager", "info is null");
    }
  }
  
  public boolean close()
  {
    return this.mHandler.post(new SessionManager.4(this));
  }
  
  public boolean enableConnectionManualMode(boolean paramBoolean)
  {
    MiLinkLog.v("SessionManager", "enableConnectionManualMode, enable=" + paramBoolean);
    if (paramBoolean == this.mEnableConnectionManualMode) {
      return true;
    }
    if (paramBoolean) {}
    for (this.mServerManager = ManualServerManager.getInstance();; this.mServerManager = MiLinkServerManager.getInstance())
    {
      this.mEnableConnectionManualMode = paramBoolean;
      close();
      EventBus.getDefault().post(new MiLinkEvent.ClientActionEvent(MiLinkEvent.ClientActionEvent.EventType.ClientForceOpen));
      return true;
    }
  }
  
  public boolean getGlobalPushFlag()
  {
    return this.mGlobalPushFlag;
  }
  
  public int getSessionState()
  {
    return this.mState;
  }
  
  public void initApp()
  {
    this.mAppInited = true;
    this.mHandler.removeCallbacks(this.mLogoffRunnable);
    resetAllTryTimes();
  }
  
  public boolean isMiLinkLogined()
  {
    return this.mLoginState == 2;
  }
  
  public boolean isTimerOpen()
  {
    return this.mCheckTimeOutTimerOpen;
  }
  
  public void login(String paramString)
  {
    MiLinkLog.w("SessionManager", "login from=" + paramString + " mState=" + this.mState + " isLogining=" + MiAccountManager.getInstance().isLogining() + " appHasLogined=" + MiAccountManager.getInstance().appHasLogined() + " mAppInited=" + this.mAppInited);
    this.mHandler.removeCallbacks(this.mLogoffRunnable);
    if (MiAccountManager.getInstance().isLogining()) {
      MiLinkLog.v("SessionManager", "milink is logining");
    }
    do
    {
      return;
      if (!MiAccountManager.getInstance().appHasLogined())
      {
        MiLinkLog.v("SessionManager", "app not login, cancel milink login");
        paramString = this.mHandler.obtainMessage(23);
        this.mHandler.sendMessageAtFrontOfQueue(paramString);
        return;
      }
      if (!this.mAppInited)
      {
        MiLinkLog.v("SessionManager", "app not init");
        paramString = this.mHandler.obtainMessage(26);
        this.mHandler.sendMessageAtFrontOfQueue(paramString);
      }
      if (this.mState == 0)
      {
        internalManualOpen();
        return;
      }
    } while (this.mState == 1);
    MiLinkLog.v("SessionManager", "milink login, session manager state: " + this.mState);
    paramString = getSession();
    if ((paramString == null) || (!paramString.isAvailable()))
    {
      MiLinkLog.v("SessionManager", "login session is not available.");
      return;
    }
    if (this.mLoginTryTimes < 5)
    {
      this.mLoginTryTimes += 1;
      MiLinkLog.v("SessionManager", "milink login start, mLoginTryTimes=" + this.mLoginTryTimes);
      paramString.fastLogin();
      return;
    }
    MiLinkLog.v("SessionManager", "milink login has exceeded max times");
  }
  
  public void logoff()
  {
    MiLinkLog.v("SessionManager", "milink logoff");
    InternalDataMonitor.getInstance().doPostDataAtOnce();
    if ((this.mMasterSession != null) && (this.mMasterSession.isAvailable()))
    {
      this.mMasterSession.logoff();
      this.mHandler.removeCallbacks(this.mLogoffRunnable);
      this.mHandler.postDelayed(this.mLogoffRunnable, 2000L);
      return;
    }
    this.mLogoffRunnable.run();
  }
  
  @Subscribe
  public void onEvent(MiLinkEvent.ChannelStatusChangeEvent paramChannelStatusChangeEvent)
  {
    switch (SessionManager.7.$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ChannelStatusChangeEvent$EventType[paramChannelStatusChangeEvent.mEventType.ordinal()])
    {
    }
    do
    {
      return;
      this.mAllowAssitSessionWork = true;
      this.mHandler.removeCallbacks(this.channelIdleReset);
      this.mHandler.postDelayed(this.channelIdleReset, 30000L);
      return;
    } while (!this.mAllowAssitSessionWork);
    MiLinkLog.w("SessionManager", "mode change,mAllowAssitSessionWork==false");
    this.mAllowAssitSessionWork = false;
    this.mHandler.removeCallbacks(this.channelIdleReset);
  }
  
  @Subscribe
  public void onEvent(MiLinkEvent.ClientActionEvent paramClientActionEvent)
  {
    paramClientActionEvent = this.mHandler.obtainMessage(5, paramClientActionEvent);
    this.mHandler.sendMessage(paramClientActionEvent);
  }
  
  @Subscribe
  public void onEvent(MiLinkEvent.ServerNotificationEvent paramServerNotificationEvent)
  {
    paramServerNotificationEvent = this.mHandler.obtainMessage(4, paramServerNotificationEvent);
    this.mHandler.sendMessage(paramServerNotificationEvent);
  }
  
  @Subscribe
  public void onEvent(MiLinkEvent.SessionConnectEvent paramSessionConnectEvent)
  {
    paramSessionConnectEvent = this.mHandler.obtainMessage(1, paramSessionConnectEvent);
    this.mHandler.sendMessage(paramSessionConnectEvent);
  }
  
  @Subscribe
  public void onEvent(MiLinkEvent.SessionLoginEvent paramSessionLoginEvent)
  {
    paramSessionLoginEvent = this.mHandler.obtainMessage(2, paramSessionLoginEvent);
    this.mHandler.sendMessage(paramSessionLoginEvent);
  }
  
  @Subscribe
  public void onEvent(MiLinkEvent.SessionOtherEvent paramSessionOtherEvent)
  {
    paramSessionOtherEvent = this.mHandler.obtainMessage(3, paramSessionOtherEvent);
    this.mHandler.sendMessage(paramSessionOtherEvent);
  }
  
  @Subscribe
  public void onEvent(MiLinkEvent.SystemNotificationEvent paramSystemNotificationEvent)
  {
    paramSystemNotificationEvent = this.mHandler.obtainMessage(6, paramSystemNotificationEvent);
    this.mHandler.sendMessage(paramSystemNotificationEvent);
  }
  
  public void onOpenSessionResult(int paramInt, long paramLong)
  {
    MiLinkLog.w("SessionManager", "onOpenSessionResult, errorCode = " + paramInt);
    if (paramInt != 0)
    {
      stopTimer();
      if (isMultiUnavailable())
      {
        MiLinkLog.w("SessionManager", "statistic milink.open, code=7");
        InternalDataMonitor.getInstance().trace("", 0, "milink.open", 7, paramLong, System.currentTimeMillis(), 0, 0, 0);
      }
    }
    while (this.mMasterSession == null) {
      for (;;)
      {
        return;
        int[] arrayOfInt = new int[6];
        int[] tmp76_74 = arrayOfInt;
        tmp76_74[0] = 8;
        int[] tmp81_76 = tmp76_74;
        tmp81_76[1] = 6;
        int[] tmp86_81 = tmp81_76;
        tmp86_81[2] = 2;
        int[] tmp90_86 = tmp86_81;
        tmp90_86[3] = 3;
        int[] tmp94_90 = tmp90_86;
        tmp94_90[4] = 5;
        int[] tmp98_94 = tmp94_90;
        tmp98_94[5] = 9;
        tmp98_94;
        paramInt = 0;
        while ((paramInt < 6) && (paramInt < 6))
        {
          if (isAllSessionErrorCode(new int[] { 13, 110, 113, 111, 101, 562 }[paramInt]))
          {
            MiLinkLog.w("SessionManager", "statistic milink.open, code=" + tmp76_74[paramInt]);
            InternalDataMonitor.getInstance().trace("", 0, "milink.open", tmp76_74[paramInt], paramLong, System.currentTimeMillis(), 0, 0, 0);
            return;
          }
          paramInt += 1;
        }
        if (NetworkDash.isAvailable()) {
          this.threadPool.execute(new SessionManager.5(this, paramLong));
        }
        while (NetworkDash.isAvailable())
        {
          this.mHandler.removeCallbacks(this.mInternalAutoOpenRunnable);
          this.mHandler.postAtTime(this.mInternalAutoOpenRunnable, 3000L);
          MiLinkLog.v("SessionManager", "onOpenSessionResult reconnect times:" + this.mOpenSessionTryTimes);
          return;
          MiLinkLog.w("SessionManager", "check isInternetAvailable, but network is unavailable");
        }
      }
    }
    MiLinkLog.w("SessionManager", String.format("mMasterSession = [Session No:%d] ", new Object[] { Integer.valueOf(this.mMasterSession.getSessionNO()) }));
    InternalDataMonitor.getInstance().trace(this.mMasterSession.getServerProfile().getServerIP(), this.mMasterSession.getServerProfile().getServerPort(), "milink.open", 0, paramLong, System.currentTimeMillis(), 0, 0, 0);
  }
  
  protected void processMessage(Message paramMessage)
  {
    Session localSession;
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
    default: 
      return;
    case 1: 
      processEvent((MiLinkEvent.SessionConnectEvent)paramMessage.obj);
      return;
    case 2: 
      processEvent((MiLinkEvent.SessionLoginEvent)paramMessage.obj);
      return;
    case 3: 
      processEvent((MiLinkEvent.SessionOtherEvent)paramMessage.obj);
      return;
    case 4: 
      processEvent((MiLinkEvent.ServerNotificationEvent)paramMessage.obj);
      return;
    case 5: 
      processEvent((MiLinkEvent.ClientActionEvent)paramMessage.obj);
      return;
    case 6: 
      processEvent((MiLinkEvent.SystemNotificationEvent)paramMessage.obj);
      return;
    case 20: 
      MiLinkLog.w("SessionManager", "MSG_CHECK_SESSION_TIMER");
      paramMessage = getSession();
      if (paramMessage != null) {
        paramMessage.checkRequestsTimeout();
      }
      paramMessage = this.mSessionList.iterator();
      while (paramMessage.hasNext())
      {
        localSession = (Session)paramMessage.next();
        if (localSession.mFlagForSessionManager == 1) {
          localSession.checkRequestsTimeout();
        }
      }
      if (this.mAllowAssitSessionWork)
      {
        paramMessage = getAssistSession();
        if (paramMessage != null) {
          paramMessage.checkRequestsTimeout();
        }
      }
      this.mHandler.sendEmptyMessageDelayed(20, 3000L);
      return;
    case 22: 
      MiLinkLog.w("SessionManager", "release wake lock");
      releaseWakeLock();
      return;
    case 24: 
      login("LOGIN_RETRY");
      return;
    case 23: 
      MiLinkLog.v("SessionManager", "MSG_TYPE_GET_SERVICE_TOKEN,no service token, call app onEventGetServiceToken");
      EventBus.getDefault().post(new MiLinkEvent.SessionManagerNotificationEvent(MiLinkEvent.SessionManagerNotificationEvent.EventType.GetServiceToken));
      return;
    case 26: 
      MiLinkLog.v("SessionManager", "MSG_TYPE_APP_NOT_INIT,app not init, call app init by onEventGetServiceToken");
      EventBus.getDefault().post(new MiLinkEvent.SessionManagerNotificationEvent(MiLinkEvent.SessionManagerNotificationEvent.EventType.GetServiceToken));
      return;
    }
    Request localRequest = (Request)paramMessage.obj;
    if (!NetworkDash.isAvailable())
    {
      localRequest.onDataSendFailed(533, "abandon package,network not available state=" + this.mState);
      return;
    }
    if (this.mAllowAssitSessionWork)
    {
      paramMessage = getAssistSession();
      if ((paramMessage == null) || (!paramMessage.isConnected())) {
        internalAssistSessionOpen();
      }
    }
    else
    {
      localSession = getSession();
      MiLinkLog.v("SessionManager", "send data, session manager state: " + this.mState);
      paramMessage = localSession;
      if (localSession != null)
      {
        paramMessage = localSession;
        if (localSession.isDeadConnection(6000L, 300000L))
        {
          MiLinkLog.w("SessionManager", "session isDeadConnection=true");
          setState(0);
          paramMessage = null;
        }
      }
      if ((paramMessage != null) && (paramMessage.isAvailable())) {
        break label724;
      }
      if (!localRequest.requestShouldCached()) {
        break label627;
      }
      MiLinkLog.w("SessionManager", "push request in cache, seq=" + localRequest.getSeqNo());
      this.mSendQueue.add(localRequest);
    }
    for (;;)
    {
      login("handleRequest");
      return;
      MiLinkLog.v("SessionManager", "send data to assistsession, seq=" + localRequest.getSeqNo());
      if (paramMessage.isDeadConnection(6000L, 300000L))
      {
        MiLinkLog.w("SessionManager", "assistsession isDeadConnection=true");
        setAssistSessionState(0);
        break;
      }
      paramMessage.handleRequest(localRequest);
      return;
      label627:
      MiLinkLog.v("SessionManager", "abandon data because session is not available, seq=" + localRequest.getSeqNo());
      if (localRequest.getData() != null)
      {
        localRequest.onDataSendFailed(533, "abandon package,session is not available state=" + this.mState);
        InternalDataMonitor.getInstance().trace("", 0, localRequest.getData().getCommand(), 4, localRequest.getCreatedTime(), System.currentTimeMillis(), localRequest.getSize(), 0, localRequest.getSeqNo());
      }
    }
    label724:
    MiLinkLog.v("SessionManager", "send data to session, seq=" + localRequest.getSeqNo());
    paramMessage.handleRequest(localRequest);
  }
  
  public boolean sendData(PacketData paramPacketData, int paramInt, ResponseListener paramResponseListener)
  {
    if (TextUtils.isEmpty(paramPacketData.getCommand()))
    {
      MiLinkLog.v("SessionManager", "send data ,cmd can not be null");
      return false;
    }
    if (!MiAccountManager.getInstance().appHasLogined())
    {
      MiLinkLog.v("SessionManager", "send data ,appHasLogined=false,request get st");
      Message localMessage = this.mHandler.obtainMessage(23);
      this.mHandler.sendMessageAtFrontOfQueue(localMessage);
    }
    this.mLastUserSendDataTime = System.currentTimeMillis();
    paramPacketData.setSeqNo(Global.getSequence());
    MiLinkLog.v("SessionManager", "send data cmd=" + paramPacketData.getCommand() + ", seq=" + paramPacketData.getSeqNo());
    paramPacketData = new Request(paramPacketData, paramResponseListener, MiAccountManager.getInstance().getBusinessEncByMode(), MiAccountManager.getInstance().getCurrentAccount());
    paramPacketData.setTimeOut(paramInt);
    paramPacketData = this.mHandler.obtainMessage(25, paramPacketData);
    this.mHandler.sendMessage(paramPacketData);
    return true;
  }
  
  public void setGlobalPushFlag(boolean paramBoolean)
  {
    this.mGlobalPushFlag = paramBoolean;
  }
  
  public void setIpAndPortInManualMode(String paramString, int paramInt)
  {
    MiLinkLog.v("SessionManager", "setIpAndPortInManualMode, ip=" + paramString + ":" + paramInt);
    ManualServerManager.getInstance().setIp(paramString);
    ManualServerManager.getInstance().setPort(paramInt);
    if (this.mEnableConnectionManualMode)
    {
      if (this.mMasterSession != null)
      {
        ServerProfile localServerProfile = this.mMasterSession.getServerProfile();
        if ((localServerProfile.getServerIP() != paramString) || (localServerProfile.getServerPort() != paramInt)) {}
      }
    }
    else {
      return;
    }
    close();
    EventBus.getDefault().post(new MiLinkEvent.ClientActionEvent(MiLinkEvent.ClientActionEvent.EventType.ClientForceOpen));
  }
  
  public void suspectBadConnection()
  {
    EventBus.getDefault().post(new MiLinkEvent.ClientActionEvent(MiLinkEvent.ClientActionEvent.EventType.ClientSuspectBadConnection));
  }
  
  public boolean tryConnectIfNeed()
  {
    if (this.mState == 0)
    {
      internalOpen();
      return true;
    }
    if (this.mState == 1)
    {
      if ((this.mOpenStartTime > 0L) && (System.currentTimeMillis() - this.mOpenStartTime > 180000L))
      {
        MiLinkLog.w("SessionManager", "tryConnectIfNeed, connect time too long=" + (System.currentTimeMillis() - this.mOpenStartTime) + "ms");
        this.mState = 0;
        internalOpen();
        return true;
      }
      return false;
    }
    if (this.mLoginState == 0)
    {
      this.mLoginTryTimes = 0;
      login("tryConnectIfNeed");
      return true;
    }
    return false;
  }
  
  private class NetworkChangeReceiver
    extends BroadcastReceiver
  {
    private String apnName = "";
    private int currentType = -1;
    Runnable runable = new SessionManager.NetworkChangeReceiver.1(this);
    
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
      if (!MiAccountManager.getInstance().appHasLogined()) {
        MiLinkLog.v("SessionManager", "app not login, ignore network change broadcast");
      }
      while (!"android.net.conn.CONNECTIVITY_CHANGE".equals(paramIntent.getAction())) {
        return;
      }
      SessionManager.this.mHandler.post(this.runable);
    }
    
    public void setCurrentNetworkInfo()
    {
      try
      {
        NetworkInfo localNetworkInfo = ((ConnectivityManager)Global.getSystemService("connectivity")).getActiveNetworkInfo();
        MiLinkLog.i("SessionManager", "NetworkChangeReceiver, setCurrentNetworkInfo=" + localNetworkInfo);
        setCurrentNetworkInfo(localNetworkInfo);
        return;
      }
      catch (Exception localException)
      {
        setCurrentNetworkInfo(null);
        MiLinkLog.e("SessionManager", "Get networkInfo fail", localException);
      }
    }
  }
  
  private class ScreenOnChangeReceiver
    extends BroadcastReceiver
  {
    private ScreenOnChangeReceiver() {}
    
    public void onReceive(Context paramContext, Intent paramIntent)
    {
      if (paramIntent.getAction().equals("android.intent.action.SCREEN_ON"))
      {
        EventBus.getDefault().post(new MiLinkEvent.SystemNotificationEvent(MiLinkEvent.SystemNotificationEvent.EventType.ScreenOn));
        MnsPacketDispatcher.getInstance().setDispatchPacketDelayTimeWhenScreenOn();
      }
      while (!paramIntent.getAction().equals("android.intent.action.SCREEN_OFF")) {
        return;
      }
      MiLinkLog.v("SessionManager", "ScreenOnChangeReceiver screen_off");
      MnsPacketDispatcher.getInstance().setDispatchPacketDelayTimeWhenScreenOff();
    }
  }
}


/* Location:              C:\Users\Administrator\Desktop\apk\dex2jar\classes-dex2jar.jar!\com\mi\milink\sdk\session\persistent\SessionManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */