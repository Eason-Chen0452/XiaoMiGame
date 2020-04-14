.class public Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;
.super Lcom/mi/milink/sdk/base/CustomHandlerThread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;
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

.field private static TAG_PRE:Ljava/lang/String; = null

.field private static final TRING_SESSION_STATE:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

.field private appId:I

.field private channelEventbus:Lorg/greenrobot/eventbus/EventBus;

.field private ipInfoManage:Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;

.field private isFirstFail:Z

.field private mAppInited:Z

.field private mCheckTimeOutTimerOpen:Z

.field private mClearConnRunnable:Ljava/lang/Runnable;

.field private mEnableConnectionManualMode:Z

.field private mInternalAutoOpenRunnable:Ljava/lang/Runnable;

.field mLastUserSendDataTime:J

.field private mLock:Ljava/lang/Object;

.field private mLoginState:I

.field private mLoginTryTimes:I

.field private mLogoffRunnable:Ljava/lang/Runnable;

.field private mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

.field private mNetworkDetailInfoOnOpen:Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;

.field private mNetworkReveiver:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;

.field private mOpenSessionTryTimes:I

.field private mOpenStartTime:J

.field private mReportLock:Ljava/lang/Object;

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

.field private mServerManagerBackup:Lcom/mi/milink/sdk/session/common/IServerManager;

