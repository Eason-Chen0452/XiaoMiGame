.class public Lcom/mi/milink/sdk/base/Global;
.super Ljava/lang/Object;


# static fields
.field public static LAST_PACKET_SEND_TIME:J = 0x0L

.field private static final PROTOCOL_VERSION:B = 0x3t

.field public static STARTUP_TIME:J = 0x0L

.field private static final SUB_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiLinkServiceBinder"

.field private static final VERSION:I = 0x2

.field private static clientAppInfo:Lcom/mi/milink/sdk/data/ClientAppInfo;

.field private static clientIp:Ljava/lang/String;

.field private static clientIsp:Ljava/lang/String;

.field private static clinetInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mi/milink/sdk/data/ClientAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static context:Landroid/content/Context;

.field private static isDebug:Z

.field private static isInit:Z

.field private static pid:I

.field private static uniqueSeqNO:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mi/milink/sdk/base/Global;->isInit:Z

    sput-boolean v0, Lcom/mi/milink/sdk/base/Global;->isDebug:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milink/sdk/base/Global;->clientAppInfo:Lcom/mi/milink/sdk/data/ClientAppInfo;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/base/Global;->clinetInfoMap:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/mi/milink/sdk/base/Global;->STARTUP_TIME:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/mi/milink/sdk/base/Global;->LAST_PACKET_SEND_TIME:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/mi/milink/sdk/base/Global;->uniqueSeqNO:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addClientAppInfo(Lcom/mi/milink/sdk/data/ClientAppInfo;)V
    .locals 2

    sget-object v0, Lcom/mi/milink/sdk/base/Global;->clientAppInfo:Lcom/mi/milink/sdk/data/ClientAppInfo;

    if-nez v0, :cond_0

    sput-object p0, Lcom/mi/milink/sdk/base/Global;->clientAppInfo:Lcom/mi/milink/sdk/data/ClientAppInfo;

    :cond_0
    sget-object v0, Lcom/mi/milink/sdk/base/Global;->clinetInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final cancelProtection()V
    .locals 3

    const-string v0, "protect.client"

    invoke-static {v0}, Lcom/mi/milink/sdk/data/Option;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "MiLinkServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Client Protection Cleared : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final currentProcessName()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string v0, "activity"

    invoke-static {v0}, Lcom/mi/milink/sdk/base/Global;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, v4, :cond_2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static final getApplicationContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static final getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static final getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public static final getCacheDir()Ljava/io/File;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static final getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;
    .locals 2

    sget-object v0, Lcom/mi/milink/sdk/base/Global;->clientAppInfo:Lcom/mi/milink/sdk/data/ClientAppInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->recoveryClient()V

    sget-object v0, Lcom/mi/milink/sdk/base/Global;->clientAppInfo:Lcom/mi/milink/sdk/data/ClientAppInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/base/BaseLibException;

    const-string v1, "Global\'s clientAppInfo is NULL, have your Application in manifest subclasses BaseApplication or Call \'Global.init(this)\' in your own Application ? "

    invoke-direct {v0, v1}, Lcom/mi/milink/sdk/base/BaseLibException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/mi/milink/sdk/base/Global;->clientAppInfo:Lcom/mi/milink/sdk/data/ClientAppInfo;

    return-object v0
.end method

.method public static final getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;
    .locals 3

    sget-object v0, Lcom/mi/milink/sdk/base/Global;->clinetInfoMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/data/ClientAppInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/base/BaseLibException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Global\'s clientAppInfo is NULL, have your Application in manifest subclasses BaseApplication or Call \'Global.init(this)\' in your own Application "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mi/milink/sdk/base/BaseLibException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public static getClientIp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/base/Global;->clientIp:Ljava/lang/String;

    return-object v0
.end method

