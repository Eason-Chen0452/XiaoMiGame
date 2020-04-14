.class Lcom/xiaomi/game/plugin/stat/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static volatile c:Lcom/xiaomi/game/plugin/stat/b/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/b/b;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/b/b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/game/plugin/stat/b/b;->c:Lcom/xiaomi/game/plugin/stat/b/b;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/game/plugin/stat/b/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/game/plugin/stat/b/b;->c:Lcom/xiaomi/game/plugin/stat/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/game/plugin/stat/b/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/game/plugin/stat/b/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/game/plugin/stat/b/b;->c:Lcom/xiaomi/game/plugin/stat/b/b;

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/Thread;Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 5

    :try_start_0
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/game/plugin/stat/c/a;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/game/plugin/stat/c/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.xiaomi.game"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v1, 0x1

    invoke-static {}, Lcom/xiaomi/game/plugin/stat/b/a;->a()Lcom/xiaomi/game/plugin/stat/b/a;

    move-result-object v3

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p3, v0}, Lcom/xiaomi/game/plugin/stat/b/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)Z

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "com.xiaomi.game"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/game/plugin/stat/b/a;->a()Lcom/xiaomi/game/plugin/stat/b/a;

    move-result-object v0

    const-string v1, "31"

    invoke-virtual {v0, p3, v1}, Lcom/xiaomi/game/plugin/stat/b/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)Z

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/b/b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/b/b;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/b/b;->a:Landroid/content/Context;

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/game/plugin/stat/b/b;->a(Ljava/lang/Thread;Landroid/content/Context;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
