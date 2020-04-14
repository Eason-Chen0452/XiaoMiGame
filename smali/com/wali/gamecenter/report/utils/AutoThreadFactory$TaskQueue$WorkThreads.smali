.class public Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;
.super Ljava/lang/Thread;


# instance fields
.field private _lock_:Ljava/lang/Object;

.field private volatile running:Z

.field final synthetic this$0:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;

.field private working:Ljava/lang/Runnable;

.field private works:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;)V
    .locals 2

    iput-object p1, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->this$0:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->works:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->_lock_:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->running:Z

    return-void
.end method

.method static synthetic access$000(Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->running:Z

    return v0
.end method

.method static synthetic access$100(Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->works:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v1, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->_lock_:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->works:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->_lock_:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public append([Ljava/lang/Runnable;)V
    .locals 5

    iget-object v1, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->_lock_:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->works:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->_lock_:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel()V
    .locals 2

    iget-object v1, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->_lock_:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->running:Z

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->_lock_:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancel(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v1, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->_lock_:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->working:Ljava/lang/Runnable;

    if-ne v0, p1, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->works:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 7

    const/4 v6, 0x0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->running:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->works:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->works:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->works:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->works:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->_lock_:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->_lock_:Ljava/lang/Object;

    iget-object v4, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->this$0:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;

    invoke-static {v4}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->access$200(Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->works:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->this$0:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;

    invoke-static {v0}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->access$200(Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->running:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->works:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;->this$0:Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;->access$302(Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue;Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;)Lcom/wali/gamecenter/report/utils/AutoThreadFactory$TaskQueue$WorkThreads;

    return-void

    :catch_1
    move-exception v0

    :cond_4
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method
