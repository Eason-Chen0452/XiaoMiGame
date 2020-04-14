.class final Lcom/xiaomi/greendao/async/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/xiaomi/greendao/async/a;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Z

.field private volatile d:I

.field private volatile e:Lcom/xiaomi/greendao/async/b;

.field private volatile f:Lcom/xiaomi/greendao/async/b;

.field private volatile g:I

.field private h:I

.field private i:I

.field private j:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/greendao/async/c;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/16 v1, 0x32

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/greendao/async/c;->b:Ljava/util/concurrent/BlockingQueue;

    iput v1, p0, Lcom/xiaomi/greendao/async/c;->d:I

    iput v1, p0, Lcom/xiaomi/greendao/async/c;->g:I

    return-void
.end method

.method private a(Lcom/xiaomi/greendao/async/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/xiaomi/greendao/async/a;->c()V

    iget-object v0, p0, Lcom/xiaomi/greendao/async/c;->e:Lcom/xiaomi/greendao/async/b;

    iget-object v0, p0, Lcom/xiaomi/greendao/async/c;->f:Lcom/xiaomi/greendao/async/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/greendao/async/c;->j:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/xiaomi/greendao/async/c;->j:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/greendao/async/c;->j:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/greendao/async/c;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/xiaomi/greendao/async/c;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/greendao/async/c;->i:I

    iget v0, p0, Lcom/xiaomi/greendao/async/c;->i:I

    iget v1, p0, Lcom/xiaomi/greendao/async/c;->h:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Lcom/xiaomi/greendao/async/a;)V
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/greendao/async/c;->c(Lcom/xiaomi/greendao/async/a;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/greendao/async/c;->a(Lcom/xiaomi/greendao/async/a;)V

    return-void
.end method

.method private static c(Lcom/xiaomi/greendao/async/a;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/greendao/async/a;->e:J

    :try_start_0
    sget-object v0, Lcom/xiaomi/greendao/async/d;->a:[I

    iget-object v1, p0, Lcom/xiaomi/greendao/async/a;->a:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    invoke-virtual {v1}, Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/xiaomi/greendao/DaoException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/greendao/async/a;->a:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/xiaomi/greendao/async/a;->g:Ljava/lang/Throwable;

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/greendao/async/a;->f:J

    return-void

    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v1, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/xiaomi/greendao/AbstractDao;->delete(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Lcom/xiaomi/greendao/AbstractDao;->deleteInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/xiaomi/greendao/AbstractDao;->deleteInTx([Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v1, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/xiaomi/greendao/AbstractDao;->insert(Ljava/lang/Object;)J

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Lcom/xiaomi/greendao/AbstractDao;->insertInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/xiaomi/greendao/AbstractDao;->insertInTx([Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v1, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/xiaomi/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    goto :goto_0

    :pswitch_7
    iget-object v1, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Lcom/xiaomi/greendao/AbstractDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    :pswitch_8
    iget-object v1, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/xiaomi/greendao/AbstractDao;->insertOrReplaceInTx([Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v1, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/xiaomi/greendao/AbstractDao;->update(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_a
    iget-object v1, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Lcom/xiaomi/greendao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    goto :goto_0

    :pswitch_b
    iget-object v1, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/xiaomi/greendao/AbstractDao;->updateInTx([Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/xiaomi/greendao/async/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :pswitch_d
    invoke-virtual {p0}, Lcom/xiaomi/greendao/async/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/greendao/async/a;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :pswitch_e
    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/greendao/query/d;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/query/d;->a()Lcom/xiaomi/greendao/query/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/greendao/query/d;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/greendao/async/a;->h:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/greendao/query/d;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/query/d;->a()Lcom/xiaomi/greendao/query/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/greendao/query/d;->c()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/greendao/async/a;->h:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v1, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/xiaomi/greendao/AbstractDao;->deleteByKey(Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/AbstractDao;->deleteAll()V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v1, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/xiaomi/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/greendao/async/a;->h:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_13
    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/AbstractDao;->loadAll()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/greendao/async/a;->h:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/AbstractDao;->count()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/greendao/async/a;->h:Ljava/lang/Object;

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    iget-object v1, p0, Lcom/xiaomi/greendao/async/a;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/xiaomi/greendao/AbstractDao;->refresh(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/greendao/async/c;->f:Lcom/xiaomi/greendao/async/b;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final run()V
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/greendao/async/c;->b:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v4, 0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v1}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/async/a;

    if-nez v0, :cond_a

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/greendao/async/c;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/async/a;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/greendao/async/c;->c:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput-boolean v2, p0, Lcom/xiaomi/greendao/async/c;->c:Z

    :goto_1
    return-void

    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v0

    :goto_2
    :try_start_3
    invoke-virtual {v1}, Lcom/xiaomi/greendao/async/a;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/greendao/async/c;->b:Ljava/util/concurrent/BlockingQueue;

    iget v4, p0, Lcom/xiaomi/greendao/async/c;->g:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v6}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/async/a;

    if-eqz v0, :cond_8

    invoke-virtual {v1, v0}, Lcom/xiaomi/greendao/async/a;->a(Lcom/xiaomi/greendao/async/a;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/xiaomi/greendao/async/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v7, 0x0

    move v4, v2

    :goto_3
    :try_start_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_9

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/async/a;

    invoke-static {v0}, Lcom/xiaomi/greendao/async/c;->c(Lcom/xiaomi/greendao/async/a;)V

    iget-object v1, v0, Lcom/xiaomi/greendao/async/a;->g:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    move v1, v3

    :goto_4
    if-nez v1, :cond_9

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v4, v1, :cond_4

    iget-object v1, p0, Lcom/xiaomi/greendao/async/c;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/greendao/async/a;

    iget v8, p0, Lcom/xiaomi/greendao/async/c;->d:I

    if-ge v4, v8, :cond_5

    invoke-virtual {v0, v1}, Lcom/xiaomi/greendao/async/a;->a(Lcom/xiaomi/greendao/async/a;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/greendao/async/c;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/async/a;

    if-eq v0, v1, :cond_3

    new-instance v0, Lcom/xiaomi/greendao/DaoException;

    const-string v1, "Internal error: peeked op did not match removed op"

    invoke-direct {v0, v1}, Lcom/xiaomi/greendao/DaoException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_5
    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_0
    move-exception v0

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " was interruppted"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/xiaomi/greendao/DaoLog;->b(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    iput-boolean v2, p0, Lcom/xiaomi/greendao/async/c;->c:Z

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    iput-boolean v2, p0, Lcom/xiaomi/greendao/async/c;->c:Z

    throw v0

    :cond_2
    move v1, v2

    goto :goto_4

    :cond_3
    :try_start_a
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move v0, v3

    :goto_6
    :try_start_b
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_7
    if-eqz v0, :cond_6

    :try_start_c
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/async/a;

    iput v1, v0, Lcom/xiaomi/greendao/async/a;->i:I

    invoke-direct {p0, v0}, Lcom/xiaomi/greendao/async/c;->a(Lcom/xiaomi/greendao/async/a;)V

    goto :goto_8

    :catch_1
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Async transaction could not be ended, success so far was: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/xiaomi/greendao/DaoLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v2

    goto :goto_7

    :catch_2
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Async transaction could not be ended, success so far was: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/xiaomi/greendao/DaoLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_6
    const-string v0, "Reverted merged transaction because one of the operations failed. Executing operations one by one instead..."

    invoke-static {v0}, Lcom/xiaomi/greendao/DaoLog;->b(Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/async/a;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/async/a;->d()V

    invoke-direct {p0, v0}, Lcom/xiaomi/greendao/async/c;->b(Lcom/xiaomi/greendao/async/a;)V

    goto :goto_9

    :cond_7
    invoke-direct {p0, v1}, Lcom/xiaomi/greendao/async/c;->b(Lcom/xiaomi/greendao/async/a;)V

    invoke-direct {p0, v0}, Lcom/xiaomi/greendao/async/c;->b(Lcom/xiaomi/greendao/async/a;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, v1}, Lcom/xiaomi/greendao/async/c;->b(Lcom/xiaomi/greendao/async/a;)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto :goto_6

    :cond_a
    move-object v1, v0

    goto/16 :goto_2
.end method
