.class public Lcom/mi/milink/sdk/client/MiLinkClient;
.super Ljava/lang/Object;


# static fields
.field private static INSTANCE:Lcom/mi/milink/sdk/client/MiLinkClient; = null

.field private static final TAG:Ljava/lang/String; = "MiLinkClient"


# instance fields
.field private mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

.field private mMiLinkObserver:Lcom/mi/milink/sdk/client/MiLinkObserver;

.field private mMiPushSwitch:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient;->mMiPushSwitch:Z

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    new-instance v0, Lcom/mi/milink/sdk/service/MiLinkExceptionHandler;

    invoke-direct {v0}, Lcom/mi/milink/sdk/service/MiLinkExceptionHandler;-><init>()V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string v0, "MiLinkClient"

    const-string v1, "MiLinkClient no ipc build"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->start()Z

    return-void
.end method

.method public static clearNotification(I)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->clearNotification(I)V

    return-void
.end method

.method public static declared-synchronized close()V
    .locals 2

    const-class v1, Lcom/mi/milink/sdk/client/MiLinkClient;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->close()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static enableConnectModeManual(Z)Z
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->enableConnectionManualMode(Z)Z

    move-result v0

    return v0
.end method

.method public static forceReconnect()V
    .locals 3

    const-string v0, "MiLinkClient"

    const-string v1, "forceReconnet"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientForceOpen:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public static getAnonymousAccountId()J
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/account/AnonymousAccount;->getInstance()Lcom/mi/milink/sdk/account/AnonymousAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/AnonymousAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private static getInstance()Lcom/mi/milink/sdk/client/MiLinkClient;
    .locals 2

    sget-object v0, Lcom/mi/milink/sdk/client/MiLinkClient;->INSTANCE:Lcom/mi/milink/sdk/client/MiLinkClient;

    if-nez v0, :cond_1

    const-class v1, Lcom/mi/milink/sdk/client/MiLinkClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/client/MiLinkClient;->INSTANCE:Lcom/mi/milink/sdk/client/MiLinkClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/client/MiLinkClient;

    invoke-direct {v0}, Lcom/mi/milink/sdk/client/MiLinkClient;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/client/MiLinkClient;->INSTANCE:Lcom/mi/milink/sdk/client/MiLinkClient;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/mi/milink/sdk/client/MiLinkClient;->INSTANCE:Lcom/mi/milink/sdk/client/MiLinkClient;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getMiLinkConnectState()I
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getSessionState()I

    move-result v0

    return v0
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)V
    .locals 6

    const-string v0, "MiLinkClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init, milinkversion="

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

    const-string v0, "MiLinkClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init service,passportInit="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,app is serviceToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serviceToken.length= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "security="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", security.length= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isSupportMiPush()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/client/MiLinkClient$1;

    invoke-direct {v1}, Lcom/mi/milink/sdk/client/MiLinkClient$1;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/mi/milink/sdk/mipush/MiPushManager;->registerMiPush(Ljava/lang/String;Lcom/mi/milink/sdk/mipush/MiPushManager$MiPushRegisterListener;)V

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->setUserId(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->initApp()V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)V

    return-void
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZZ)V
    .locals 6

    const-string v0, "MiLinkClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init, milinkversion="

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

    const-string v0, "MiLinkClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init service,passportInit="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,app  is serviceToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serviceToken.length= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "security="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", security.length= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->setUserId(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->initApp()V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)V

    return-void
.end method

.method public static initUseAnonymousMode()V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->initApp()V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->initUseAnonymousMode()V

    return-void
.end method

.method public static isMiLinkLogined()Z
    .locals 2

    const-string v0, "MiLinkClient"

    const-string v1, "isMiLinkLogined"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->isMiLinkLogined()Z

    move-result v0

    return v0
.end method

.method public static logoff()V
    .locals 2

    const-string v0, "MiLinkClient"

    const-string v1, "logoff"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isSupportMiPush()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->logoff()V

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->userLogoff()V

    return-void
.end method

