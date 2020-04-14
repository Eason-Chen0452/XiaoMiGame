.class public Lcom/xiaomi/game/plugin/stat/b/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/xiaomi/game/plugin/stat/b/a;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/lang/String;

.field private d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/game/plugin/stat/b/a;->b:Lcom/xiaomi/game/plugin/stat/b/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/b/a;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/game/plugin/stat/b/a;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/b/a;->d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    return-object v0
.end method

.method public static a()Lcom/xiaomi/game/plugin/stat/b/a;
    .locals 2

    sget-object v0, Lcom/xiaomi/game/plugin/stat/b/a;->b:Lcom/xiaomi/game/plugin/stat/b/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/game/plugin/stat/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/game/plugin/stat/b/a;->b:Lcom/xiaomi/game/plugin/stat/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/game/plugin/stat/b/a;

    invoke-direct {v0}, Lcom/xiaomi/game/plugin/stat/b/a;-><init>()V

    sput-object v0, Lcom/xiaomi/game/plugin/stat/b/a;->b:Lcom/xiaomi/game/plugin/stat/b/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/game/plugin/stat/b/a;->b:Lcom/xiaomi/game/plugin/stat/b/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/game/plugin/stat/b/a;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/game/plugin/stat/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/b/a;->d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/c/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/b/a;->d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/b/d;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "has uploaded crash in 1 minute. Don\'t upload crash in 1 min. "

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload  crash: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/b/a;->d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/game/plugin/stat/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "upload  crash success."

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/b/a;->d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/game/plugin/stat/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/b/a;->d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/b/d;->e(Landroid/content/Context;)Z

    :cond_2
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "upload  crash failed."

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/xiaomi/game/plugin/stat/c/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_4
    :try_start_1
    const-string v0, "no  crash ."

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private b()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/b/a;->d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/c/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/b/a;->d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/c/a;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Today has uploaded the init. Return don\'t upload init again! "

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/b/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/xiaomi/game/plugin/stat/b/a$3;

    invoke-direct {v2, p0}, Lcom/xiaomi/game/plugin/stat/b/a$3;-><init>(Lcom/xiaomi/game/plugin/stat/b/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/b/a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/xiaomi/game/plugin/stat/b/a;->d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/b/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/xiaomi/game/plugin/stat/b/a$1;

    invoke-direct {v1, p0}, Lcom/xiaomi/game/plugin/stat/b/a$1;-><init>(Lcom/xiaomi/game/plugin/stat/b/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/b/a;->d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/b/b;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/xiaomi/game/plugin/stat/b/a;->b()Z

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/b/a;->d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/b/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/b/a;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/xiaomi/game/plugin/stat/b/a$2;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/game/plugin/stat/b/a$2;-><init>(Lcom/xiaomi/game/plugin/stat/b/a;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Ljava/lang/Throwable;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "begin uploadCrash: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "callstack cannot be empty!"

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_3

    const-string v0, "\u76ee\u524d\u662f\u4e3b\u7ebf\u7a0b...,\u9700\u8981\u505a\u4e9b\u989d\u5916\u5904\u7406\u624d\u80fd\u53ca\u65f6\u641c\u96c6crash"

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    :goto_1
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    const-string v0, "app_id"

    iget-object v3, p0, Lcom/xiaomi/game/plugin/stat/b/a;->d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v3}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_key"

    iget-object v3, p0, Lcom/xiaomi/game/plugin/stat/b/a;->d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v3}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device_uuid"

    iget-object v3, p0, Lcom/xiaomi/game/plugin/stat/b/a;->d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v3}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/game/plugin/stat/b/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device_os"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Android "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "device_model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_version"

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_channel"

    iget-object v3, p0, Lcom/xiaomi/game/plugin/stat/b/a;->d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v3}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_start_time"

    iget-object v3, p0, Lcom/xiaomi/game/plugin/stat/b/a;->c:Ljava/lang/String;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "app_crash_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crash_exception_type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "crash_exception_desc"

    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_4

    const-string v0, "OutOfMemoryError"

    :goto_2
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "crash_callstack"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/xiaomi/game/plugin/stat/c/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/b/a;->d:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/game/plugin/stat/b/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-direct {p0, v0}, Lcom/xiaomi/game/plugin/stat/b/a;->a(Ljava/lang/String;)Z

    :cond_2
    :goto_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v0, "\u76ee\u524d\u662f\u975eUI\u7ebf\u7a0b...,\u4e0d\u9700\u8981\u505a\u4e9b\u989d\u5916\u5904\u7406\u4e5f\u80fd\u53ca\u65f6\u641c\u96c6crash"

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error to upload the exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/game/plugin/stat/c/a;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_2
.end method
