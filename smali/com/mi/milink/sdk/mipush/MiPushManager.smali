.class public Lcom/mi/milink/sdk/mipush/MiPushManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/mipush/MiPushManager$MiPushRegisterListener;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/mi/milink/sdk/mipush/MiPushManager; = null

.field public static final PREF_KEY_ALIAS:Ljava/lang/String; = "MIPUSH_ALIAS"

.field public static final PREF_KEY_REGID:Ljava/lang/String; = "MIPUSH_REG_ID2"

.field private static final TAG:Ljava/lang/String; = "MiPushManager"


# instance fields
.field private l:Lcom/mi/milink/sdk/mipush/MiPushMessageListener;

.field private mAcquireWakeLockRunnable:Ljava/lang/Runnable;

.field private mAlias:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mMiPushRegisterListener:Lcom/mi/milink/sdk/mipush/MiPushManager$MiPushRegisterListener;

.field private mRegId:Ljava/lang/String;

.field private mReleaseWakeLockRunnable:Ljava/lang/Runnable;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private registing:Z

.field private userId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->l:Lcom/mi/milink/sdk/mipush/MiPushMessageListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->registing:Z

    new-instance v0, Lcom/mi/milink/sdk/mipush/MiPushManager$3;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/mipush/MiPushManager$3;-><init>(Lcom/mi/milink/sdk/mipush/MiPushManager;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mReleaseWakeLockRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/mi/milink/sdk/mipush/MiPushManager$4;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/mipush/MiPushManager$4;-><init>(Lcom/mi/milink/sdk/mipush/MiPushManager;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mAcquireWakeLockRunnable:Ljava/lang/Runnable;

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "MIPUSH_REG_ID2"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/data/Option;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mRegId:Ljava/lang/String;

    const-string v0, "MIPUSH_ALIAS"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/data/Option;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mAlias:Ljava/lang/String;

    const-string v0, "MiPushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MiPushManager() mRegId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mRegId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/milink/sdk/mipush/MiPushManager$1;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/mipush/MiPushManager$1;-><init>(Lcom/mi/milink/sdk/mipush/MiPushManager;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/mipush/sdk/Logger;->setLogger(Landroid/content/Context;Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/mi/milink/sdk/mipush/MiPushManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->registing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mi/milink/sdk/mipush/MiPushManager;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mi/milink/sdk/mipush/MiPushManager;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method public static getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;
    .locals 2

    sget-object v0, Lcom/mi/milink/sdk/mipush/MiPushManager;->INSTANCE:Lcom/mi/milink/sdk/mipush/MiPushManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/mi/milink/sdk/mipush/MiPushManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/mipush/MiPushManager;->INSTANCE:Lcom/mi/milink/sdk/mipush/MiPushManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/mipush/MiPushManager;

    invoke-direct {v0}, Lcom/mi/milink/sdk/mipush/MiPushManager;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/mipush/MiPushManager;->INSTANCE:Lcom/mi/milink/sdk/mipush/MiPushManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/mi/milink/sdk/mipush/MiPushManager;->INSTANCE:Lcom/mi/milink/sdk/mipush/MiPushManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private tryWakeLock(I)V
    .locals 4

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mReleaseWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mAcquireWakeLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mReleaseWakeLockRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized bindAliasByUserId()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->userId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->setAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->registing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearAlias()V
    .locals 2

    const-string v0, "MiPushManager"

    const-string v1, "clearAlias "

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mAlias:Ljava/lang/String;

    const-string v0, "MIPUSH_ALIAS"

    iget-object v1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mAlias:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/data/Option;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public clearNotification(I)V
    .locals 1

    if-gez p1, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearNotification(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->clearNotification(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public declared-synchronized logoff()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "MiPushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mipush logoff mAlias:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mAlias:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unsetAlias(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mAlias:Ljava/lang/String;

    const-string v0, "MIPUSH_ALIAS"

    iget-object v1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mAlias:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/data/Option;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mRegId:Ljava/lang/String;

    const-string v0, "MIPUSH_REG_ID2"

    iget-object v1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mRegId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/data/Option;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onNotificationMessageArrived(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->l:Lcom/mi/milink/sdk/mipush/MiPushMessageListener;

    if-eqz v0, :cond_0

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->tryWakeLock(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->l:Lcom/mi/milink/sdk/mipush/MiPushMessageListener;

    invoke-interface {v0, p1, p2}, Lcom/mi/milink/sdk/mipush/MiPushMessageListener;->onNotificationMessageArrived(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    :cond_0
    return-void
.end method

.method public onNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->l:Lcom/mi/milink/sdk/mipush/MiPushMessageListener;

    if-eqz v0, :cond_0

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->tryWakeLock(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->l:Lcom/mi/milink/sdk/mipush/MiPushMessageListener;

    invoke-interface {v0, p1, p2}, Lcom/mi/milink/sdk/mipush/MiPushMessageListener;->onNotificationMessageClicked(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    :cond_0
    return-void
.end method

.method public onReceivePassThroughMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->l:Lcom/mi/milink/sdk/mipush/MiPushMessageListener;

    if-eqz v0, :cond_0

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->tryWakeLock(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->l:Lcom/mi/milink/sdk/mipush/MiPushMessageListener;

    invoke-interface {v0, p1, p2}, Lcom/mi/milink/sdk/mipush/MiPushMessageListener;->onReceivePassThroughMessage(Landroid/content/Context;Lcom/xiaomi/mipush/sdk/MiPushMessage;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized registerMiPush(Ljava/lang/String;Lcom/mi/milink/sdk/mipush/MiPushManager$MiPushRegisterListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->userId:Ljava/lang/String;

    iput-object p2, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mMiPushRegisterListener:Lcom/mi/milink/sdk/mipush/MiPushManager$MiPushRegisterListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->registerMiPush(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerMiPush(Z)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "MiPushManager"

    const-string v1, "clearRegid==true"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mRegId:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mRegId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MiPushManager"

    const-string v1, " userId==null & mRegId!=null,register cancel"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mAlias:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mAlias:Ljava/lang/String;

    iget-object v1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "MiPushManager"

    const-string v1, "mRegId and mAlias not null,register cancel"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    const-string v0, "MiPushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request registerMiPush registing="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->registing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->registing:Z

    if-eqz v0, :cond_4

    const-string v0, "MiPushManager"

    const-string v1, "mipush is already registing now ,cancel;"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->registing:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mi/milink/sdk/mipush/MiPushManager$2;

    invoke-direct {v1, p0}, Lcom/mi/milink/sdk/mipush/MiPushManager$2;-><init>(Lcom/mi/milink/sdk/mipush/MiPushManager;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mRegId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getMiPushAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getMiPushAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "MiPushManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "register mipush appid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",appkey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->registerPush(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->registing:Z

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->userId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "MiPushManager"

    const-string v1, "mMiPush_RegAlias == mUserId,no need register"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->registing:Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->bindAliasByUserId()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MiPushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMiPushRegId alias="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mAlias:Ljava/lang/String;

    const-string v0, "MIPUSH_ALIAS"

    iget-object v1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mAlias:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/data/Option;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public setMessageListener(Lcom/mi/milink/sdk/mipush/MiPushMessageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->l:Lcom/mi/milink/sdk/mipush/MiPushMessageListener;

    return-void
.end method

.method public setMiPushRegId(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MiPushManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMiPushRegId regId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mRegId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mRegId:Ljava/lang/String;

    const-string v0, "MIPUSH_REG_ID2"

    iget-object v1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mRegId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/data/Option;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mMiPushRegisterListener:Lcom/mi/milink/sdk/mipush/MiPushManager$MiPushRegisterListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mMiPushRegisterListener:Lcom/mi/milink/sdk/mipush/MiPushManager$MiPushRegisterListener;

    invoke-interface {v0, p1}, Lcom/mi/milink/sdk/mipush/MiPushManager$MiPushRegisterListener;->onSetMiPushRegId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMiPushRegisterListener(Lcom/mi/milink/sdk/mipush/MiPushManager$MiPushRegisterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->mMiPushRegisterListener:Lcom/mi/milink/sdk/mipush/MiPushManager$MiPushRegisterListener;

    return-void
.end method

.method public declared-synchronized setRegisting(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/mi/milink/sdk/mipush/MiPushManager;->registing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