.method public static sendAsync(Lcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 3

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->sendData(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/session/common/ResponseListener;)Z

    return-void
.end method

.method public static sendAsync(Lcom/mi/milink/sdk/aidl/PacketData;I)V
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->sendData(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/session/common/ResponseListener;)Z

    return-void
.end method

.method public static sendAsync(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/client/SendPacketListener;)V
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/client/MiLinkClient$2;

    invoke-direct {v1, p2}, Lcom/mi/milink/sdk/client/MiLinkClient$2;-><init>(Lcom/mi/milink/sdk/client/SendPacketListener;)V

    invoke-virtual {v0, p0, p1, v1}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->sendData(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/session/common/ResponseListener;)Z

    return-void
.end method

.method public static sendSync(Lcom/mi/milink/sdk/aidl/PacketData;I)Lcom/mi/milink/sdk/aidl/PacketData;
    .locals 4

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " packet is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Packet\'s command is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/mi/milink/sdk/client/MiLinkClient$3;

    invoke-direct {v0, p0, p1}, Lcom/mi/milink/sdk/client/MiLinkClient$3;-><init>(Lcom/mi/milink/sdk/aidl/PacketData;I)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/client/MiLinkClient$3;->start()Lcom/mi/milink/sdk/base/MessageTask;

    move-result-object v0

    add-int/lit16 v1, p1, 0x1388

    int-to-long v2, v1

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/mi/milink/sdk/base/MessageTask;->getResult(JLjava/util/concurrent/TimeUnit;)Lcom/mi/milink/sdk/aidl/PacketData;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "task InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Lcom/mi/milink/sdk/client/MiLinkException;

    if-eqz v2, :cond_2

    const-string v0, "MiLinkClient"

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const-string v1, "MiLinkClient"

    const-string v2, "task ExecutionException"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "task CancellationException"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v1, "MiLinkClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "task TimeoutException, detailName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setAllowAnonymousLoginSwitch(Z)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->setAnonymousModeSwitch(Z)V

    return-void
.end method

.method public static setDispatchPacketDelayMillis(I)V
    .locals 4

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->getInstance()Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;

    move-result-object v0

    int-to-long v2, p0

    invoke-virtual {v0, v2, v3}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->setDispatchPacketDelayTime(J)V

    return-void
.end method

.method public static setEventListener(Lcom/mi/milink/sdk/client/IEventListener;)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/client/MiLinkClient;->getInstance()Lcom/mi/milink/sdk/client/MiLinkClient;

    move-result-object v0

    iput-object p0, v0, Lcom/mi/milink/sdk/client/MiLinkClient;->mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

    return-void
.end method

.method public static setIpAndPortInManualMode(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->setIpAndPortInManualMode(Ljava/lang/String;I)V

    return-void
.end method

.method public static setLanguage(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setLanguageCode(Ljava/lang/String;)V

    return-void
.end method

.method public static setMiPushMessageListener(Lcom/mi/milink/sdk/mipush/MiPushMessageListener;)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->setMessageListener(Lcom/mi/milink/sdk/mipush/MiPushMessageListener;)V

    return-void
.end method

.method public static setMilinkLogLevel(I)V
    .locals 0

    invoke-static {p0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->setLogcatTraceLevel(I)V

    invoke-static {p0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->setFileTraceLevel(I)V

    invoke-static {p0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->setLogcatTraceLevel(I)V

    invoke-static {p0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->setFileTraceLevel(I)V

    return-void
.end method

.method public static setMilinkStateObserver(Lcom/mi/milink/sdk/client/MiLinkObserver;)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/client/MiLinkClient;->getInstance()Lcom/mi/milink/sdk/client/MiLinkClient;

    move-result-object v0

    iput-object p0, v0, Lcom/mi/milink/sdk/client/MiLinkClient;->mMiLinkObserver:Lcom/mi/milink/sdk/client/MiLinkObserver;

    return-void
.end method

.method public static setPacketListener(Lcom/mi/milink/sdk/client/IPacketListener;)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->getInstance()Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->setCallback(Lcom/mi/milink/sdk/client/IPacketListener;)V

    return-void
.end method

.method public static setTimeoutMultiply(F)Z
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    :cond_0
    const-string v0, "MiLinkClient"

    const-string v1, "illegal timeoutMultiply\uff0ctimeoutMultiply between 1-10"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/config/ConfigManager;->setTimeoutMultiply(F)V

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/client/MiLinkClient$4;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionManagerNotificationEvent$EventType:[I

    iget-object v1, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/client/MiLinkClient;->onEventGetServiceToken()V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-string v0, ""

    iget-object v4, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;->mObject:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v0, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerNotificationEvent;->mObject:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;->getType()I

    move-result v1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;->getTime()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;->getDevice()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/mi/milink/sdk/client/MiLinkClient;->onEventKickByServer(IJLjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/mi/milink/sdk/client/MiLinkClient;->onEventServiceTokenExpired()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/mi/milink/sdk/client/MiLinkClient;->onEventShouldUpdate()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/mi/milink/sdk/client/MiLinkClient;->onEventInvilidPacket()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/client/MiLinkClient$4;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEvent$SessionManagerStateChangeEvent$EventType:[I

    iget-object v1, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;->mNewState:I

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/client/MiLinkClient;->onLoginStateChanged(I)V

    goto :goto_0

    :pswitch_1
    iget v0, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;->mOldState:I

    iget v1, p1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionManagerStateChangeEvent;->mNewState:I

    invoke-virtual {p0, v0, v1}, Lcom/mi/milink/sdk/client/MiLinkClient;->onSessionStateChanged(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onEventGetServiceToken()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient;->mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient;->mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

    invoke-interface {v0}, Lcom/mi/milink/sdk/client/IEventListener;->onEventGetServiceToken()V

    :cond_0
    return-void
.end method

.method protected onEventInvilidPacket()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient;->mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient;->mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

    invoke-interface {v0}, Lcom/mi/milink/sdk/client/IEventListener;->onEventInvalidPacket()V

    :cond_0
    return-void
.end method

.method protected onEventKickByServer(IJLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient;->mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient;->mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mi/milink/sdk/client/IEventListener;->onEventKickedByServer(IJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onEventServiceTokenExpired()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient;->mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient;->mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

    invoke-interface {v0}, Lcom/mi/milink/sdk/client/IEventListener;->onEventServiceTokenExpired()V

    :cond_0
    return-void
.end method

.method protected onEventShouldUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient;->mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient;->mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

    invoke-interface {v0}, Lcom/mi/milink/sdk/client/IEventListener;->onEventShouldCheckUpdate()V

    :cond_0
    return-void
.end method

.method protected onLoginStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient;->mMiLinkObserver:Lcom/mi/milink/sdk/client/MiLinkObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient;->mMiLinkObserver:Lcom/mi/milink/sdk/client/MiLinkObserver;

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/client/MiLinkObserver;->onLoginStateUpdate(I)V

    :cond_0
    return-void
.end method

.method protected onSessionStateChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient;->mMiLinkObserver:Lcom/mi/milink/sdk/client/MiLinkObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient;->mMiLinkObserver:Lcom/mi/milink/sdk/client/MiLinkObserver;

    invoke-virtual {v0, p1, p2}, Lcom/mi/milink/sdk/client/MiLinkObserver;->onServerStateUpdate(II)V

    :cond_0
    return-void
.end method
