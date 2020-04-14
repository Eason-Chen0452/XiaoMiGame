.class public Lcom/xiaomi/gamecenter/sdk/utils/n;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/utils/n$b;,
        Lcom/xiaomi/gamecenter/sdk/utils/n$a;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Lcom/xiaomi/gamecenter/sdk/utils/n;


# instance fields
.field private c:Lcom/xiaomi/gamecenter/sdk/utils/n$a;

.field private d:Landroid/os/HandlerThread;

.field private e:Landroid/os/Handler;

.field private f:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

.field private g:Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;

.field private h:I

.field private i:Lcom/xiaomi/gamecenter/sdk/utils/n$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wZdkKTab_gY-2LNA"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "wCxwXphYj3JMoEas"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "2jmj7l5rSw0yVb_v"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/n;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->c:Lcom/xiaomi/gamecenter/sdk/utils/n$a;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceDeviceInfoHelper"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->d:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/o;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/o;-><init>(Lcom/xiaomi/gamecenter/sdk/utils/n;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->e:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->h:I

    iput-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->i:Lcom/xiaomi/gamecenter/sdk/utils/n$b;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/utils/n;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->f:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/utils/n;Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->f:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    return-object p1
.end method

.method public static a()Lcom/xiaomi/gamecenter/sdk/utils/n;
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/n;->b:Lcom/xiaomi/gamecenter/sdk/utils/n;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/gamecenter/sdk/utils/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/n;->b:Lcom/xiaomi/gamecenter/sdk/utils/n;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/utils/n;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/n;->b:Lcom/xiaomi/gamecenter/sdk/utils/n;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/n;->b:Lcom/xiaomi/gamecenter/sdk/utils/n;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "SdkServiceInfo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)V
    .locals 7

    :try_start_0
    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->h:I

    const v1, 0x77cc2

    if-lt v0, v1, :cond_1

    invoke-interface {p2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/utils/n;->a:[Ljava/lang/String;

    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "service.device_id"

    invoke-static {p1, v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "service.imei_sha1"

    invoke-static {p1, v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->h:I

    const v1, 0x7a120

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->g:Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;

    invoke-interface {p2, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->exchangeInfo(Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;)Lcom/xiaomi/gamecenter/sdk/entry/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/ServiceInfo;->getImeiMd5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/ServiceInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/ServiceInfo;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/ServiceInfo;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/ServiceInfo;->getUa()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/ServiceInfo;->getUnionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "service.imei_md5"

    invoke-static {p1, v6, v1}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "service.imei"

    invoke-static {p1, v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "service.ua"

    invoke-static {p1, v1, v5}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "service.mac"

    invoke-static {p1, v1, v4}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "service.imsi"

    invoke-static {p1, v1, v3}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "service.union_id"

    invoke-static {p1, v1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->c:Lcom/xiaomi/gamecenter/sdk/utils/n$a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->c:Lcom/xiaomi/gamecenter/sdk/utils/n$a;

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/utils/n$a;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_1
    return-void

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->c:Lcom/xiaomi/gamecenter/sdk/utils/n$a;

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/utils/n$a;->b()V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "SdkServiceInfo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v1, "info.cachedtime"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/utils/n;Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/utils/n;)Lcom/xiaomi/gamecenter/sdk/utils/n$a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->c:Lcom/xiaomi/gamecenter/sdk/utils/n$a;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "service.device_id"

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/utils/n;)Lcom/xiaomi/gamecenter/sdk/utils/n$a;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->c:Lcom/xiaomi/gamecenter/sdk/utils/n$a;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "service.imei_md5"

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "service.imei_sha1"

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "service.imei"

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "service.ua"

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "service.mac"

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "service.union_id"

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static i(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    move v2, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    const-string v4, "com.xiaomi.gamecenter.sdk.service"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static j(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;Lcom/xiaomi/gamecenter/sdk/utils/n$a;)V
    .locals 8

    const-wide/16 v4, 0x0

    :try_start_0
    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->c:Lcom/xiaomi/gamecenter/sdk/utils/n$a;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->g:Lcom/xiaomi/gamecenter/sdk/entry/SdkJarInfo;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/n;->j(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->h:I

    const-string v0, "SdkServiceInfo"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "info.cachedtime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    sub-long v4, v2, v0

    const-wide/32 v6, 0x493e0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    const-string v4, "ServiceDeviceInfoHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cached time less than threshold: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < 300000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcn/com/wali/basetool/log/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->c:Lcom/xiaomi/gamecenter/sdk/utils/n$a;

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/utils/n$a;->a()V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/n;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ServiceDeviceInfoHelper"

    const-string v1, "sdk service not exist."

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->c:Lcom/xiaomi/gamecenter/sdk/utils/n$a;

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/utils/n$a;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->h:I

    const v1, 0x77cc2

    if-ge v0, v1, :cond_2

    const-string v0, "ServiceDeviceInfoHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sdk service version not valid : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->c:Lcom/xiaomi/gamecenter/sdk/utils/n$a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sdk service version not valid : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/utils/n$a;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->f:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    if-eqz v0, :cond_3

    const-string v0, "ServiceDeviceInfoHelper"

    const-string v1, "mGameCenterSDK exist ."

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->f:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)V

    goto :goto_0

    :cond_3
    const-string v0, "ServiceDeviceInfoHelper"

    const-string v1, "connect sdk service."

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->i:Lcom/xiaomi/gamecenter/sdk/utils/n$b;

    if-nez v0, :cond_4

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/n$b;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/gamecenter/sdk/utils/n$b;-><init>(Lcom/xiaomi/gamecenter/sdk/utils/n;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->i:Lcom/xiaomi/gamecenter/sdk/utils/n$b;

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->i:Lcom/xiaomi/gamecenter/sdk/utils/n$b;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n;->e:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