.method public static getClientIsp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/base/Global;->clientIsp:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mi/milink/sdk/base/Global;->clientIsp:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static final getContext()Landroid/content/Context;
    .locals 2

    sget-object v0, Lcom/mi/milink/sdk/base/Global;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/base/BaseLibException;

    const-string v1, "Global\'s Context is NULL, have your Application in manifest subclasses BaseApplication or Call \'Global.init(this)\' in your own Application ? "

    invoke-direct {v0, v1}, Lcom/mi/milink/sdk/base/BaseLibException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/mi/milink/sdk/base/Global;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static final getFilesDir()Ljava/io/File;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getMainHandler()Landroid/os/Handler;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public static final getMainLooper()Landroid/os/Looper;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public static final getMiLinkProtocolVersion()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public static final getMiLinkSubVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static final getMiLinkVersion()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static final getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static final getPackageName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPid()I
    .locals 1

    sget v0, Lcom/mi/milink/sdk/base/Global;->pid:I

    return v0
.end method

.method public static final getSequence()I
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/base/Global;->uniqueSeqNO:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public static final getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final init(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mi/milink/sdk/base/Global;->isInit:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/mi/milink/sdk/base/Global;->pid:I

    invoke-static {p0}, Lcom/mi/milink/sdk/base/Global;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public static final init(Landroid/content/Context;Lcom/mi/milink/sdk/data/ClientAppInfo;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/mi/milink/sdk/base/Global;->isInit:Z

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/mi/milink/sdk/base/Global;->pid:I

    invoke-static {p0}, Lcom/mi/milink/sdk/base/Global;->setContext(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/mi/milink/sdk/base/Global;->setClientAppInfo(Lcom/mi/milink/sdk/data/ClientAppInfo;)V

    return-void
.end method

.method public static final isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/mi/milink/sdk/base/Global;->isDebug:Z

    return v0
.end method

.method public static isInit()Z
    .locals 1

    sget-boolean v0, Lcom/mi/milink/sdk/base/Global;->isInit:Z

    return v0
.end method

.method public static final isMainProcess()Z
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSuicideEnable()Z
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    const/16 v1, 0x271e

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    const/16 v1, 0x4e22

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    const/16 v1, 0x4e25

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final protectClient()V
    .locals 2

    const-string v0, "protect.client"

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/data/Option;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static final recoveryClient()V
    .locals 4

    const-string v0, "protect.client"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/data/Option;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "MiLinkServiceBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Client Protection Loaded : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lcom/mi/milink/sdk/data/ClientAppInfo;

    invoke-direct {v1, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/mi/milink/sdk/base/Global;->setClientAppInfo(Lcom/mi/milink/sdk/data/ClientAppInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkServiceBinder"

    const-string v2, "Client Protection Failed"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final removeStickyBroadcast(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final sendBroadcast(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static final sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public static final sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->sendStickyOrderedBroadcast(Landroid/content/Intent;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final setClientAppInfo(Lcom/mi/milink/sdk/data/ClientAppInfo;)V
    .locals 2

    sput-object p0, Lcom/mi/milink/sdk/base/Global;->clientAppInfo:Lcom/mi/milink/sdk/data/ClientAppInfo;

    sget-object v0, Lcom/mi/milink/sdk/base/Global;->clinetInfoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->protectClient()V

    return-void
.end method

.method public static setClientIp(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/mi/milink/sdk/base/Global;->clientIp:Ljava/lang/String;

    return-void
.end method

.method public static setClientIsp(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/mi/milink/sdk/base/Global;->clientIsp:Ljava/lang/String;

    return-void
.end method

.method public static final setContext(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    sput-object p0, Lcom/mi/milink/sdk/base/Global;->context:Landroid/content/Context;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mi/milink/sdk/base/Global;->isDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "Mns.Global.Runtime"

    const-string v2, "DEBUG is ON"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    sput-boolean v1, Lcom/mi/milink/sdk/base/Global;->isDebug:Z

    goto :goto_1
.end method

.method public static final startupTimespan()J
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/mi/milink/sdk/base/Global;->STARTUP_TIME:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static final unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
