.class public Lcom/mi/milink/sdk/session/persistent/SessionManager;
.super Lcom/mi/milink/sdk/base/CustomHandlerThread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;,
        Lcom/mi/milink/sdk/session/persistent/SessionManager$ScreenOnChangeReceiver;
    }
.end annotation


# static fields
.field private static final AUTO_INTERNAL_OPEN_DELAY:I = 0xbb8

.field private static final CHECK_SESSION_INTERVAL:I = 0xbb8

.field private static final CHECK_WAKE_LOCK_TIMEOUT:I = 0x5

.field private static final ERRNO_CONNECT_TIME_OUT:I = 0x6e

.field private static final ERRNO_NET_UNREACHABLE:I = 0x65

.field private static final ERRNO_NO_ROUTE:I = 0x71

.field private static final ERRNO_PERMISSION_DENIED:I = 0xd

.field private static final ERRNO_REFUSED:I = 0x6f

.field private static final FLAG_ABANDON_SESSION:I = 0x3

.field private static final FLAG_MASTER_SESSION:I = 0x4

.field private static final FLAG_TRTING_SESSION:I = 0x1

.field private static final LOGINED_SESSION_STATE:I = 0x2

.field private static final LOGIN_TRY_TIMES:I = 0x5

.field private static final MEDIUM_CONNECTION_CLOSE_INTERNAL:I = 0x927c0

.field public static final MILINK_OPEN_RET_CODE_ALL_TIME_OUT:I = 0x6

.field public static final MILINK_OPEN_RET_CODE_FAIL:I = 0x1

.field public static final MILINK_OPEN_RET_CODE_LOAD_SO_FAILED:I = 0x9

.field public static final MILINK_OPEN_RET_CODE_MULTI_UNAVAILABLE:I = 0x7

.field public static final MILINK_OPEN_RET_CODE_NETWORK_CHANGE:I = 0x4

.field public static final MILINK_OPEN_RET_CODE_NET_UNREACHABLE:I = 0x5

.field public static final MILINK_OPEN_RET_CODE_NO_ROUTE:I = 0x2

.field public static final MILINK_OPEN_RET_CODE_OK:I = 0x0

.field public static final MILINK_OPEN_RET_CODE_PERMISSION_DENIED:I = 0x8

.field public static final MILINK_OPEN_RET_CODE_REFUSED:I = 0x3

.field private static final MSG_CHECK_SESSION_TIMER:I = 0x14

.field private static final MSG_TYPE_APP_NOT_INIT:I = 0x1a

.field private static final MSG_TYPE_CLIENT_ACTION_EVENT:I = 0x5

.field private static final MSG_TYPE_GET_SERVICE_TOKEN:I = 0x17

.field private static final MSG_TYPE_LOGIN_RETRY:I = 0x18

.field private static final MSG_TYPE_RELEASE_WAKE_LOCK:I = 0x16

.field private static final MSG_TYPE_SEND_MSG:I = 0x19

.field private static final MSG_TYPE_SERVER_NOTIFICATON_EVENT:I = 0x4

.field private static final MSG_TYPE_SESSION_EVENT:I = 0x1

.field private static final MSG_TYPE_SESSION_LOGIN_EVENT:I = 0x2

.field private static final MSG_TYPE_SESSION_OTHER_EVENT:I = 0x3

.field private static final MSG_TYPE_SYSTEM_NOTIFICATION_EVENT:I = 0x6

.field private static final NOLOGIN_SESSION_STATE:I = 0x0

.field private static final NO_SESSION_STATE:I = 0x0

.field private static final OPEN_SESSION_TRY_TIMES:I = 0x5

.field private static final SESSION_RECONNECT_TIMES:I = 0x2

.field private static final SINGLE_SESSION_STATE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SessionManager"

.field private static final TRING_SESSION_STATE:I = 0x1

.field private static sInstance:Lcom/mi/milink/sdk/session/persistent/SessionManager;


# instance fields
.field channelIdleReset:Ljava/lang/Runnable;

.field private mAllowAssitSessionWork:Z

.field private mAppInited:Z

.field private mAssistSession:Lcom/mi/milink/sdk/session/persistent/Session;

.field private mAssistSessionState:I

.field private mCheckTimeOutTimerOpen:Z

.field private mConnectionBuildTimestamp:J

.field private mEnableConnectionManualMode:Z

.field mGlobalPushFlag:Z

.field private mInternalAutoOpenRunnable:Ljava/lang/Runnable;

.field mLastUploadTime:J

.field mLastUserSendDataTime:J

.field private mLock:Ljava/lang/Object;

.field private mLoginState:I

.field private mLoginTryTimes:I

.field private mLogoffRunnable:Ljava/lang/Runnable;

.field private mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

.field private mNetworkDetailInfoOnOpen:Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;

.field private mNetworkReveiver:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

.field private mOpenSessionTryTimes:I

.field private mOpenStartTime:J

.field private mReportLock:Ljava/lang/Object;

.field private mScreenOnReveiver:Lcom/mi/milink/sdk/session/persistent/SessionManager$ScreenOnChangeReceiver;