.field private mServerManagerNormal:Lcom/mi/milink/sdk/session/common/IServerManager;

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
            "Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;",
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
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SessionManagerForSimpleChannel_"

    sput-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG_PRE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/eventbus/EventBus;Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;I)V
    .locals 11

    const/4 v2, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG_PRE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/base/CustomHandlerThread;-><init>(Ljava/lang/String;)V

    const-string v0, "SessionManagerForSimpleChannel_"

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    iput-boolean v9, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mCheckTimeOutTimerOpen:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    iput-object v10, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    iput-object v10, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mServerManagerNormal:Lcom/mi/milink/sdk/session/common/IServerManager;

    iput-object v10, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mServerManagerBackup:Lcom/mi/milink/sdk/session/common/IServerManager;

    iput-object v10, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object v10, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mNetworkReveiver:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;

    iput-object v10, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLock:Ljava/lang/Object;

    iput v9, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    iput v9, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLoginState:I

    iput-boolean v9, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mEnableConnectionManualMode:Z

    iput v9, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mOpenSessionTryTimes:I

    iput v9, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionReconnectTryTimes:I

    iput v9, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLoginTryTimes:I

    iput-boolean v9, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mAppInited:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mOpenStartTime:J

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

    iput-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$1;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$1;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$2;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$2;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mTryStopTimerRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mReportLock:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLastUserSendDataTime:J

    iput-boolean v9, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->isFirstFail:Z

    new-instance v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$6;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$6;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mClearConnRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$7;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$7;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLogoffRunnable:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    iput p3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->appId:I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SessionManagerForSimpleChannel created, milinkversion="

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

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milink/sdk/debug/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->start()V

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->channelEventbus:Lorg/greenrobot/eventbus/EventBus;

    iput-object p2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    new-instance v0, Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;

    invoke-direct {v0, p3}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;-><init>(I)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->ipInfoManage:Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;

    new-instance v0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkServerManagerForSimpleChannel;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->ipInfoManage:Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;

    invoke-direct {v0, v1}, Lcom/mi/milink/sdk/session/simplechannel/MiLinkServerManagerForSimpleChannel;-><init>(Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mServerManagerNormal:Lcom/mi/milink/sdk/session/common/IServerManager;

    new-instance v0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->ipInfoManage:Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;

    invoke-direct {v0, v1}, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;-><init>(Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mServerManagerBackup:Lcom/mi/milink/sdk/session/common/IServerManager;

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mServerManagerNormal:Lcom/mi/milink/sdk/session/common/IServerManager;

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    invoke-virtual {p0, v9}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->setState(I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;

    invoke-direct {v0, p0, v10}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$1;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mNetworkReveiver:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mNetworkReveiver:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->setCurrentNetworkInfo()V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mNetworkReveiver:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/base/Global;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mAppInited:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->ipInfoManage:Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/connection/DomainManager;->getInstance()Lcom/mi/milink/sdk/connection/DomainManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/connection/DomainManager;->startResolve(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "SessionManager created finish"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private abandonAllSession()V
    .locals 5

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    if-eqz v0, :cond_2

    iget v2, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x3

    iput v2, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "abandon all session, ip="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", port="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", protocol="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",No="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getSessionNO()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "abandon all session, s.getServerProfile()=null, sessionNO="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getSessionNO()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v2, "abandon all session, s =null "

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method static synthetic access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mNetworkDetailInfoOnOpen:Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mReportLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->appId:I

    return v0
.end method

.method static synthetic access$1300(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;
    .locals 1

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getSession()Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLoginState:I

    return v0
.end method

.method static synthetic access$1500(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mAppInited:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Lorg/greenrobot/eventbus/EventBus;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->channelEventbus:Lorg/greenrobot/eventbus/EventBus;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mOpenSessionTryTimes:I

    return v0
.end method

.method static synthetic access$2000(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->resetAllTryTimes()V

    return-void
.end method

.method static synthetic access$208(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)I
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mOpenSessionTryTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mOpenSessionTryTimes:I

    return v0
.end method

.method static synthetic access$300(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    return v0
.end method

.method static synthetic access$400(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->internalOpen()V

    return-void
.end method

.method static synthetic access$500(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mCheckTimeOutTimerOpen:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->stopTimer()V

    return-void
.end method

.method static synthetic access$900(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->internalClose()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->acquireWakeLock(I)V

    return-void
.end method

.method private acquireWakeLock(I)V
    .locals 5

    const/16 v4, 0x16

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

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

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mWakeLock:Landroid/os/PowerManager$WakeLock;

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

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

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

.method private addChannelPubKeyQueue(Lcom/mi/milink/sdk/session/common/Request;)V
    .locals 2

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v0

    const-string v1, "milink.channel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->addPacketInSendQueue(Lcom/mi/milink/sdk/session/common/Request;)V

    :cond_0
    return-void
.end method

.method private addClearConnRunnalbe()V
    .locals 4

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mClearConnRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mClearConnRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getKeepAliveTime()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "add clearrunnable ."

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getNextServerProfile(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;I)V
    .locals 10

    const/4 v0, 0x0

    const/4 v9, 0x1

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNextServerProfile "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "[Session No:%d] "

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getSessionNO()I

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

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/mi/milink/sdk/session/common/IServerManager;->getNext(Lcom/mi/milink/sdk/session/common/ServerProfile;I)[Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v2, "newServerProfile == null"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    iput v1, p1, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->close()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->isHaveTryingSession()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v2, "already no trying session"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->isFirstFail:Z

    if-nez v1, :cond_3

    iput-boolean v9, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->isFirstFail:Z

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v2, "session connect failed for first time. try to do dns resolve."

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/mi/milink/sdk/data/Const$ServerPort;->PORT_ARRAY:[I

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget v5, v3, v1

    new-instance v6, Lcom/mi/milink/sdk/session/common/ServerProfile;

    iget-object v7, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->ipInfoManage:Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;

    invoke-virtual {v7}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;->getDefaultServer()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-direct {v6, v7, v5, v9, v8}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v9}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->setState(I)V

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v3, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    iget v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->appId:I

    invoke-direct {v3, p0, v0, v4}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;I)V

    iput v9, v3, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v3, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->openSession(Lcom/mi/milink/sdk/session/common/ServerProfile;)Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "internalOpen thrid +"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->setState(I)V

    const/16 v0, 0x204

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mOpenStartTime:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->onOpenSessionResult(IJ)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "this session is trying session but masterSession is not null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_3
    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget-object v2, v1, v0

    if-eqz v2, :cond_7

    if-nez v0, :cond_8

    iput v9, p1, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->openSession(Lcom/mi/milink/sdk/session/common/ServerProfile;)Z

    :cond_7
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    new-instance v2, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    iget v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->appId:I

    invoke-direct {v2, p0, v3, v4}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;I)V

    iput v9, v2, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->openSession(Lcom/mi/milink/sdk/session/common/ServerProfile;)Z

    goto :goto_4
.end method

.method private getSession()Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private internalClose()V
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "internalClose"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->setState(I)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->stopTimer()V

    return-void
.end method

.method private internalManualOpen()V
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "internalManualOpen,mState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->resetAllTryTimes()V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->internalOpen()V

    return-void
.end method

.method private internalOpen()V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "can not open session, network is not available."

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "can not open session, mHandler == null."

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "open session, internalOpen with mState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "mState is not No_Sesssion state,cancel paoma"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v2, "internalOpen first"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mOpenStartTime:J

    invoke-static {}, Lcom/mi/milink/sdk/base/os/Device$Network;->getCurrentNetworkDetailInfo()Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mNetworkDetailInfoOnOpen:Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v2, "internalOpen first -0"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/session/common/IServerManager;->reset(Z)[Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mServerManagerNormal:Lcom/mi/milink/sdk/session/common/IServerManager;

    iput-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v3, "internalOpen first -1"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    array-length v2, v1

    if-nez v2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "serverProfileList is null ,internalOpne cancel"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v3, "internalOpen second"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->setState(I)V

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    if-eqz v2, :cond_6

    new-instance v2, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    iget v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->appId:I

    invoke-direct {v2, p0, v3, v4}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;I)V

    iput v5, v2, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->openSession(Lcom/mi/milink/sdk/session/common/ServerProfile;)Z

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "internalOpen thrid +"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isAbandonSession(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    iget v2, p1, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v3, "Session No:%d is AbandonSession return "

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getSessionNO()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->close()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isAllSessionErrorCode(I)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

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

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

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

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    iget v0, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

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

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

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

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

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

.method private processEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent;)V
    .locals 5

    const/high16 v4, -0x80000000

    const/4 v3, 0x2

    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$ClientActionEvent$EventType:[I

    iget-object v1, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "ClientActionEvent ClientRequestCheckConnection"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->tryConnectIfNeed()Z

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->channelEventbus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;->SessionStateChange:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;

    invoke-direct {v1, v2, v4, v3}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLoginState:I

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->channelEventbus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;->LoginStateChange:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;

    invoke-direct {v1, v2, v4, v3}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "ClientActionEvent ClientRequestLogin"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UserAction"

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->login(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "ClientActionEvent ClientRequestLogoff"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->logoff()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "ClientActionEvent ClientForceOpen"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->setState(I)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->resetAllTryTimes()V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->acquireWakeLock()V

    const-string v0, "ClientForceOpen"

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->login(Ljava/lang/String;)V

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

.method private processEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType:[I

    iget-object v1, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "ServerNotificationEvent B2tokenExpired"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->logoffMiLink()V

    const-string v0, "B2_TOKEN_EXPIRED"

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->login(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "ServerNotificationEvent ChannelPubKeyUpdate"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/session/simplechannel/UpdateChannelPubKeyValue;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/UpdateChannelPubKeyValue;->getChannelNewPubkey()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/UpdateChannelPubKeyValue;->getmRequeset()Lcom/mi/milink/sdk/session/common/Request;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->addChannelPubKeyQueue(Lcom/mi/milink/sdk/session/common/Request;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->getPubInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mi/milink/sdk/account/IAccount;->setChannelPubKey(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " onUpdateChannelPubKey update  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pubkey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getSession()Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "login session is not available."

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->fastLogin()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/session/common/Request;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->addChannelPubKeyQueue(Lcom/mi/milink/sdk/session/common/Request;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->DelChannelPubKey()V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getSession()Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "login session is not available."

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->fastLogin()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "ServerNotificationEvent ServerLineBroken"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->setState(I)V

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mServerManagerBackup:Lcom/mi/milink/sdk/session/common/IServerManager;

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->internalOpen()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "on server line broken network isAvailable = false"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;)V
    .locals 9

    const/4 v5, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;->mSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    iget v1, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;->mRetCode:I

    sget-object v2, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionConnectEvent$EventType:[I

    iget-object v3, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;

    invoke-virtual {v3}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v3, "SessionConnectEvent SessionBuildFailed"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->ipInfoManage:Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;

    invoke-virtual {v3}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;->getRecentlyServerData()Lcom/mi/milink/sdk/session/common/RecentlyServerData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/session/common/RecentlyServerData;->getRecentlyServer()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->ipInfoManage:Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;

    new-instance v3, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v4, "0.0.0.0"

    invoke-direct {v3, v4, v6, v6, v6}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;->setRecentlyServer(Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    :cond_1
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mReportLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mReportLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "%s:%s"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getServerProfileForStatistic()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getServerProfileForStatistic()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionAddress2ErrorCodeMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->isAbandonSession(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MSG_TYPE_OPEN_SESSION_FAIL errCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    if-ne v2, v5, :cond_2

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v2, "handleMessage MSG_TYPE_OPEN_SESSION_FAIL is mMasterSession No:%d, mState = %d"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getSessionNO()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->setState(I)V

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget v2, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    if-ne v2, v7, :cond_3

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v3, "handleMessage MSG_TYPE_OPEN_SESSION_FAIL is isTryingSession No:%d, mState = %d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getSessionNO()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget v5, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getNextServerProfile(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;I)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleMessage MSG_TYPE_OPEN_SESSION_FAIL is unknown session No:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getSessionNO()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->close()Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v2, "SessionConnectEvent SessionBuildSuccess"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->isAbandonSession(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleMessage OPEN_SESSION_SUCCESS No:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getSessionNO()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    if-eq v1, v7, :cond_4

    iget v1, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    if-ne v1, v5, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v2, "update session"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->updateSession(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Z

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mReportLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mReportLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_5
    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->close()Z

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleMessage OPEN_SESSION_SUCCESS is unknown session No:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getSessionNO()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v3, "SessionConnectEvent SessionRunError"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->isAbandonSession(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v3, "handleMessage SESSION_ERROR reason = %d, No:%d"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getSessionNO()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->setState(I)V

    const/16 v2, 0x232

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " SESSION_ERROR mSessionReconnectTimes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionReconnectTryTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOpenSessionTryTimes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mOpenSessionTryTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionReconnectTryTimes:I

    if-ge v1, v8, :cond_6

    new-instance v1, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    iget v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->appId:I

    invoke-direct {v1, p0, v2, v3}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;I)V

    iput v7, v1, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v7}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->setState(I)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getServerProfileForStatistic()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->openSession(Lcom/mi/milink/sdk/session/common/ServerProfile;)Z

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionReconnectTryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionReconnectTryTimes:I

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "on seesion error network isAvailable = false"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;)V
    .locals 4

    iget-object v0, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;->mSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->isAbandonSession(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionOtherEvent$EventType:[I

    iget-object v2, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "SessionOtherEvent RecvInvalidPacket"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->channelEventbus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;->RecvInvalidPacket:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "SessionOtherEvent RequestMapIsEmpty"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mCheckTimeOutTimerOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mTryStopTimerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "SessionOtherEvent RequestMapIsNotEmpty"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mCheckTimeOutTimerOpen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "mCheckTimeOutTimerOpen=false,startTimer"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->startTimer()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v2, "SessionOtherEvent StatisticsTimeoutPacket"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->postStatisticsTimeoutPacketAction()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "SessionOtherEvent PackageNeedRetry"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/session/common/Request;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private processEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent;)V
    .locals 2

    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType:[I

    iget-object v1, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "SystemNotificationEvent screen_on"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->tryConnectIfNeed()Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "SystemNotificationEvent NetWorkChange"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->acquireWakeLock()V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->tryConnectIfNeed()Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private releaseWakeLock()V
    .locals 4

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v2, "Wakelock RELEASED :)"

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mWakeLock:Landroid/os/PowerManager$WakeLock;
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

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v3, "releaseWakeLock exception"

    invoke-static {v2, v3, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mWakeLock:Landroid/os/PowerManager$WakeLock;

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

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mOpenSessionTryTimes:I

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionReconnectTryTimes:I

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLoginTryTimes:I

    return-void
.end method

.method private sendCacheRequest()Z
    .locals 4

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getSession()Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "sendCacheRequest session == null impossible!!!"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendCacheRequest size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

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
    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startTimer()V
    .locals 4

    const/16 v1, 0x14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mCheckTimeOutTimerOpen:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopTimer()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mCheckTimeOutTimerOpen:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private updateSession(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v3, "update session function."

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    iput v2, p1, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->abandonAllSession()V

    :cond_1
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mServerManager:Lcom/mi/milink/sdk/session/common/IServerManager;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/session/common/IServerManager;->save(Lcom/mi/milink/sdk/session/common/ServerProfile;)Z

    :cond_2
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v3, "updateSession in no session or tring session"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    if-eq v2, p1, :cond_3

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->close()Z

    :cond_3
    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-virtual {p0, v8}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->setState(I)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v3, "connected, start milink login"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->setIsLogining(Z)V

    const-string v2, "updateSession"

    invoke-virtual {p0, v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->login(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mOpenStartTime:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->onOpenSessionResult(IJ)V

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getOpenSessionSucessReturnInfo()Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;->getClientIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;->getClientIsp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;->getBackupServerList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;->getOptmumServerList()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v6, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->ipInfoManage:Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;

    if-eqz v0, :cond_7

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->ipInfoManage:Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientIsp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;->setOptmumServerList(Ljava/lang/String;Ljava/util/List;)V

    :cond_6
    if-eqz v5, :cond_7

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->ipInfoManage:Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;

    invoke-virtual {v0, v5}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;->setBackupServerList(Ljava/util/List;)V

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public addPacketInSendQueue(Lcom/mi/milink/sdk/session/common/Request;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "add packet in send queue"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public close()Z
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$3;

    invoke-direct {v1, p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$3;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->channelEventbus:Lorg/greenrobot/eventbus/EventBus;

    return-object v0
.end method

.method public getSessionState()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    return v0
.end method

.method public initApp()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mAppInited:Z

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->resetAllTryTimes()V

    return-void
.end method

.method public isMilinkLogined()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLoginState:I

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

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mCheckTimeOutTimerOpen:Z

    return v0
.end method

.method public login(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "login from="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "login from="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->isLogining()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "milink is logining"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mAppInited:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "app not init"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->internalManualOpen()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "milink login, session manager state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getSession()Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "login session is not available."

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLoginTryTimes:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_6

    iget v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLoginTryTimes:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLoginTryTimes:I

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "milink login start, mLoginTryTimes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLoginTryTimes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->fastLogin()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "milink login has exceeded max times"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public logoff()V
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "milink logoff"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->appId:I

    invoke-static {v0}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance(I)Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->doPostDataAtOnce()V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLogoffRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onOpenSessionResult(IJ)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onOpenSessionResult, errorCode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->stopTimer()V

    invoke-direct/range {p0 .. p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->isMultiUnavailable()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v5, "statistic milink.open, code=7"

    invoke-static {v4, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->appId:I

    invoke-static {v4}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance(I)Lcom/mi/milink/sdk/debug/InternalDataMonitor;

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

    new-array v6, v4, [I

    fill-array-data v6, :array_0

    const/4 v4, 0x6

    new-array v10, v4, [I

    fill-array-data v10, :array_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v9, v5

    :goto_1
    const/4 v5, 0x6

    if-ge v9, v5, :cond_2

    const/4 v5, 0x6

    if-ge v9, v5, :cond_2

    aget v5, v6, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->isAllSessionErrorCode(I)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "statistic milink.open, code="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v6, v10, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->appId:I

    invoke-static {v4}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance(I)Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v5

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, "milink.open"

    aget v9, v10, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v10, p2

    invoke-virtual/range {v5 .. v16}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_3

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->threadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v5, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v5, v0, v1, v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;J)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mInternalAutoOpenRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onOpenSessionResult reconnect times:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mOpenSessionTryTimes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v5, "check isInternetAvailable, but network is unavailable"

    invoke-static {v4, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v5, "mMasterSession = [Session No:%d] "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-virtual {v8}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getSessionNO()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->appId:I

    invoke-static {v4}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance(I)Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

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

.method public processEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;)V
    .locals 7

    const/16 v6, 0x18

    const/4 v5, 0x2

    const/high16 v4, -0x80000000

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;->mSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->isAbandonSession(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$8;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionLoginEvent$EventType:[I

    iget-object v1, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "SessionLoginEvent LoginFailed"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v0, v3}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->setIsLogining(Z)V

    iput v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLoginState:I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->channelEventbus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;->LoginStateChange:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;

    invoke-direct {v1, v2, v4, v3}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "SessionLoginEvent LoginSuccess"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v0, v3}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->setIsLogining(Z)V

    iput v5, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLoginState:I

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->sendCacheRequest()Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "onLoginResult loginState=2"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->channelEventbus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;->LoginStateChange:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;

    invoke-direct {v1, v2, v4, v5}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->addClearConnRunnalbe()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "SessionLoginEvent LogoffCmdReturn"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLogoffRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLogoffRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "processMessage +"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->processEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->processEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->processEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->processEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->processEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->processEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "MSG_CHECK_SESSION_TIMER"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getSession()Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->checkRequestsTimeout()Z

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    iget v2, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->checkRequestsTimeout()Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "release wake lock"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->releaseWakeLock()V

    goto :goto_0

    :pswitch_9
    const-string v0, "LOGIN_RETRY"

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->login(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "MSG_TYPE_APP_NOT_INIT,app not init, call app init by onEventGetServiceToken"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->channelEventbus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;->GetServiceToken:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_b
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getSession()Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send data, session manager state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    const-wide/16 v2, 0x1770

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->isDeadConnection(JJ)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "session isDeadConnection=true"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->setState(I)V

    const/4 v0, 0x0

    move-object v1, v0

    :goto_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/session/common/Request;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLoginState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "push request in cache, seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSendQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const-string v0, "handleRequest"

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->login(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

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

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    goto/16 :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_2

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
        :pswitch_0
        :pswitch_9
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public sendData(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/session/common/ResponseListener;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "send data ,cmd can not be null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLastUserSendDataTime:J

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getSequence()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setSeqNo(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getBusinessEncByMode()B

    move-result v1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v2

    invoke-direct {v0, p1, p3, v1, v2}, Lcom/mi/milink/sdk/session/common/Request;-><init>(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/ResponseListener;BLcom/mi/milink/sdk/account/IAccount;)V

    invoke-virtual {v0, p2}, Lcom/mi/milink/sdk/session/common/Request;->setTimeOut(I)V

    new-instance v1, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;

    invoke-direct {v1, p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;Lcom/mi/milink/sdk/session/common/Request;)V

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->start()V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->addClearConnRunnalbe()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setState(I)V
    .locals 5

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setState mState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

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

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mSessionList.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    iput p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    iget v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->channelEventbus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;->SessionStateChange:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;

    iget v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    invoke-direct {v2, v3, v0, v4}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;II)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    if-eqz v0, :cond_1

    const/4 v4, 0x3

    iput v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->close()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mSessionList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    const/4 v2, 0x3

    iput v2, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->close()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mMasterSession:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLoginState:I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->setIsLogining(Z)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public tryConnectIfNeed()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->internalOpen()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mState:I

    if-eq v2, v1, :cond_0

    iget v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLoginState:I

    if-nez v2, :cond_2

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->mLoginTryTimes:I

    const-string v1, "tryConnectIfNeed"

    invoke-virtual {p0, v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->login(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
