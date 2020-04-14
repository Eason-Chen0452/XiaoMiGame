.class public Lcom/xiaomi/gamecenter/sdk/report/ReportData;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

.field private static b:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

.field private static c:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

.field private static d:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

.field private static e:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Landroid/os/HandlerThread;

.field private static g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MiGameSDK.ReportData"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->g:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;
    .locals 0

    sput-object p0, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->c:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;
    .locals 0

    sput-object p0, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->b:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

    return-object p0
.end method

.method public static a()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->updataTraceId()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->getHeader()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 5

    new-instance v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    invoke-direct {v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;-><init>()V

    :try_start_0
    sget-boolean v0, Lcn/com/wali/basetool/log/Logger;->a:Z

    invoke-static {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->setLogEnabled(Z)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/utils/b;->n:Ljava/lang/String;

    invoke-static {p0, v0, v2, v3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->initHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->setSdkType(Ljava/lang/Integer;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->setAndroid(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a()Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->getBaseVersion()I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->getVersion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->setOs(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->setLang(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->setRegion(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->setTimeZone(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->setImeiMd5(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->setImeiSha1(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->setImeiSha2(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->setUa(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/r;->a()Lcom/xiaomi/gamecenter/sdk/utils/r;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/r;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->setUnionId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    const-string v0, "MiGameSDK.ReportData"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initDataSDK  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {p0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->initDataSDK(Landroid/app/Application;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    return-void

    :cond_0
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->getBaseVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "|"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {p0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->initDataSDK(Landroid/app/Application;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_7
    invoke-static {p0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->initDataSDK(Landroid/app/Application;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :goto_4
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method

.method public static a(Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0, p1}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, p2}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 7

    sget-object v6, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->g:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/report/a;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/report/a;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;)Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;
    .locals 0

    sput-object p0, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->d:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 2

    const-class v0, Lcom/xiaomi/gamecenter/sdk/report/ReportData;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic c()V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->setLocalTime(Ljava/lang/Long;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->setNetwork(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->setFuid(Ljava/lang/String;)V
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

.method public static c(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0, p2}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method private static declared-synchronized c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;",
            ")V"
        }
    .end annotation

    const-class v6, Lcom/xiaomi/gamecenter/sdk/report/ReportData;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->g:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/report/b;

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/report/b;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method static synthetic d()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->b:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

    return-object v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method static synthetic e()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->c:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;

    return-object v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method static synthetic f()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->e:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method

.method static synthetic g()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->d:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;

    return-object v0
.end method

.method private static g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->g:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/report/c;

    invoke-direct {v1, p3, p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/report/c;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
