.class Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/wali/basetool/io/HttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdleConnectionMonitorThread"
.end annotation


# static fields
.field private static d:Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;


# instance fields
.field private final a:Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;

.field private final b:I

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;->d:Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;

    return-void
.end method

.method public constructor <init>(Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;->a:Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;

    iput p2, p0, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;->b:I

    iput p3, p0, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;->c:I

    return-void
.end method

.method public static declared-synchronized a(Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;)V
    .locals 4

    const-class v1, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;->d:Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;

    if-nez v0, :cond_0

    new-instance v0, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;

    const/16 v2, 0xf

    const/16 v3, 0x1e

    invoke-direct {v0, p0, v2, v3}, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;-><init>(Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;II)V

    sput-object v0, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;->d:Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;

    invoke-virtual {v0}, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    :goto_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v0, p0, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;->c:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;->a:Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;

    invoke-virtual {v0}, Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;->closeExpiredConnections()V

    iget-object v0, p0, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;->a:Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;

    iget v1, p0, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;->b:I

    int-to-long v2, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    const-class v1, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;->a:Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;

    invoke-virtual {v0}, Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;->getConnectionsInPool()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;->d:Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    sput-object v4, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;->d:Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;

    goto :goto_1

    :cond_0
    :try_start_6
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
.end method
