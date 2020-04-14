.class abstract Lcom/xiaomi/greendao/query/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Q:",
        "Lcom/xiaomi/greendao/query/g",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/xiaomi/greendao/AbstractDao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT;*>;"
        }
    .end annotation
.end field

.field final c:[Ljava/lang/String;

.field final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<TQ;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaomi/greendao/AbstractDao;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/greendao/AbstractDao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/greendao/query/h;->b:Lcom/xiaomi/greendao/AbstractDao;

    iput-object p2, p0, Lcom/xiaomi/greendao/query/h;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/greendao/query/h;->c:[Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/greendao/query/h;->d:Landroid/util/SparseArray;

    return-void
.end method

.method private c()V
    .locals 4

    iget-object v2, p0, Lcom/xiaomi/greendao/query/h;->d:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/greendao/query/h;->d:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/greendao/query/h;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/greendao/query/h;->d:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/xiaomi/greendao/query/h;->d:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method final a()Lcom/xiaomi/greendao/query/g;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQ;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot handle thread ID: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    long-to-int v0, v0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/greendao/query/h;->d:Landroid/util/SparseArray;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/greendao/query/h;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/greendao/query/g;

    :goto_1
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/greendao/query/h;->c()V

    invoke-virtual {p0}, Lcom/xiaomi/greendao/query/h;->b()Lcom/xiaomi/greendao/query/g;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaomi/greendao/query/h;->d:Landroid/util/SparseArray;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_2
    monitor-exit v2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/greendao/query/h;->c:[Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/xiaomi/greendao/query/g;->d:[Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/xiaomi/greendao/query/h;->c:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method final a(Lcom/xiaomi/greendao/query/g;)Lcom/xiaomi/greendao/query/g;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TQ;)TQ;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p1, Lcom/xiaomi/greendao/query/g;->e:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/greendao/query/h;->c:[Ljava/lang/String;

    iget-object v1, p1, Lcom/xiaomi/greendao/query/g;->d:[Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/greendao/query/h;->c:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/greendao/query/h;->a()Lcom/xiaomi/greendao/query/g;

    move-result-object p1

    goto :goto_0
.end method

.method protected abstract b()Lcom/xiaomi/greendao/query/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TQ;"
        }
    .end annotation
.end method
