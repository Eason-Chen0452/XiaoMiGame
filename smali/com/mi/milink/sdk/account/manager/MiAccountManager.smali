.class public Lcom/mi/milink/sdk/account/manager/MiAccountManager;
.super Ljava/lang/Object;


# static fields
.field public static final ACCOUNT_TYPE_ANONYMOUS:I = 0x1

.field public static final ACCOUNT_TYPE_CHANNEL:I = 0x2

.field public static final ACCOUNT_TYPE_STANDARD:I

.field private static INSTANCE:Lcom/mi/milink/sdk/account/manager/MiAccountManager;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllowAnonymousMode:Z

.field private mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

.field private mCurrentAccountType:I

.field private mIsLogining:Z

.field private mIsUploadRegIdToServer:Z

.field private volatile mMiPush_RegId:Ljava/lang/String;

.field private mPassportInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccountType:I

    iput-boolean v1, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mAllowAnonymousMode:Z

    iput-boolean v1, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mIsLogining:Z

    invoke-static {}, Lcom/mi/milink/sdk/account/MiAccount;->getInstance()Lcom/mi/milink/sdk/account/MiAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mMiPush_RegId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mIsUploadRegIdToServer:Z

    iput-boolean v1, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mPassportInit:Z

    return-void
.end method

.method public static getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;
    .locals 2

    sget-object v0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->INSTANCE:Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->INSTANCE:Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    invoke-direct {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->INSTANCE:Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->INSTANCE:Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private switchAccountTypeMode(I)V
    .locals 3

    sget-object v0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switchAccountTypeMode turn to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccountType:I

    invoke-static {}, Lcom/mi/milink/sdk/account/MiAccount;->getInstance()Lcom/mi/milink/sdk/account/MiAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccountType:I

    invoke-static {}, Lcom/mi/milink/sdk/account/AnonymousAccount;->getInstance()Lcom/mi/milink/sdk/account/AnonymousAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccountType:I

    invoke-static {}, Lcom/mi/milink/sdk/account/AnonymousAccount;->getInstance()Lcom/mi/milink/sdk/account/AnonymousAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public appHasLogined()Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->getServiceToken()Ljava/lang/String;

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

.method public getBusinessEncByMode()B
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccountType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/16 v0, 0x8

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xa

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    return-object v0
.end method

.method public getCurrentAccountType()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccountType:I

    return v0
.end method

.method public getMiPushRegId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mMiPush_RegId:Ljava/lang/String;

    return-object v0
.end method

.method public getPassportInit()Z
    .locals 3

    sget-object v0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPassportInit mPassportInit="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mPassportInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mPassportInit:Z

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasUploadRegIdToServer()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mIsUploadRegIdToServer:Z

    return v0
.end method

.method public initUseAnonymousMode()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->TAG:Ljava/lang/String;

    const-string v1, "initUseAnonymousMode"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mAllowAnonymousMode:Z

    invoke-direct {p0, v2}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->switchAccountTypeMode(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->generateServiceTokenAndSSecurity()V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/IAccount;->getB2Token()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientRequestCheckConnection:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientRequestLogin:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public initUserChannelMode()V
    .locals 3

    sget-object v0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->TAG:Ljava/lang/String;

    const-string v1, "initUseChannelMode"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mAllowAnonymousMode:Z

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->switchAccountTypeMode(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->generateServiceTokenAndSSecurity()V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/IAccount;->getB2Token()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientRequestCheckConnection:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientRequestLogin:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isAllowAnonymousMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mAllowAnonymousMode:Z

    return v0
.end method

.method public isAnonymousModeCurrent()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccountType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChannelModCurrent()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccountType:I

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
    iget-boolean v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mIsLogining:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    const-string v1, "login start,st=%s,sSecurity=%s,fastLoginExtra.length=%d"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    const/4 v0, 0x1

    aput-object p3, v2, v0

    const/4 v3, 0x2

    if-eqz p4, :cond_1

    array-length v0, p4

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " passportInit:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->switchAccountTypeMode(I)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->TAG:Ljava/lang/String;

    const-string v1, "login but argu is wrong,cancel!!!"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientNotSameUserLogin:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-direct {v2, v3}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/IAccount;->getServiceToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/account/IAccount;->getSSecurity()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v3}, Lcom/mi/milink/sdk/account/IAccount;->getB2Token()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "b2Token="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->TAG:Ljava/lang/String;

    const-string v1, "login but mB2Token is not empty"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0, p4}, Lcom/mi/milink/sdk/account/IAccount;->setFastLoginExtra([B)V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->dataChange()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientRequestCheckConnection:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/account/IAccount;->setUserId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0, p2}, Lcom/mi/milink/sdk/account/IAccount;->setServiceToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0, p3}, Lcom/mi/milink/sdk/account/IAccount;->setSSecurity(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0, p4}, Lcom/mi/milink/sdk/account/IAccount;->setFastLoginExtra([B)V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mPassportInit:Z

    if-nez v0, :cond_5

    iput-boolean p5, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mPassportInit:Z

    :cond_5
    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->dataChange()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientRequestLogin:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method public logoff()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mIsLogining:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->logoff()V

    invoke-static {}, Lcom/mi/milink/sdk/config/HeartBeatManager;->getInstance()Lcom/mi/milink/sdk/config/HeartBeatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->saveConfig()V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mAllowAnonymousMode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccountType:I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->switchAccountTypeMode(I)V

    if-nez v0, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientRequestLogin:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public logoffMiLink()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mIsLogining:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/IAccount;->logoffMiLink()V

    return-void
.end method

.method public milinkHasLogined()Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

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

.method public setAnonymousModeSwitch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mAllowAnonymousMode:Z

    return-void
.end method

.method public setHasUploadRegIdToServer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mIsUploadRegIdToServer:Z

    return-void
.end method

.method public declared-synchronized setIsLogining(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mIsLogining:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMipushRegId(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMiPushRegId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mMiPush_RegId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mMiPush_RegId:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mIsUploadRegIdToServer:Z
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

.method public setPassportInit(Z)V
    .locals 3

    sget-object v0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setPassportInit b="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mPassportInit:Z

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->mCurrentAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/account/IAccount;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method public userLogoff()V
    .locals 3

    invoke-static {}, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->stop()Z

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;->ClientRequestLogoff:Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ClientActionEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