.field private final mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/mi/milink/sdk/session/common/Request;",
            ">;"
        }
    .end annotation
.end field

.field private mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

.field private final mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/session/persistent/Session;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionReconnectTryTimes:I

.field private mState:I

.field private mTryStopTimerRunnable:Ljava/lang/Runnable;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private threadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method private constructor <init>()V
    .locals 14

    const/4 v2, 0x1

    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v0, "SessionManager"

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/base/CustomHandlerThread;-><init>(Ljava/lang/String;)V

    iput-boolean v9, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mCheckTimeOutTimerOpen:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    iput-boolean v9, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAllowAssitSessionWork:Z

    iput-object v10, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    iput-object v10, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v10, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mNetworkReveiver:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    iput-object v10, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mScreenOnReveiver:Lcom/mi/milink/sdk/session/persistent/SessionManager$ScreenOnChangeReceiver;

    iput-object v10, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLock:Ljava/lang/Object;

    iput-boolean v9, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mEnableConnectionManualMode:Z

    iput v9, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    iput v9, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLoginState:I

    iput v9, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSessionState:I

    iput v9, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mOpenSessionTryTimes:I

    iput v9, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionReconnectTryTimes:I

    iput v9, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLoginTryTimes:I

    iput-boolean v9, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAppInited:Z

    iput-wide v12, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mOpenStartTime:J

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v0, 0x3

    invoke-direct {v7, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$1;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager$1;-><init>(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->channelIdleReset:Ljava/lang/Runnable;

    iput-wide v12, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLastUploadTime:J

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$2;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager$2;-><init>(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$3;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager$3;-><init>(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mTryStopTimerRunnable:Ljava/lang/Runnable;

    iput-wide v12, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mConnectionBuildTimestamp:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mReportLock:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLastUserSendDataTime:J

    iput-boolean v9, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mGlobalPushFlag:Z

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$6;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager$6;-><init>(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLogoffRunnable:Ljava/lang/Runnable;

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SessionManager created, milinkversion="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMiLinkVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMiLinkSubVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    invoke-static {}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milink/sdk/debug/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->start()V

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    invoke-direct {p0, v9}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setState(I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    invoke-direct {v0, p0, v10}, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;-><init>(Lcom/mi/milink/sdk/session/persistent/SessionManager;Lcom/mi/milink/sdk/session/persistent/SessionManager$1;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mNetworkReveiver:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$ScreenOnChangeReceiver;

    invoke-direct {v0, p0, v10}, Lcom/mi/milink/sdk/session/persistent/SessionManager$ScreenOnChangeReceiver;-><init>(Lcom/mi/milink/sdk/session/persistent/SessionManager;Lcom/mi/milink/sdk/session/persistent/SessionManager$1;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mScreenOnReveiver:Lcom/mi/milink/sdk/session/persistent/SessionManager$ScreenOnChangeReceiver;

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mNetworkReveiver:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;->setCurrentNetworkInfo()V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mNetworkReveiver:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/base/Global;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mScreenOnReveiver:Lcom/mi/milink/sdk/session/persistent/SessionManager$ScreenOnChangeReceiver;

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/base/Global;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->appHasLogined()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/connection/DomainManager;->getInstance()Lcom/mi/milink/sdk/connection/DomainManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/connection/DomainManager;->startResolve(Ljava/lang/String;)V

    :cond_0
    const-string v0, "SessionManager"

    const-string v1, "SessionManager created finish"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private abandonAllSession()V
    .locals 5

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/persistent/Session;

    iget v2, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    iput v2, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, "SessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "abandon all session, ip="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", protocol="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",No="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getSessionNO()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "SessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "abandon all session, s.getServerProfile()=null, sessionNO="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getSessionNO()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method static synthetic access$1000(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->stopTimer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->internalClose()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mNetworkDetailInfoOnOpen:Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mReportLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Lcom/mi/milink/sdk/session/persistent/Session;
    .locals 1

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getSession()Lcom/mi/milink/sdk/session/persistent/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mi/milink/sdk/session/persistent/SessionManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setState(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->resetAllTryTimes()V

    return-void
.end method

.method static synthetic access$1900(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAllowAssitSessionWork:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mi/milink/sdk/session/persistent/SessionManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAllowAssitSessionWork:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mi/milink/sdk/session/persistent/SessionManager;)I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mOpenSessionTryTimes:I

    return v0
.end method

.method static synthetic access$308(Lcom/mi/milink/sdk/session/persistent/SessionManager;)I
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mOpenSessionTryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mOpenSessionTryTimes:I

    return v0
.end method

.method static synthetic access$400(Lcom/mi/milink/sdk/session/persistent/SessionManager;)I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    return v0
.end method

.method static synthetic access$500(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->internalOpen()V

    return-void
.end method

.method static synthetic access$600(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mCheckTimeOutTimerOpen:Z

    return v0
.end method

.method static synthetic access$700(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Lcom/mi/milink/sdk/session/persistent/Session;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Lcom/mi/milink/sdk/session/persistent/Session;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSession:Lcom/mi/milink/sdk/session/persistent/Session;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionList:Ljava/util/List;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->acquireWakeLock(I)V

    return-void
.end method

.method private acquireWakeLock(I)V
    .locals 5

    const/16 v4, 0x16

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    const-string v2, "SessionManager"

    const-string v3, "Wakelock ACQUIRED :)"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "milink"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "SessionManager"

    const-string v3, "acquireWakeLock exception"

    invoke-static {v2, v3, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private closeAllBandonSession()V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/persistent/Session;

    iget v3, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->close()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getAssistSession()Lcom/mi/milink/sdk/session/persistent/Session;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSessionState:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSession:Lcom/mi/milink/sdk/session/persistent/Session;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;
    .locals 2

    const-class v1, Lcom/mi/milink/sdk/session/persistent/SessionManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-direct {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    :cond_0
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/SessionManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNextServerProfile(Lcom/mi/milink/sdk/session/persistent/Session;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v0, 0x0

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNextServerProfile "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "[Session No:%d] "

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/persistent/Session;->getSessionNO()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/mi/milink/sdk/session/common/IServerManager;->getNext(Lcom/mi/milink/sdk/session/common/ServerProfile;I)[Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "SessionManager"

    const-string v2, "newServerProfile == null"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    iput v1, p1, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/persistent/Session;->close()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->isHaveTryingSession()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SessionManager"

    const-string v2, "already no trying session"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setState(I)V

    const/16 v0, 0x204

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mOpenStartTime:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->onOpenSessionResult(IJ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "SessionManager"

    const-string v1, "this session is trying session but masterSession is not null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    if-eqz v2, :cond_4

    if-nez v0, :cond_5

    iput v6, p1, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Lcom/mi/milink/sdk/session/persistent/Session;->openSession(Lcom/mi/milink/sdk/session/common/ServerProfile;)Z

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance v2, Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {v2}, Lcom/mi/milink/sdk/session/persistent/Session;-><init>()V

    iput v6, v2, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/session/persistent/Session;->openSession(Lcom/mi/milink/sdk/session/common/ServerProfile;)Z

    goto :goto_2
.end method

.method private getSession()Lcom/mi/milink/sdk/session/persistent/Session;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private internalAssistSessionOpen()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SessionManager"

    const-string v1, "can not open session, network is not available."

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->appHasLogined()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SessionManager"

    const-string v1, "app not login internalOpen cancel"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    const-string v0, "SessionManager"

    const-string v1, "can not open session, mHandler == null."

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "open assistsession, internalAssistSessionOpen with mState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSessionState:I

    if-eqz v0, :cond_3

    const-string v0, "SessionManager"

    const-string v1, "mAssistSessionState is not No_Sesssion state,cancel link"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v3}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setAssistSessionState(I)V

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {v0, v3}, Lcom/mi/milink/sdk/session/persistent/Session;-><init>(I)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSession:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSession:Lcom/mi/milink/sdk/session/persistent/Session;

    iput v3, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfileForStatistic()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    invoke-virtual {v0, v3}, Lcom/mi/milink/sdk/session/common/IServerManager;->reset(Z)[Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :cond_4
    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->openSession(Lcom/mi/milink/sdk/session/common/ServerProfile;)Z

    goto :goto_0
.end method

.method private internalClose()V
    .locals 2

    const-string v0, "SessionManager"

    const-string v1, "internalClose"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setState(I)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->stopTimer()V

    return-void
.end method

.method private internalManualOpen()V
    .locals 3

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "internalManualOpen,mState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->resetAllTryTimes()V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mEnableConnectionManualMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/ManualServerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    :goto_0
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->internalOpen()V

    return-void

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    goto :goto_0
.end method

.method private internalOpen()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "SessionManager"

    const-string v1, "can not open session, network is not available."

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->appHasLogined()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "SessionManager"

    const-string v1, "app not login internalOpen cancel"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    const-string v0, "SessionManager"

    const-string v1, "can not open session, mHandler == null."

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "open session, internalOpen with mState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    if-eqz v1, :cond_3

    const-string v0, "SessionManager"

    const-string v1, "mState is not No_Sesssion state,cancel paoma"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mOpenStartTime:J

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/session/common/IServerManager;->reset(Z)[Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    if-eqz v1, :cond_4

    array-length v2, v1

    if-nez v2, :cond_5

    :cond_4
    const-string v0, "SessionManager"

    const-string v1, "serverProfileList is null ,internalOpne cancel"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "SessionManager"

    const-string v3, "internalOpen 4"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setState(I)V

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_7

    aget-object v2, v1, v0

    if-eqz v2, :cond_6

    new-instance v2, Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {v2}, Lcom/mi/milink/sdk/session/persistent/Session;-><init>()V

    iput v4, v2, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/session/persistent/Session;->openSession(Lcom/mi/milink/sdk/session/common/ServerProfile;)Z

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/mi/milink/sdk/base/os/Device$Network;->getCurrentNetworkDetailInfo()Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mNetworkDetailInfoOnOpen:Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;

    goto/16 :goto_0
.end method

.method private isAbandonSession(Lcom/mi/milink/sdk/session/persistent/Session;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v2, p1, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_0
    const-string v2, "SessionManager"

    const-string v3, "Session No:%d is AbandonSession return "

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/persistent/Session;->getSessionNO()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/persistent/Session;->close()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method private isAllSessionErrorCode(I)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, p1, :cond_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isHaveTryingSession()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/persistent/Session;

    iget v0, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMultiUnavailable()Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x6f

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x65

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x71

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_1

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v4, -0x80000000

    const/4 v3, 0x2

    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ClientActionEvent$EventType:[I

    iget-object v1, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "SessionManager"

    const-string v1, "ClientActionEvent ClientNotSameUserLogin"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->internalClose()V

    goto :goto_0

    :pswitch_1
    const-string v0, "SessionManager"

    const-string v1, "ClientActionEvent ClientRequestCheckConnection"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->tryConnectIfNeed()Z

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    if-ne v0, v3, :cond_1

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;->SessionStateChange:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;

    invoke-direct {v1, v2, v4, v3}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLoginState:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;->LoginStateChange:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;

    invoke-direct {v1, v2, v4, v3}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "SessionManager"

    const-string v1, "ClientActionEvent ClientRequestLogin"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UserAction"

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->login(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "SessionManager"

    const-string v1, "ClientActionEvent ClientRequestLogoff"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->logoff()V

    goto :goto_0

    :pswitch_4
    const-string v0, "SessionManager"

    const-string v1, "ClientActionEvent ClientForceOpen"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setState(I)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->resetAllTryTimes()V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->acquireWakeLock()V

    const-string v0, "ClientForceOpen"

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->login(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string v0, "SessionManager"

    const-string v1, "ClientActionEvent ClientSuspectBadConnection"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    if-ne v0, v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mConnectionBuildTimestamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-direct {p0, v5}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setState(I)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->resetAllTryTimes()V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->acquireWakeLock()V

    const-string v0, "ClientSuspectBadConnection"

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->login(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private processEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ServerNotificationEvent$EventType:[I

    iget-object v1, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "SessionManager"

    const-string v1, "ServerNotificationEvent ServerLineBroken"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setState(I)V

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->internalOpen()V

    goto :goto_0

    :cond_1
    const-string v0, "SessionManager"

    const-string v1, "on server line broken network isAvailable = false"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "SessionManager"

    const-string v1, "ServerNotificationEvent B2tokenExpired"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->logoffMiLink()V

    const-string v0, "B2_TOKEN_EXPIRED"

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->login(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "SessionManager"

    const-string v1, "ServerNotificationEvent ChannelPubKeyUpdate"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->getPubInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->getKeyId()I

    move-result v3

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->getPublicKey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/mi/milink/sdk/account/AnonymousAccount;->getInstance()Lcom/mi/milink/sdk/account/AnonymousAccount;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/account/AnonymousAccount;->setChannelPubKey(Ljava/util/Map;)V

    const-string v0, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " onUpdateChannelPubKey update  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pubkey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getSession()Lcom/mi/milink/sdk/session/persistent/Session;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const-string v0, "SessionManager"

    const-string v1, "login session is not available."

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->fastLogin()V

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "SessionManager"

    const-string v1, "ServerNotificationEvent ServiceTokenExpired"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLogoffRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;->ServiceTokenExpired:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "SessionManager"

    const-string v1, "ServerNotificationEvent ShouldUpdate"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;->ShouldUpdate:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "SessionManager"

    const-string v1, "ServerNotificationEvent KickByServer"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLogoffRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;->KickByServer:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;

    iget-object v3, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;->mObject:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_6
    :try_start_1
    iget-object v0, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->uploadMilinkLog(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;Lcom/mi/milink/sdk/account/IAccount;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    const-string v1, "SessionManager"

    const-string v2, "requireChannelLogLevel."

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;->hasLoglevel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataLoglevel;->newBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataLoglevel$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;->getLoglevel()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataLoglevel$Builder;->setLoglevel(I)Lcom/mi/milink/sdk/proto/DataExtraProto$DataLoglevel$Builder;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;->getTimeLong()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataLoglevel$Builder;->setTimeLong(I)Lcom/mi/milink/sdk/proto/DataExtraProto$DataLoglevel$Builder;

    new-instance v2, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v2}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    const-string v3, "data.loglevel"

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataLoglevel$Builder;->build()Lcom/mi/milink/sdk/proto/DataExtraProto$DataLoglevel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataLoglevel;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->getInstance()Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->dispatchPacket(Lcom/mi/milink/sdk/aidl/PacketData;)V

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notify app to change log level.level="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;->getLoglevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;->getTimeLong()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private processEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;)V
    .locals 10

    const/4 v4, 0x3

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    iget v1, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;->mRetCode:I

    sget-object v2, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionConnectEvent$EventType:[I

    iget-object v3, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;

    invoke-virtual {v3}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v2, "SessionManager"

    const-string v3, "SessionConnectEvent SessionBuildFailed"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getRecentlyServerData()Lcom/mi/milink/sdk/session/common/RecentlyServerData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/session/common/RecentlyServerData;->getRecentlyServer()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    move-result-object v2

    new-instance v3, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v4, "0.0.0.0"

    invoke-direct {v3, v4, v6, v6, v6}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->setRecentlyServer(Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    :cond_1
    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mReportLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mReportLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfileForStatistic()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v2

    const-string v3, "SessionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SessionBuildFailed ServerProfile "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    const-string v3, "%s:%s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->isAbandonSession(Lcom/mi/milink/sdk/session/persistent/Session;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MSG_TYPE_OPEN_SESSION_FAIL errCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    if-ne v2, v9, :cond_3

    const-string v1, "SessionManager"

    const-string v2, "handleMessage MSG_TYPE_OPEN_SESSION_FAIL is mMasterSession No:%d, mState = %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getSessionNO()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setState(I)V

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    iget v2, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    if-ne v2, v7, :cond_4

    const-string v2, "SessionManager"

    const-string v3, "handleMessage MSG_TYPE_OPEN_SESSION_FAIL is isTryingSession No:%d, mState = %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getSessionNO()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget v5, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getNextServerProfile(Lcom/mi/milink/sdk/session/persistent/Session;I)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleMessage MSG_TYPE_OPEN_SESSION_FAIL is unknown session No:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getSessionNO()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->close()Z

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "SessionManager"

    const-string v2, "SessionConnectEvent SessionBuildSuccess"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->isAbandonSession(Lcom/mi/milink/sdk/session/persistent/Session;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleMessage OPEN_SESSION_SUCCESS No:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getSessionNO()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    if-eq v1, v7, :cond_5

    iget v1, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    if-ne v1, v9, :cond_6

    :cond_5
    const-string v1, "SessionManager"

    const-string v2, "update session"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->updateSession(Lcom/mi/milink/sdk/session/persistent/Session;)Z

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mReportLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mReportLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_6
    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->close()Z

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleMessage OPEN_SESSION_SUCCESS is unknown session No:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getSessionNO()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v2, "SessionManager"

    const-string v3, "SessionConnectEvent SessionRunError"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->isAbandonSession(Lcom/mi/milink/sdk/session/persistent/Session;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SessionManager"

    const-string v3, "handleMessage SESSION_ERROR reason = %d, No:%d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getSessionNO()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setState(I)V

    const/16 v2, 0x232

    if-eq v1, v2, :cond_0

    const/16 v2, 0x68

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "SessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " SESSION_ERROR mSessionReconnectTimes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionReconnectTryTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOpenSessionTryTimes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mOpenSessionTryTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionReconnectTryTimes:I

    if-ge v2, v8, :cond_7

    new-instance v2, Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {v2}, Lcom/mi/milink/sdk/session/persistent/Session;-><init>()V

    iput v7, v2, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v7}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setState(I)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfileForStatistic()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->openSession(Lcom/mi/milink/sdk/session/common/ServerProfile;)Z

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionReconnectTryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionReconnectTryTimes:I

    :goto_1
    invoke-static {}, Lcom/mi/milink/sdk/config/HeartBeatManager;->getInstance()Lcom/mi/milink/sdk/config/HeartBeatManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/config/HeartBeatManager;->reciveConnectRunError(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_8
    const-string v0, "SessionManager"

    const-string v1, "on seesion error network isAvailable = false"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "SessionManager"

    const-string v2, "SessionConnectEvent AssistSessionConnectSuccess"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput v9, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    const-string v1, "SessionManager"

    const-string v2, "updateSession in no session or tring session"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSession:Lcom/mi/milink/sdk/session/persistent/Session;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSession:Lcom/mi/milink/sdk/session/persistent/Session;

    if-eq v1, v0, :cond_9

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/persistent/Session;->close()Z

    :cond_9
    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {p0, v8}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setAssistSessionState(I)V

    goto/16 :goto_0

    :pswitch_4
    const-string v1, "SessionManager"

    const-string v2, "SessionConnectEvent AssistSessionConnectFailed"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    invoke-direct {p0, v6}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setAssistSessionState(I)V

    goto/16 :goto_0

    :pswitch_5
    const-string v1, "SessionManager"

    const-string v2, "SessionConnectEvent AssistSessionRunError"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    invoke-direct {p0, v6}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setAssistSessionState(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private processEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;)V
    .locals 7

    const/16 v6, 0x18

    const/4 v5, 0x2

    const/high16 v4, -0x80000000

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->isAbandonSession(Lcom/mi/milink/sdk/session/persistent/Session;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionLoginEvent$EventType:[I

    iget-object v1, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "SessionManager"

    const-string v1, "SessionLoginEvent LoginFailed"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->setIsLogining(Z)V

    iput v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLoginState:I

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;->LoginStateChange:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;

    invoke-direct {v1, v2, v4, v3}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    const-string v0, "SessionManager"

    const-string v1, "SessionLoginEvent LoginSuccess"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->setIsLogining(Z)V

    iput v5, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLoginState:I

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->sendCacheRequest()Z

    const-string v0, "SessionManager"

    const-string v1, "onLoginResult loginState=2"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;->LoginStateChange:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;

    invoke-direct {v1, v2, v4, v5}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "SessionManager"

    const-string v1, "SessionLoginEvent LogoffCmdReturn"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLogoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLogoffRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;)V
    .locals 3

    iget-object v0, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->isAbandonSession(Lcom/mi/milink/sdk/session/persistent/Session;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionOtherEvent$EventType:[I

    iget-object v2, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "SessionManager"

    const-string v1, "SessionOtherEvent RecvInvalidPacket"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;->RecvInvalidPacket:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "SessionManager"

    const-string v1, "SessionOtherEvent RequestMapIsEmpty"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mCheckTimeOutTimerOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mTryStopTimerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :pswitch_2
    const-string v0, "SessionManager"

    const-string v1, "SessionOtherEvent RequestMapIsNotEmpty"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mCheckTimeOutTimerOpen:Z

    if-nez v0, :cond_0

    const-string v0, "SessionManager"

    const-string v1, "mCheckTimeOutTimerOpen=false,startTimer"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->startTimer()V

    goto :goto_0

    :pswitch_3
    const-string v1, "SessionManager"

    const-string v2, "SessionOtherEvent StatisticsTimeoutPacket"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->postStatisticsTimeoutPacketAction()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent;)V
    .locals 4

    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SystemNotificationEvent$EventType:[I

    iget-object v1, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->closeAllBandonSession()V

    invoke-static {}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->onAlarmArrive()V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isMediumConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLastUserSendDataTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-string v0, "SessionManager"

    const-string v1, "medium connection mode,user not send any packet in 10 min,close connection"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->internalClose()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->appHasLogined()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SessionManager"

    const-string v1, "onAlarmArrived, app not login"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SystemNotificationEvent onAlarmArrived mState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sendCacheRequest size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->resetAllTryTimes()V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->acquireWakeLock()V

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "session manager state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getSession()Lcom/mi/milink/sdk/session/persistent/Session;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->tryConnectIfNeed()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SessionManager"

    const-string v2, "send heart beat to session"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    const-string v0, "SessionManager"

    const-string v1, "session is not available."

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/persistent/Session;->heartBeat(Z)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "SessionManager"

    const-string v1, "SystemNotificationEvent screen_on"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->appHasLogined()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "SessionManager"

    const-string v1, "screen_on, app not login"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isMediumConnection()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->tryConnectIfNeed()Z

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "SessionManager"

    const-string v1, "SystemNotificationEvent NetWorkChange"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->acquireWakeLock()V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->tryConnectIfNeed()Z

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "SessionManager"

    const-string v1, "SystemNotificationEvent ServiceCreated"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAppInited:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->acquireWakeLock()V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->tryConnectIfNeed()Z

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;->GetServiceToken:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private releaseWakeLock()V
    .locals 4

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const-string v0, "SessionManager"

    const-string v2, "Wakelock RELEASED :)"

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const-string v2, "SessionManager"

    const-string v3, "releaseWakeLock exception"

    invoke-static {v2, v3, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private resetAllTryTimes()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mOpenSessionTryTimes:I

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionReconnectTryTimes:I

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLoginTryTimes:I

    return-void
.end method

.method private sendCacheRequest()Z
    .locals 4

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getSession()Lcom/mi/milink/sdk/session/persistent/Session;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "SessionManager"

    const-string v1, "sendCacheRequest session == null impossible!!!"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendCacheRequest size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/Request;

    if-nez v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setAssistSessionState(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setAssistSessionState mAssistSessionState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSessionState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSessionState:I

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSession:Lcom/mi/milink/sdk/session/persistent/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSession:Lcom/mi/milink/sdk/session/persistent/Session;

    const/4 v1, 0x3

    iput v1, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->close()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAssistSession:Lcom/mi/milink/sdk/session/persistent/Session;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private setState(I)V
    .locals 5

    const/4 v3, 0x3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setState mState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",newState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSessionList.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    iput p1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    iget v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    if-eq v1, v0, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;->SessionStateChange:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;

    iget v4, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    invoke-direct {v2, v3, v0, v4}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;II)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/persistent/Session;

    iput v3, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->closeAllBandonSession()V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    iput v3, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->close()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    :cond_2
    iput v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLoginState:I

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->setIsLogining(Z)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->closeAllBandonSession()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mConnectionBuildTimestamp:J

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private startTimer()V
    .locals 4

    const/16 v1, 0x14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mCheckTimeOutTimerOpen:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopTimer()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mCheckTimeOutTimerOpen:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private updateSession(Lcom/mi/milink/sdk/session/persistent/Session;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v2, "SessionManager"

    const-string v3, "update session function."

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    iput v2, p1, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->abandonAllSession()V

    :cond_1
    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/session/common/IServerManager;->save(Lcom/mi/milink/sdk/session/common/ServerProfile;)Z

    :cond_2
    const-string v2, "SessionManager"

    const-string v3, "updateSession in no session or tring session"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    if-eq v2, p1, :cond_3

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/persistent/Session;->close()Z

    :cond_3
    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {p0, v8}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setState(I)V

    const-string v2, "SessionManager"

    const-string v3, "connected, start milink login"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->setIsLogining(Z)V

    const-string v2, "updateSession"

    invoke-virtual {p0, v2}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->login(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mOpenStartTime:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->onOpenSessionResult(IJ)V

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/persistent/Session;->getOpenSessionSucessReturnInfo()Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;->getClientIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;->getClientIsp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;->getBackupServerList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;->getOptmumServerList()Ljava/util/ArrayList;

    move-result-object v2

    const-string v6, "SessionManager"

    const-string v7, "clientip:%s clientIsp;%s"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v0

    aput-object v4, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3}, Lcom/mi/milink/sdk/base/Global;->setClientIp(Ljava/lang/String;)V

    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v4}, Lcom/mi/milink/sdk/base/Global;->setClientIsp(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientIsp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->setOptmumServerList(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->setBackupServerList(Ljava/util/List;)V

    :goto_1
    move v0, v1

    goto/16 :goto_0

    :cond_6
    const-string v0, "SessionManager"

    const-string v2, "info is null"

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public close()Z
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mi/milink/sdk/session/persistent/SessionManager$4;

    invoke-direct {v1, p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager$4;-><init>(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public enableConnectionManualMode(Z)Z
    .locals 4

    const/4 v3, 0x1

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enableConnectionManualMode, enable="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mEnableConnectionManualMode:Z

    if-ne p1, v0, :cond_0

    :goto_0
    return v3

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/ManualServerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    :goto_1
    iput-boolean p1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mEnableConnectionManualMode:Z

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->close()Z

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientForceOpen:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    goto :goto_1
.end method

.method public getGlobalPushFlag()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mGlobalPushFlag:Z

    return v0
.end method

.method public getSessionState()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    return v0
.end method

.method public initApp()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAppInited:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLogoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->resetAllTryTimes()V

    return-void
.end method

.method public isMiLinkLogined()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLoginState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimerOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mCheckTimeOutTimerOpen:Z

    return v0
.end method

.method public login(Ljava/lang/String;)V
    .locals 4

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "login from="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isLogining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->isLogining()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appHasLogined="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->appHasLogined()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAppInited="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAppInited:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLogoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->isLogining()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SessionManager"

    const-string v1, "milink is logining"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->appHasLogined()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SessionManager"

    const-string v1, "app not login, cancel milink login"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAppInited:Z

    if-nez v0, :cond_3

    const-string v0, "SessionManager"

    const-string v1, "app not init"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_3
    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->internalManualOpen()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "milink login, session manager state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getSession()Lcom/mi/milink/sdk/session/persistent/Session;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_5
    const-string v0, "SessionManager"

    const-string v1, "login session is not available."

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLoginTryTimes:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_7

    iget v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLoginTryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLoginTryTimes:I

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "milink login start, mLoginTryTimes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLoginTryTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->fastLogin()V

    goto/16 :goto_0

    :cond_7
    const-string v0, "SessionManager"

    const-string v1, "milink login has exceeded max times"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public logoff()V
    .locals 4

    const-string v0, "SessionManager"

    const-string v1, "milink logoff"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->doPostDataAtOnce()V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->logoff()V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLogoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLogoffRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLogoffRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/session/persistent/SessionManager$7;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$ChannelStatusChangeEvent$EventType:[I

    iget-object v1, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAllowAssitSessionWork:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->channelIdleReset:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->channelIdleReset:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAllowAssitSessionWork:Z

    if-eqz v0, :cond_0

    const-string v0, "SessionManager"

    const-string v1, "mode change,mAllowAssitSessionWork==false"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAllowAssitSessionWork:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->channelIdleReset:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onOpenSessionResult(IJ)V
    .locals 18

    const-string v4, "SessionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onOpenSessionResult, errorCode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->stopTimer()V

    invoke-direct/range {p0 .. p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->isMultiUnavailable()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SessionManager"

    const-string v5, "statistic milink.open, code=7"

    invoke-static {v4, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "milink.open"

    const/4 v9, 0x7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v16}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x6

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    const/4 v4, 0x6

    new-array v9, v4, [I

    fill-array-data v9, :array_1

    const/4 v4, 0x0

    :goto_1
    const/4 v6, 0x6

    if-ge v4, v6, :cond_3

    const/4 v6, 0x6

    if-ge v4, v6, :cond_3

    aget v6, v5, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->isAllSessionErrorCode(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v5, "SessionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "statistic milink.open, code="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v7, v9, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "milink.open"

    aget v9, v9, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v16}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/mi/milink/sdk/session/persistent/SessionManager$5;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v5, v0, v1, v2}, Lcom/mi/milink/sdk/session/persistent/SessionManager$5;-><init>(Lcom/mi/milink/sdk/session/persistent/SessionManager;J)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_2
    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    const-string v4, "SessionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onOpenSessionResult reconnect times:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mOpenSessionTryTimes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v4, "SessionManager"

    const-string v5, "check isInternetAvailable, but network is unavailable"

    invoke-static {v4, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    if-eqz v4, :cond_0

    const-string v4, "SessionManager"

    const-string v5, "mMasterSession = [Session No:%d] "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v8}, Lcom/mi/milink/sdk/session/persistent/Session;->getSessionNO()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerPort()I

    move-result v7

    const-string v8, "milink.open"

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v16}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    goto/16 :goto_0

    :array_0
    .array-data 4
        0xd
        0x6e
        0x71
        0x6f
        0x65
        0x232
    .end array-data

    :array_1
    .array-data 4
        0x8
        0x6
        0x2
        0x3
        0x5
        0x9
    .end array-data
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 13

    const-wide/32 v10, 0x493e0

    const-wide/16 v8, 0x1770

    const/16 v6, 0x215

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->processEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->processEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->processEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->processEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->processEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->processEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent;)V

    goto :goto_0

    :pswitch_7
    const-string v0, "SessionManager"

    const-string v1, "MSG_CHECK_SESSION_TIMER"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getSession()Lcom/mi/milink/sdk/session/persistent/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->checkRequestsTimeout()Z

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/persistent/Session;

    iget v2, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->checkRequestsTimeout()Z

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAllowAssitSessionWork:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getAssistSession()Lcom/mi/milink/sdk/session/persistent/Session;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->checkRequestsTimeout()Z

    :cond_3
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_8
    const-string v0, "SessionManager"

    const-string v1, "release wake lock"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->releaseWakeLock()V

    goto :goto_0

    :pswitch_9
    const-string v0, "LOGIN_RETRY"

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->login(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "SessionManager"

    const-string v1, "MSG_TYPE_GET_SERVICE_TOKEN,no service token, call app onEventGetServiceToken"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;->GetServiceToken:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "SessionManager"

    const-string v1, "MSG_TYPE_APP_NOT_INIT,app not init, call app init by onEventGetServiceToken"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;->GetServiceToken:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/session/common/Request;

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "abandon package,network not available state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/mi/milink/sdk/session/common/Request;->onDataSendFailed(ILjava/lang/String;)Z

    goto/16 :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mAllowAssitSessionWork:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getAssistSession()Lcom/mi/milink/sdk/session/persistent/Session;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/persistent/Session;->isConnected()Z

    move-result v2

    if-nez v2, :cond_a

    :cond_5
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->internalAssistSessionOpen()V

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getSession()Lcom/mi/milink/sdk/session/persistent/Session;

    move-result-object v1

    const-string v2, "SessionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send data, session manager state: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_7

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/mi/milink/sdk/session/persistent/Session;->isDeadConnection(JJ)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "SessionManager"

    const-string v2, "session isDeadConnection=true"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setState(I)V

    const/4 v1, 0x0

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/persistent/Session;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_d

    :cond_8
    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->requestShouldCached()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "push request in cache, seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    const-string v0, "handleRequest"

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->login(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v2, "SessionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send data to assistsession, seq="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/mi/milink/sdk/session/persistent/Session;->isDeadConnection(JJ)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v1, "SessionManager"

    const-string v2, "assistsession isDeadConnection=true"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setAssistSessionState(I)V

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    goto/16 :goto_0

    :cond_c
    const-string v1, "SessionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "abandon data because session is not available, seq="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "abandon package,session is not available state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/mi/milink/sdk/session/common/Request;->onDataSendFailed(ILjava/lang/String;)Z

    invoke-static {}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getCreatedTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSize()I

    move-result v10

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v12

    move v11, v3

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    goto/16 :goto_3

    :cond_d
    const-string v2, "SessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send data to session, seq="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public sendData(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/session/common/ResponseListener;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SessionManager"

    const-string v1, "send data ,cmd can not be null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->appHasLogined()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SessionManager"

    const-string v1, "send data ,appHasLogined=false,request get st"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLastUserSendDataTime:J

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getSequence()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setSeqNo(I)V

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send data cmd="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/milink/sdk/session/common/Request;

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getBusinessEncByMode()B

    move-result v1

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v2

    invoke-direct {v0, p1, p3, v1, v2}, Lcom/mi/milink/sdk/session/common/Request;-><init>(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/ResponseListener;BLcom/mi/milink/sdk/account/IAccount;)V

    invoke-virtual {v0, p2}, Lcom/mi/milink/sdk/session/common/Request;->setTimeOut(I)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setGlobalPushFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mGlobalPushFlag:Z

    return-void
.end method

.method public setIpAndPortInManualMode(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setIpAndPortInManualMode, ip="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/ManualServerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->setIp(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/ManualServerManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->setPort(I)V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mEnableConnectionManualMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mMasterSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerPort()I

    move-result v0

    if-ne v0, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->close()Z

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientForceOpen:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public suspectBadConnection()V
    .locals 3

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientSuspectBadConnection:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public tryConnectIfNeed()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->internalOpen()V

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    if-ne v2, v0, :cond_2

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mOpenStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mOpenStartTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2bf20

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-string v2, "SessionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tryConnectIfNeed, connect time too long="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mOpenStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mState:I

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->internalOpen()V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLoginState:I

    if-nez v2, :cond_3

    iput v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager;->mLoginTryTimes:I

    const-string v1, "tryConnectIfNeed"

    invoke-virtual {p0, v1}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->login(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
