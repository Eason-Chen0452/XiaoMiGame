.class public Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;
.super Ljava/lang/Object;


# static fields
.field public static hasInit:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private appId:I

.field private channelEventBus:Lorg/greenrobot/eventbus/EventBus;

.field private mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

.field private mCurrentAccountType:I

.field private mIsLogining:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->hasInit:Z

    return-void
.end method

.method public constructor <init>(Lorg/greenrobot/eventbus/EventBus;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mIsLogining:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mCurrentAccountType:I

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->TAG:Ljava/lang/String;

    const-string v1, "new MiChannelAccountManager()"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lcom/mi/milink/sdk/account/ChannelAccount;

    invoke-direct {v0, p2}, Lcom/mi/milink/sdk/account/ChannelAccount;-><init>(I)V

    iput-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->hasInit:Z

    return-void
.end method


# virtual methods
.method public getBusinessEncByMode()B
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mCurrentAccountType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    return-object v0
.end method

.method public getCurrentAccountType()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mCurrentAccountType:I

    return v0
.end method

.method public getKeepAliveTime()I
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->getKeepAliveTime()I

    move-result v0

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initUserChannelMode()V
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->TAG:Ljava/lang/String;

    const-string v1, "initUseChannelMode"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->generateServiceTokenAndSSecurity()V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/IAccount;->getB2Token()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;->ClientRequestCheckConnection:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;->ClientRequestLogin:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isChannelModCurrent()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mCurrentAccountType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isLogining()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mIsLogining:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public logoff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mIsLogining:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->logoffMiLink()V

    return-void
.end method

.method public logoffMiLink()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mIsLogining:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->logoffMiLink()V

    return-void
.end method

.method public milinkHasLogined()Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->getB2Token()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setIsLogining(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mIsLogining:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setKeepAliveTime(I)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/account/IAccount;->setKeepAliveTime(I)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/account/IAccount;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public userLogoff()V
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->channelEventBus:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;->ClientRequestLogoff:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
