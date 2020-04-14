.class public Lcom/xiaomi/game/plugin/stat/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/game/plugin/stat/a/b$a;
    }
.end annotation


# static fields
.field private static volatile b:Ljava/util/Timer;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private c:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/game/plugin/stat/a/b;->b:Ljava/util/Timer;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/b;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/xiaomi/game/plugin/stat/a/b;->c:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/b;->c:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/game/plugin/stat/a/b;->a()V

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/game/plugin/stat/a/b;->b()V

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/b;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/game/plugin/stat/a/b;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/b;->c:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    return-object v0
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/b;->c:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/b;->c:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/game/plugin/stat/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/b;->c:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/b;->c:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Today has uploaded the init. Return don\'t upload init again! "

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/xiaomi/game/plugin/stat/a/a;

    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/a/b;->c:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-direct {v0, v1}, Lcom/xiaomi/game/plugin/stat/a/a;-><init>(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;)V

    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/a/b;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/xiaomi/game/plugin/stat/a/b$1;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/game/plugin/stat/a/b$1;-><init>(Lcom/xiaomi/game/plugin/stat/a/b;Lcom/xiaomi/game/plugin/stat/a/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.xiaomi."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.wali.live"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/b;->c:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/b;->c:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/a/b;->c:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/c/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/xiaomi/game/plugin/stat/a/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/game/plugin/stat/a/b;->b:Ljava/util/Timer;

    if-nez v0, :cond_0

    const-class v6, Lcom/xiaomi/game/plugin/stat/a/b;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/xiaomi/game/plugin/stat/a/b;->b:Ljava/util/Timer;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/xiaomi/game/plugin/stat/a/b;->b:Ljava/util/Timer;

    new-instance v1, Lcom/xiaomi/game/plugin/stat/a/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/game/plugin/stat/a/b$a;-><init>(Lcom/xiaomi/game/plugin/stat/a/b;Lcom/xiaomi/game/plugin/stat/a/b$1;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    sget-object v0, Lcom/xiaomi/game/plugin/stat/a/b;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_2
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
