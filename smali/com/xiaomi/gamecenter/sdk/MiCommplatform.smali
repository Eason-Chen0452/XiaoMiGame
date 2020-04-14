.class public final Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
.super Ljava/lang/Object;


# static fields
.field private static final APPID_ERROR:I = 0x7

.field private static final CALLBACK_INIT_FINISH:I = 0x3e8

.field private static final CALLBACK_SPLASH_END:I = 0x3e9

.field private static final CONNECT_TIMEOUT_MILLIS:J = 0x1f40L

.field private static final DEFAULT_TIMEOUT_MILLIS:J = 0x7530L

.field private static final EXIT_CHECK:I = 0xb

.field private static final GAME_CONFIG_TIMEOUT_MILLIS:J = 0xbb8L

.field private static final INIT_WAIT:I = 0x8

.field public static final INVALID_PAYMENT_METHOD:I = 0x9

.field public static IS_LOGGED_IN:Z = false

.field private static final MAX_RELOGIN_TIMES:J = 0x2L

.field private static final MI_PRODUCTCATALOG:Ljava/lang/String; = "MiProductCatalog.prop"

.field private static final NO_NETWORK:I = 0xa

.field private static PERMISSIONS:[Ljava/lang/String; = null

.field private static final PERMISSION_GETACCOUNTS:Ljava/lang/String; = "android.permission.GET_ACCOUNTS"

.field private static final RELOGIN_TIMEOUT_MILLIS:J = 0x1770L

.field private static final REPORT:I = 0x1

.field private static final SERVICE_ERROR_APP_INFO_NULL:I = 0x4

.field private static final SERVICE_ERROR_FAIL:I = 0x5

.field private static final SERVICE_ERROR_NET_ERROR:I = 0x0

.field private static final SERVICE_ERROR_PERMISSION:I = 0x1

.field private static final SERVICE_ERROR_PERMISSION_REBOOT:I = 0x3

.field private static final SERVICE_ERROR_SIGN_ERROR:I = 0x2

.field private static final SERVICE_FILE_NAME:Ljava/lang/String; = "MiGameCenterSDKService.apk"

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.xiaomi.gamecenter.sdk.service"

.field static final SERVICE_PKG_NAME:Ljava/lang/String; = "com.xiaomi.gamecenter.sdk.service"

.field private static final SO_FILES_CHECK_FAIL:I = 0x6

.field private static final TAG:Ljava/lang/String; = "MiGameSDK.MiCommplatform"

.field private static accountAdapter:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

.field static appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

.field private static callbackHandler:Landroid/os/Handler;

.field private static ctx:Landroid/content/Context;

.field private static debugLogin:Z

.field private static debugTierCheck:Z

.field private static delayHandler:Landroid/os/Handler;

.field private static mLogin:Z

.field private static mPay:Z

.field private static mReLoginTimes:I

.field private static openAppConnection:Landroid/content/ServiceConnection;

.field private static sActivity:Landroid/app/Activity;

.field private static sApplication:Landroid/content/Context;

.field private static sBase:Ljava/lang/String;

.field private static sCheckSDKElements:Z

.field private static sCheckSoFiles:Z

.field public static sDownloadHandler:Lcom/xiaomi/gamecenter/sdk/DownloadHandler;

.field private static volatile sInstance:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

.field private static sIsForeground:Z

.field private static sIsOnlyLocal:Z

.field private static sJarCrashExceptionHandler:Lcom/xiaomi/gamecenter/sdk/k;

.field private static sLastClickTime:J

.field public static sLoginActivity:Landroid/app/Activity;

.field public static sOnInitProcessListener:Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;

.field public static sOnLoginProcessListener:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

.field private static sStartTime:J

.field private static sTimeoutAlertDialog:Landroid/app/AlertDialog;

.field public static sWxCpCallBack:Lcom/xiaomi/gamecenter/sdk/WxCpCallback;

.field private static sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

.field private static serviceUpdateHandler:Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;

.field private static toastHandler:Landroid/os/Handler;


# instance fields
.field private _Lock_:Ljava/lang/Object;

.field private _check_service_lock_:Ljava/lang/Object;

.field private checkLoginConnection:Landroid/content/ServiceConnection;

.field private volatile connect_flag:I

.field private connection:Landroid/content/ServiceConnection;

.field private loginSdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

.field private mCurrentActivity:Landroid/app/Activity;

.field private mMainActivity:Landroid/app/Activity;

.field private mTouch:Z

.field private manager:Landroid/content/pm/PackageManager;

.field private miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

.field private sActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private serviceCallback:Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

.field private service_isntall_ask:I

.field private systemTime:J

.field private useHeartToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mLogin:Z

    sput-boolean v3, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mPay:Z

    sput-boolean v3, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->debugLogin:Z

    sput-boolean v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->debugTierCheck:Z

    sput-boolean v3, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->IS_LOGGED_IN:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sBase:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sStartTime:J

    sput-boolean v3, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sIsForeground:Z

    sput-boolean v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sCheckSoFiles:Z

    sput-boolean v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sCheckSDKElements:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sLastClickTime:J

    sput v3, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mReLoginTimes:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->PERMISSIONS:[Ljava/lang/String;

    sput-boolean v3, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sIsOnlyLocal:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/am;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/am;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->callbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sDownloadHandler:Lcom/xiaomi/gamecenter/sdk/DownloadHandler;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/an;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/an;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ao;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ao;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->delayHandler:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->serviceUpdateHandler:Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ap;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ap;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openAppConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_Lock_:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->useHeartToken:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miliaoInfo:Lcom/xiaomi/gamecenter/sdk/gam/MiliaoInfo;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/l;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/l;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/y;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/y;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ar;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/ar;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkLoginConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform$8;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform$8;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->serviceCallback:Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/c;->a(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcn/com/wali/basetool/log/Logger;->a:Z

    sget-boolean v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sCheckSDKElements:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->b(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->a()V

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->d(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;->setCheckInitEnv(Z)V

    :cond_0
    sput-object p1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sApplication:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sActivityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sput-object p3, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sOnInitProcessListener:Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;

    sput-object p2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {p2, v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setSocialGame(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->manager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;-><init>()V

    const-string v1, "SDK_JAR_VERSION"

    const-string v2, "SDK_MI_SP_3.1.2"

    invoke-static {p1, v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;->setSdkVersion(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a()Lcom/xiaomi/gamecenter/sdk/utils/n;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/m;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/xiaomi/gamecenter/sdk/m;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)V

    invoke-virtual {v2, p1, v0, v3}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;Lcom/xiaomi/gamecenter/sdk/utils/n$a;)V

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->MIGAME:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;->getNumber()I

    move-result v2

    invoke-static {p1, v0, v2, v1}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->init(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sApplication:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a(Landroid/app/Application;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/k;

    invoke-direct {v0, p1}, Lcom/xiaomi/gamecenter/sdk/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sJarCrashExceptionHandler:Lcom/xiaomi/gamecenter/sdk/k;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    invoke-direct {v0, p1}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->accountAdapter:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/bd;->a()Lcom/xiaomi/gamecenter/sdk/bd;

    move-result-object v1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sApplication:Landroid/content/Context;

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/entry/Image;->init(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMilinkAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mi/milink/sdk/base/Global;->init(Landroid/content/Context;Lcom/mi/milink/sdk/data/ClientAppInfo;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkWhetherShowMilinkLog()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkLog;->getInstance()Lcom/mi/milink/sdk/debug/MiLinkLog;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->setFileTracerLevel(I)V

    invoke-static {}, Lcom/mi/milink/sdk/base/debug/CustomLogcat;->getCustomTracer()Lcom/mi/milink/sdk/base/debug/Tracer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/base/debug/CustomLogcat;->getCustomTracer()Lcom/mi/milink/sdk/base/debug/Tracer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/base/debug/Tracer;->setEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "xiaomi.cfg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/xiaomi/gamecenter/sdk/a;->a(Landroid/content/Context;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Landroid/content/Context;)V

    :try_start_4
    invoke-static {p1}, Lcom/wali/gamecenter/report/ReportManager;->Init(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    const/16 v0, 0x7e4

    :try_start_5
    invoke-static {p1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->FastXmsdkReport(Landroid/content/Context;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->delayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->delayHandler:Landroid/os/Handler;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->delayHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->reqSdkInit(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/bh;->a()Lcom/xiaomi/gamecenter/sdk/bh;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/n;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/n;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V

    invoke-virtual {v0, p2, v1}, Lcom/xiaomi/gamecenter/sdk/bh;->a(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/bh$a;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getConfigFromServer()V

    const-string v0, "checksdkvc"

    const-string v1, "sdk vc:3.1.2_12710,build time:20191010094407,commitida95dcf2f63bf3ec626d0eeff85fc57e3b24703b4"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-direct {v0, p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    invoke-static {p1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/b;->a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-direct {v0, p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a()Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/o;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/gamecenter/sdk/o;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-virtual {v1, p1, v2}, Lcom/xiaomi/gamecenter/sdk/notice/NoticeManager;->a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/bg;)V

    return-void

    :catch_0
    move-exception v0

    const-string v1, "MiGameSDK.MiCommplatform"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v1, "MiGameSDK.MiCommplatform"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public static Init(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->Init(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;)V

    return-void
.end method

.method public static Init(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sInstance:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "MiAppInfo is Null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-class v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sInstance:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;-><init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sInstance:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    :cond_1
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    sput-object p1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    goto :goto_0
.end method

.method private static SendToastAppIDError(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mCurrentActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$100()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->showConnectTimeoutAlertDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openApp(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->loginSdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    return-object p1
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sIsOnlyLocal:Z

    return v0
.end method

.method static synthetic access$1400()Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->accountAdapter:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    return-object v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openAppForInit()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->SendToastAppIDError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sApplication:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    return p1
.end method

.method static synthetic access$1900()Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->serviceUpdateHandler:Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;

    return-object v0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->callbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->login(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100()Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isMilinkTestInDcfg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->hideConnectTimeoutAlertDialog()V

    return-void
.end method

.method static synthetic access$400()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    return-object v0
.end method

.method static synthetic access$402(Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    .locals 0

    sput-object p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I

    return v0
.end method

.method static synthetic access$502(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I

    return p1
.end method

.method static synthetic access$600(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/IServiceCallback;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->serviceCallback:Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    return-object v0
.end method

.method static synthetic access$700()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_Lock_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->showConnectFailAlertDialog()V

    return-void
.end method

.method protected static cancelSendToastServiceConnTimeOutMsg()V
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->hideConnectTimeoutAlertDialog()V

    :cond_0
    return-void
.end method

.method private checkFaultNotice(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/p;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/gamecenter/sdk/p;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected static checkServiceVersion(Landroid/content/Context;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/PluginVersionCode;->a()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkWhetherShowMilinkLog()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ThisIsJustForOpenMilinkLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static exitCheck()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sLastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    sput-wide v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sLastClickTime:J

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getConfigFromServer()V
    .locals 3

    sget-boolean v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sIsOnlyLocal:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkServiceVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->accountAdapter:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;->SERVICE:Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->a(Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openAppForInit()Z

    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->r:Ljava/util/List;

    const-string v1, "ALIPAY"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->r:Ljava/util/List;

    const-string v1, "WXWAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->callbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->callbackHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->accountAdapter:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;->LOCAL:Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->a(Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sInstance:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please call MiCommplatform.Init () in application onCreate() FIRST and the MiappInfo parameter can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sInstance:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    return-object v0
.end method

.method public static getMilinkAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;
    .locals 5

    const-string v2, "misdk"

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->e:I

    if-nez v1, :cond_1

    add-int/lit8 v1, v1, 0x64

    :cond_1
    new-instance v3, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;

    const/16 v4, 0x4e22

    invoke-direct {v3, v4}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;-><init>(I)V

    invoke-virtual {v3, v2}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->setAppName(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;

    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v3, v2}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isMilinkTestInDcfg()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "TEST"

    invoke-virtual {v3, v2}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->setReleaseChannel(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;

    :goto_0
    invoke-virtual {v3, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->setVersionName(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;

    invoke-virtual {v3, v1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->setVersionCode(I)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->setLinkMode(I)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;

    invoke-virtual {v3}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->build()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    const-string v1, "MiGameSDK.MiCommplatform"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "milink is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/wali/basetool/log/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string v2, "RELEASE"

    invoke-virtual {v3, v2}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->setReleaseChannel(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;

    goto :goto_0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "SDK_MI_SP_3.1.2"

    return-object v0
.end method

.method private static hideConnectTimeoutAlertDialog()V
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sTimeoutAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sTimeoutAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method private static isMilinkTestInDcfg()Z
    .locals 3

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    const-string v1, "MILINK_TEST"

    const-string v2, "TRUE"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isSdkServiceExist(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->f(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static login(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sOnInitProcessListener:Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;

    if-eqz v0, :cond_4

    const-string v0, "common"

    const-string v1, "base"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sIsOnlyLocal:Z

    if-nez v0, :cond_1

    sget v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->p:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->accountAdapter:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;->SERVICE:Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->a(Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/LoginType;->LOGIN:Lcom/xiaomi/gamecenter/sdk/entry/LoginType;

    invoke-static {p0, p1, v0, p2}, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->a(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Lcom/xiaomi/gamecenter/sdk/entry/LoginType;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->s:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->s:Ljava/util/List;

    const-string v1, "QQ"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->s:Ljava/util/List;

    const-string v1, "MI"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->s:Ljava/util/List;

    const-string v1, "WX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->accountAdapter:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;->LOCAL:Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->a(Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/pay/IndependentPay;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sIsOnlyLocal:Z

    if-nez v0, :cond_6

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkServiceVersion(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->accountAdapter:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->accountAdapter:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;->SERVICE:Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->a(Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openAppForInit()Z

    :cond_5
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->s:Ljava/util/List;

    const-string v1, "QQ"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->s:Ljava/util/List;

    const-string v1, "MI"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "common"

    const-string v1, "base"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->s:Ljava/util/List;

    const-string v1, "WX"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->accountAdapter:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->accountAdapter:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;->LOCAL:Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->a(Lcom/xiaomi/gamecenter/sdk/entry/AccountStatus;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static miLogin(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->ChangeIndex()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->d()V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sOnInitProcessListener:Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    sget v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->p:I

    if-ne v0, v1, :cond_1

    const-string v0, "common"

    const-string v1, "base"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/s;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/s;-><init>(Ljava/lang/String;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sLoginActivity:Landroid/app/Activity;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sOnLoginProcessListener:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    invoke-static {v0, v1, p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->login(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static miLogin(Z)V
    .locals 1

    sput-boolean p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sIsOnlyLocal:Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Ljava/lang/String;)V

    return-void
.end method

.method private miLogout(Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/t;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/gamecenter/sdk/t;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method private miWindow(Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x4656

    invoke-interface {p1, v0}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/u;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/gamecenter/sdk/u;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method private static openApp(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openAppConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->openAppReportForInit(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openAppConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openAppConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openAppConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method

.method private static openAppForInit()Z
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v2, 0xa83e

    if-lt v1, v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openAppConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerMilinkUrls(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static registerWxCpCallBack(Lcom/xiaomi/gamecenter/sdk/WxCpCallback;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sWxCpCallBack:Lcom/xiaomi/gamecenter/sdk/WxCpCallback;

    return-void
.end method

.method public static reportKeyPath(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReportCp(Ljava/lang/String;)V

    return-void
.end method

.method private reqSdkInit(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/al;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/gamecenter/sdk/al;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method protected static sendToastServiceConnTimeOutMsg()V
    .locals 4

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public static setCheckSDKElements(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sCheckSDKElements:Z

    return-void
.end method

.method public static setDebugPriceTierCheck(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->debugTierCheck:Z

    return-void
.end method

.method public static setNeedCheckPayment(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->a:Z

    return-void
.end method

.method public static setNeedToCheckSoFiles(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sCheckSoFiles:Z

    return-void
.end method

.method private static showConnectFailAlertDialog()V
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sActivity:Landroid/app/Activity;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sActivity:Landroid/app/Activity;

    const-string v3, "mio_dialog_login_failure"

    invoke-static {v1, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sActivity:Landroid/app/Activity;

    const-string v1, "btn_left"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sActivity:Landroid/app/Activity;

    const-string v4, "btn_right"

    invoke-static {v1, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/ad;

    invoke-direct {v3, v2}, Lcom/xiaomi/gamecenter/sdk/ad;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ae;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ae;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static showConnectTimeoutAlertDialog()V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sTimeoutAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sActivity:Landroid/app/Activity;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sActivity:Landroid/app/Activity;

    const-string v2, "mio_dialog_login_time_out"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sActivity:Landroid/app/Activity;

    const-string v1, "btn_close"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sActivity:Landroid/app/Activity;

    const-string v2, "btn_left"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sActivity:Landroid/app/Activity;

    const-string v5, "btn_right"

    invoke-static {v2, v5}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    sput-object v3, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sTimeoutAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v4, Lcom/xiaomi/gamecenter/sdk/af;

    invoke-direct {v4, v3}, Lcom/xiaomi/gamecenter/sdk/af;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ag;

    invoke-direct {v0, v3}, Lcom/xiaomi/gamecenter/sdk/ag;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ah;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ah;-><init>()V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sTimeoutAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sTimeoutAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public final canOpenEntrancePage()Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected final checkAndConnect(Landroid/content/Context;Z)I
    .locals 7

    const/4 v6, 0x1

    const/4 v1, -0x1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sActivity:Landroid/app/Activity;

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    if-nez v0, :cond_2

    const-string v0, "MiCommplatform"

    const-string v2, "Please call MiCommplatform.Init () in application onCreate() and the MiappInfo parameter can not be null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_Lock_:Ljava/lang/Object;

    monitor-enter v2

    const/high16 v0, -0x80000000

    :try_start_0
    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.xiaomi.gamecenter.sdk.service"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendToastServiceConnTimeOutMsg()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->_Lock_:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    if-eqz v0, :cond_6

    const-string v0, ">>>"

    const-string v1, "sdk.ConnService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->cancelSendToastServiceConnTimeOutMsg()V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_2
    :pswitch_1
    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connect_flag:I

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_4
    :try_start_4
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->cancelSendToastServiceConnTimeOutMsg()V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->cancelSendToastServiceConnTimeOutMsg()V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendToastServiceSignError()V

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final checkBonus(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/RewardListener;)Z
    .locals 6

    const/16 v5, 0x807

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1}, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v3, "com.xiaomi.gamecenter.launcher_from"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v3

    const/16 v4, 0x802

    invoke-virtual {v3, v2, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReportBonus(Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    const/16 v2, 0x807

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x805

    invoke-virtual {v2, v3, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReportBonus(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/xiaomi/gamecenter/sdk/ac;

    invoke-direct {v4, p0, v2, v1, p2}, Lcom/xiaomi/gamecenter/sdk/ac;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Ljava/lang/String;Landroid/content/pm/PackageInfo;Lcom/xiaomi/gamecenter/sdk/RewardListener;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x806

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not entry activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final checkUserChanged(Landroid/app/Activity;I)Z
    .locals 2

    const/16 v0, -0x33

    if-ne p2, v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setAccount(Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/v;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/v;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final disconnect()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->serviceCallback:Lcom/xiaomi/gamecenter/sdk/IServiceCallback;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->unregistCallBack(Lcom/xiaomi/gamecenter/sdk/IServiceCallback;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    sput-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    const-string v1, ">>>>"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disconnect:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final generateCpOrderId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getAccountAdapter()Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->accountAdapter:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    return-object v0
.end method

.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sApplication:Landroid/content/Context;

    return-object v0
.end method

.method public final getCurrentActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mCurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method final getFuidFromService()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sApplication:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sApplication:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sApplication:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v2, "MiGameSDK.MiCommplatform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "versionCode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7ef40

    if-le v1, v2, :cond_1

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkAndConnect(Landroid/content/Context;Z)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->getFuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string v1, "MiGameSDK.MiCommplatform"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getFuidFromService "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "MiGameSDK.MiCommplatform"

    const-string v3, "getFuidFromService error"

    invoke-static {v2, v3, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final getMD5([B)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_3

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_2

    aget-byte v0, v3, v1

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x100

    :cond_0
    const/16 v4, 0x19

    if-ge v0, v4, :cond_1

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getMainActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mMainActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getMiAccountInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAccount()Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMiAppInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    return-object v0
.end method

.method final getMilinkAccountProps()Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sApplication:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sApplication:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sApplication:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v2, "MiGameSDK.MiCommplatform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "versionCode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x900b0

    if-lt v1, v2, :cond_1

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkAndConnect(Landroid/content/Context;Z)I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->getMilinkProps(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMilinkProps "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "getMilinkProps error"

    invoke-static {v2}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected final getSDKService()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    return-object v0
.end method

.method protected final getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "3010002"

    return-object v0
.end method

.method public final isMiAccountLogin()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context is Null, please init SDK"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    const-string v2, "android.permission.GET_ACCOUNTS"

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "XiaomiSDK lacks any of android.permission.GET_ACCOUNTS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->accountAdapter:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.xiaomi"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0

    :cond_3
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->accountAdapter:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->a()Z

    goto :goto_0
.end method

.method protected final isTopActivity(Landroid/app/Activity;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public final miAppExit(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnExitListner;)V
    .locals 2

    const/16 v1, 0x2711

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->accountAdapter:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->exitCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v1}, Lcom/xiaomi/gamecenter/sdk/OnExitListner;->onExit(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->accountAdapter:Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->exitCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, v1}, Lcom/xiaomi/gamecenter/sdk/OnExitListner;->onExit(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_3

    const/16 v0, -0x4656

    invoke-interface {p2, v0}, Lcom/xiaomi/gamecenter/sdk/OnExitListner;->onExit(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/aa;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/aa;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnExitListner;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public final miChangeAccountLogin(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->ChangeIndex()V

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x4656

    invoke-interface {p2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/LoginType;->CHANGEACCOUNT:Lcom/xiaomi/gamecenter/sdk/entry/LoginType;

    invoke-static {p1, p2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->a(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Lcom/xiaomi/gamecenter/sdk/entry/LoginType;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final miLogin(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Ljava/lang/String;)V

    return-void
.end method

.method public final miLogin(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x4656

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    sput-object p1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sLoginActivity:Landroid/app/Activity;

    sput-object p2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sOnLoginProcessListener:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/r;

    invoke-direct {v1, p0, p2, p3}, Lcom/xiaomi/gamecenter/sdk/r;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public final miUniPay(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)I
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miUniPay(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final miUniPay(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/j;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    const/16 v1, -0x4653

    invoke-interface {p3, v1}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V

    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v1, :cond_2

    const/16 v0, -0x4656

    invoke-interface {p3, v0}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-static {p1, p2, p3, v1}, Lcom/xiaomi/gamecenter/sdk/SDKPaymentUtil;->a(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    goto :goto_0
.end method

.method public final miUniPayOffline(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x4656

    invoke-interface {p3, v0}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;-><init>()V

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->getCpOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setCpOrderId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->getProductCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setProductCode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setCount(I)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-static {p1, v0, p3, v1}, Lcom/xiaomi/gamecenter/sdk/SDKPaymentUtil;->a(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final miUniPayOnline(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;Landroid/os/Bundle;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    if-eqz v0, :cond_0

    const/16 v0, -0x4656

    invoke-interface {p4, v0}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;-><init>()V

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->getCpOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setCpOrderId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->getMili()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setAmount(I)V

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->getCpUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setCpUserInfo(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setExtraInfo(Landroid/os/Bundle;)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-static {p1, v0, p4, v1}, Lcom/xiaomi/gamecenter/sdk/SDKPaymentUtil;->a(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final newSDKInstalled(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkAndConnect(Landroid/content/Context;Z)I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onMainActivityCreate(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->PERMISSIONS:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/PermissionUtils;->a(Landroid/app/Activity;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mMainActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/bd;->a()Lcom/xiaomi/gamecenter/sdk/bd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isMilinkTestInDcfg()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMilinkAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/base/Global;->init(Landroid/content/Context;Lcom/mi/milink/sdk/data/ClientAppInfo;)V

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkFaultNotice(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ai;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/gamecenter/sdk/ai;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/c;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a(Landroid/app/Activity;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MiGameSDK.MiCommplatform"

    const-string v2, "onActivityCreate error"

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onMainActivityDestory(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/d;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->c()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MiGameSDK.MiCommplatform"

    const-string v2, "onActivityDestory error"

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final sendLogToSDKSerivce(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sdk:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    invoke-interface {v0, p1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->sendLogToService(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final sendToastMsg()V
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected final sendToastServiceSignError()V
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->toastHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected final setPay(Z)V
    .locals 0

    sput-boolean p1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mPay:Z

    return-void
.end method

.method public final setTouch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->mTouch:Z

    return-void
.end method

.method public final submitRoleData(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/RoleData;)V
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/aj;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/aj;-><init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/RoleData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public final updateScreenOrientation(Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setOrientation(Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;)V

    return-void
.end method
