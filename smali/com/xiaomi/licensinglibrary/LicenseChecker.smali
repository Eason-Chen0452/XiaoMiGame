.class public Lcom/xiaomi/licensinglibrary/LicenseChecker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/licensinglibrary/LicenseChecker$a;,
        Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;
    }
.end annotation


# static fields
.field private static final LICENSE_CHECKER_LOG_TYPE:Ljava/lang/String; = "licensechecker"

.field private static final MSG_ID_BUY_GAME:I = 0x4

.field private static final MSG_ID_ESTABLISH_CONNECTION:I = 0x3

.field private static final MSG_ID_SHOWTOAST:I = 0x5

.field private static final MSG_ID_VALIDATOR_CHECK:I = 0x1

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.xiaomi.licensinglibrary.authfileinfo"

.field private static final SERVICE_PKG_NAME:Ljava/lang/String; = "com.xiaomi.gamecenter.sdk.service"

.field private static final TAG:Ljava/lang/String; = "MiGameSDK"

.field private static final sCHECK_BUY_RET_COUNT:I = 0x1e


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAppId:Ljava/lang/String;

.field private mCallback:Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

.field private volatile mChecking:Z

.field private mService:Lcom/xiaomi/licensinglibrary/ILicenseService;

.field private mValidator:Lcom/xiaomi/licensinglibrary/util/LicenseValidator;

.field private mValidatorHandler:Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

.field private mValidatorServiceConn:Landroid/content/ServiceConnection;

.field private purchaseWindow:Lcom/xiaomi/licensinglibrary/LicenseChecker$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mCallback:Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->purchaseWindow:Lcom/xiaomi/licensinglibrary/LicenseChecker$a;

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidator:Lcom/xiaomi/licensinglibrary/util/LicenseValidator;

    iput-boolean v2, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mChecking:Z

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mAppId:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/licensinglibrary/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/licensinglibrary/a;-><init>(Lcom/xiaomi/licensinglibrary/LicenseChecker;)V

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorServiceConn:Landroid/content/ServiceConnection;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Argument is illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;-><init>()V

    invoke-virtual {v0, p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setAppKey(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;->vertical:Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setOrientation(Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;)V

    invoke-static {p1, v0, p6}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->Init(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;)V

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "xiaomi_validator_background_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;-><init>(Lcom/xiaomi/licensinglibrary/LicenseChecker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorHandler:Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    new-instance v0, Lcom/xiaomi/licensinglibrary/util/LicenseValidator;

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p4}, Lcom/xiaomi/licensinglibrary/util/LicenseValidator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidator:Lcom/xiaomi/licensinglibrary/util/LicenseValidator;

    iput-object p5, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mCallback:Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    iput-object p2, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mAppId:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;

    invoke-direct {v0, p0, v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;-><init>(Lcom/xiaomi/licensinglibrary/LicenseChecker;B)V

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->purchaseWindow:Lcom/xiaomi/licensinglibrary/LicenseChecker$a;

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/ILicenseService;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mService:Lcom/xiaomi/licensinglibrary/ILicenseService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/xiaomi/licensinglibrary/LicenseChecker;Lcom/xiaomi/licensinglibrary/ILicenseService;)Lcom/xiaomi/licensinglibrary/ILicenseService;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mService:Lcom/xiaomi/licensinglibrary/ILicenseService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorHandler:Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/xiaomi/licensinglibrary/LicenseChecker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mChecking:Z

    return p1
.end method

.method static synthetic access$400(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseChecker$a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->purchaseWindow:Lcom/xiaomi/licensinglibrary/LicenseChecker$a;

    return-object v0
.end method

.method static synthetic access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/util/LicenseValidator;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidator:Lcom/xiaomi/licensinglibrary/util/LicenseValidator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorServiceConn:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaomi/licensinglibrary/LicenseChecker;Lcom/xiaomi/licensinglibrary/util/LicenseValidator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->handleServiceConnectionError(Lcom/xiaomi/licensinglibrary/util/LicenseValidator;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mCallback:Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    return-object v0
.end method

.method private cleanupService()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mChecking:Z

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mService:Lcom/xiaomi/licensinglibrary/ILicenseService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mService:Lcom/xiaomi/licensinglibrary/ILicenseService;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->purchaseWindow:Lcom/xiaomi/licensinglibrary/LicenseChecker$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->purchaseWindow:Lcom/xiaomi/licensinglibrary/LicenseChecker$a;

    invoke-virtual {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker$a;->a()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "MiGameSDK"

    const-string v1, "Unable to unbind from licensing service (already unbound)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized handleServiceConnectionError(Lcom/xiaomi/licensinglibrary/util/LicenseValidator;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->cleanupService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized checkAccess()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mChecking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorHandler:Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorHandler:Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public gotoGameCenterGamePage()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "migamecenter://details?pkgname="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->cleanupService()V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mValidatorHandler:Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    invoke-virtual {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reportLog(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mService:Lcom/xiaomi/licensinglibrary/ILicenseService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mService:Lcom/xiaomi/licensinglibrary/ILicenseService;

    invoke-interface {v0}, Lcom/xiaomi/licensinglibrary/ILicenseService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mService:Lcom/xiaomi/licensinglibrary/ILicenseService;

    const-string v1, "licensechecker"

    iget-object v2, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker;->mAppId:Ljava/lang/String;

    const/16 v3, 0x96

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/xiaomi/licensinglibrary/ILicenseService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
