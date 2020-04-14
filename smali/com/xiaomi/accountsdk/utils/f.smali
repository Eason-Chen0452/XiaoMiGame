.class public final Lcom/xiaomi/accountsdk/utils/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Lcom/xiaomi/accountsdk/utils/f;


# instance fields
.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Ljava/lang/Object;

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaomi/accountsdk/account/URLs;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/configuration"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/f;->a:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/accountsdk/utils/f;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/f;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/utils/f;->b:Lcom/xiaomi/accountsdk/utils/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/f;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/f;->d:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/xiaomi/accountsdk/utils/f;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/f;->b:Lcom/xiaomi/accountsdk/utils/f;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/utils/f;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Date;)V
    .locals 6

    if-nez p1, :cond_0

    const-string v0, "SyncServerTimeExecutor"

    const-string v1, "server date is null"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->g(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/xiaomi/accountsdk/utils/f;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v4, p0, Lcom/xiaomi/accountsdk/utils/f;->e:J

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/utils/f;->e:J

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/f;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/xiaomi/accountsdk/utils/g;

    invoke-direct {v1, p0}, Lcom/xiaomi/accountsdk/utils/g;-><init>(Lcom/xiaomi/accountsdk/utils/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
