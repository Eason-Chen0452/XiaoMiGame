.class public Lcom/mi/milink/sdk/client/MiLinkChannelClient;
.super Ljava/lang/Object;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

.field private appId:I

.field private channelEventBus:Lorg/greenrobot/eventbus/EventBus;

.field isInit:Z

.field private mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

.field private mMiLinkObserver:Lcom/mi/milink/sdk/client/MiLinkObserver;

.field private sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MiLinkChannelClient"

    iput-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->isInit:Z

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->appId:I

    new-instance v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBus;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {p0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->init()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MiLinkChannelClient"

    iput-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->isInit:Z

    iput p1, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->appId:I

    new-instance v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBus;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {p0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->init()V

    return-void
.end method

.method public static getAnonymousAccountId()J
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/account/ChannelAccount;->getInstance()Lcom/mi/milink/sdk/account/AnonymousAccount;

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

.method private init()V
    .locals 3

    const-string v0, "MiLinkChannelClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MiLinkChannelClient no ipc build,host version="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getVersionCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public forceReconnect()V
    .locals 3

    const-string v0, "MiLinkChannelClient"

    const-string v1, "forceReconnet"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;->ClientForceOpen:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public getMiLinkConnectState()I
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getSessionState()I

    move-result v0

    return v0
.end method

.method public declared-synchronized initUseChannelMode()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    if-nez v0, :cond_1

    const-string v0, "MiLinkChannelClient"

    const-string v1, "initUseChannelMode accountManager==null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    iget-object v1, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    iget v2, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->appId:I

    invoke-direct {v0, v1, v2}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;-><init>(Lorg/greenrobot/eventbus/EventBus;I)V

    iput-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    if-nez v0, :cond_2

    const-string v0, "MiLinkChannelClient"

    const-string v1, "initUseChannelMode sessionManager==null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    iget-object v1, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    iget-object v2, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    iget v3, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->appId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;-><init>(Lorg/greenrobot/eventbus/EventBus;Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;I)V

    iput-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    iget-object v1, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    iget-object v1, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->initApp()V

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->initUserChannelMode()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->isInit:Z

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isSupportMiPush()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/mi/milink/sdk/client/MiLinkChannelClient$1;

    invoke-direct {v2, p0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient$1;-><init>(Lcom/mi/milink/sdk/client/MiLinkChannelClient;)V

    invoke-virtual {v0, v1, v2}, Lcom/mi/milink/sdk/mipush/MiPushManager;->registerMiPush(Ljava/lang/String;Lcom/mi/milink/sdk/mipush/MiPushManager$MiPushRegisterListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized internalClose()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->close()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMiLinkLogined()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    if-eqz v0, :cond_0

    const-string v0, "MiLinkChannelClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isMiLinkLogined:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->isMilinkLogined()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->isMilinkLogined()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "MiLinkChannelClient"

    const-string v1, "false isMiLinkLogined"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public declared-synchronized logoff()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MiLinkChannelClient"

    const-string v1, "logoff"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->userLogoff()V

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    iget-object v1, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    iget-object v1, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/client/MiLinkChannelClient$3;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType:[I

    iget-object v1, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerNotificationEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->onEventGetServiceToken()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->onEventInvilidPacket()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/client/MiLinkChannelClient$3;->$SwitchMap$com$mi$milink$sdk$event$MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType:[I

    iget-object v1, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent;->mEventType:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent;->mNewState:I

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->onLoginStateChanged(I)V

    goto :goto_0

    :pswitch_1
    iget v0, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent;->mOldState:I

    iget v1, p1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionManagerStateChangeEvent;->mNewState:I

    invoke-virtual {p0, v0, v1}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->onSessionStateChanged(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onEventGetServiceToken()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

    invoke-interface {v0}, Lcom/mi/milink/sdk/client/IEventListener;->onEventGetServiceToken()V

    :cond_0
    return-void
.end method

.method protected onEventInvilidPacket()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

    invoke-interface {v0}, Lcom/mi/milink/sdk/client/IEventListener;->onEventInvalidPacket()V

    :cond_0
    return-void
.end method

.method protected onLoginStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->mMiLinkObserver:Lcom/mi/milink/sdk/client/MiLinkObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->mMiLinkObserver:Lcom/mi/milink/sdk/client/MiLinkObserver;

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/client/MiLinkObserver;->onLoginStateUpdate(I)V

    :cond_0
    return-void
.end method

.method protected onSessionStateChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->mMiLinkObserver:Lcom/mi/milink/sdk/client/MiLinkObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->mMiLinkObserver:Lcom/mi/milink/sdk/client/MiLinkObserver;

    invoke-virtual {v0, p1, p2}, Lcom/mi/milink/sdk/client/MiLinkObserver;->onServerStateUpdate(II)V

    :cond_0
    return-void
.end method

.method public declared-synchronized sendAsync(Lcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->isInit:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->initUseChannelMode()V

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->sendData(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/session/common/ResponseListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendAsync(Lcom/mi/milink/sdk/aidl/PacketData;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->isInit:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->initUseChannelMode()V

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->sendData(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/session/common/ResponseListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendAsyncWithResponse(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/session/common/ResponseListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->isInit:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->initUseChannelMode()V

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->sendData(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/session/common/ResponseListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendDataBySimpleChannel(Lcom/mi/milink/sdk/aidl/PacketData;I)Lcom/mi/milink/sdk/aidl/PacketData;
    .locals 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-boolean v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->isInit:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->initUseChannelMode()V

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " packet is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Packet\'s command is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/mi/milink/sdk/client/MiLinkChannelClient$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/mi/milink/sdk/client/MiLinkChannelClient$2;-><init>(Lcom/mi/milink/sdk/client/MiLinkChannelClient;Lcom/mi/milink/sdk/aidl/PacketData;I)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient$2;->start()Lcom/mi/milink/sdk/base/MessageTask;

    move-result-object v0

    add-int/lit16 v1, p2, 0x1388

    int-to-long v2, v1

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/mi/milink/sdk/base/MessageTask;->getChannelResult(JLjava/util/concurrent/TimeUnit;)Lcom/mi/milink/sdk/aidl/PacketData;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    const-string v1, "MiLinkChannelClient"

    const-string v2, "task InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getSessionState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->setState(I)V

    :cond_4
    const-string v0, "MiLinkChannelClient"

    const-string v1, "task unknown state"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x208

    invoke-virtual {p1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setBusiCode(I)V

    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->getInstance()Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x208

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    instance-of v2, v1, Lcom/mi/milink/sdk/client/MiLinkException;

    if-eqz v2, :cond_5

    const-string v0, "MiLinkChannelClient"

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    const-string v1, "MiLinkChannelClient"

    const-string v2, "task ExecutionException"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "MiLinkChannelClient"

    const-string v2, "task CancellationException"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    const-string v1, "MiLinkChannelClient"

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

    const/16 v0, 0x203

    invoke-virtual {p1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setBusiCode(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getSessionState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->setState(I)V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string v1, "MiLinkChannelClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "task Exception, detailName="

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

    const/16 v0, 0x207

    invoke-virtual {p1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setBusiCode(I)V

    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->getInstance()Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x207

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getSessionState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->setState(I)V

    goto/16 :goto_0
.end method

.method public setDispatchPacketDelayMillis(I)V
    .locals 4

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->getInstance()Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;

    move-result-object v0

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->setDispatchPacketDelayTime(J)V

    return-void
.end method

.method public setEventListener(Lcom/mi/milink/sdk/client/IEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->mEventCallback:Lcom/mi/milink/sdk/client/IEventListener;

    return-void
.end method

.method public declared-synchronized setKeepAliveTime(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->setKeepAliveTime(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMiLinkLogLevel(I)V
    .locals 0

    invoke-static {p1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->setLogcatTraceLevel(I)V

    invoke-static {p1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->setFileTraceLevel(I)V

    invoke-static {p1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->setLogcatTraceLevel(I)V

    invoke-static {p1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->setFileTraceLevel(I)V

    return-void
.end method

.method public setMilinkStateObserver(Lcom/mi/milink/sdk/client/MiLinkObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->mMiLinkObserver:Lcom/mi/milink/sdk/client/MiLinkObserver;

    return-void
.end method

.method public setPacketListener(Lcom/mi/milink/sdk/client/IPacketListener;)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->getInstance()Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->setCallback(Lcom/mi/milink/sdk/client/IPacketListener;)V

    return-void
.end method

.method public declared-synchronized uploadMilinkLog(Z)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->appId:I

    invoke-direct {v0, v1, v2}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;-><init>(Lorg/greenrobot/eventbus/EventBus;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->setUserId(Ljava/lang/String;)V

    const-string v1, "MiLinkChannelClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "temp userid for upload log : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/mi/milink/sdk/session/persistent/UploadLogManager;->uploadMilinkLog(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;Lcom/mi/milink/sdk/account/IAccount;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
