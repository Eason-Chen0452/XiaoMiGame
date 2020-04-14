.class public final Lcom/xiaomi/greendao/async/a;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/xiaomi/greendao/async/AsyncOperation$OperationType;

.field final b:Lcom/xiaomi/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/greendao/AbstractDao",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/lang/Object;

.field final d:I

.field volatile e:J

.field volatile f:J

.field volatile g:Ljava/lang/Throwable;

.field volatile h:Ljava/lang/Object;

.field volatile i:I

.field private final j:Landroid/database/sqlite/SQLiteDatabase;

.field private volatile k:Z


# virtual methods
.method public final a()Z
    .locals 1

    iget v0, p0, Lcom/xiaomi/greendao/async/a;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final a(Lcom/xiaomi/greendao/async/a;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/greendao/async/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/greendao/async/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/greendao/async/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/greendao/async/a;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->j:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->j:Landroid/database/sqlite/SQLiteDatabase;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/greendao/async/a;->b:Lcom/xiaomi/greendao/AbstractDao;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/AbstractDao;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
.end method

.method final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/xiaomi/greendao/async/a;->k:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final d()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-wide v2, p0, Lcom/xiaomi/greendao/async/a;->e:J

    iput-wide v2, p0, Lcom/xiaomi/greendao/async/a;->f:J

    iput-boolean v0, p0, Lcom/xiaomi/greendao/async/a;->k:Z

    iput-object v1, p0, Lcom/xiaomi/greendao/async/a;->g:Ljava/lang/Throwable;

    iput-object v1, p0, Lcom/xiaomi/greendao/async/a;->h:Ljava/lang/Object;

    iput v0, p0, Lcom/xiaomi/greendao/async/a;->i:I

    return-void
.end method
