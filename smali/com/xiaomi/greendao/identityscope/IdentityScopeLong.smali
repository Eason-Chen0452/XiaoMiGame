.class public Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/greendao/identityscope/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaomi/greendao/identityscope/a",
        "<",
        "Ljava/lang/Long;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/greendao/internal/LongHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaomi/greendao/internal/LongHashMap",
            "<",
            "Ljava/lang/ref/Reference",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/greendao/internal/LongHashMap;

    invoke-direct {v0}, Lcom/xiaomi/greendao/internal/LongHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->a:Lcom/xiaomi/greendao/internal/LongHashMap;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private a(Ljava/lang/Long;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->a(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Long;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b(Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private b(Ljava/lang/Long;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->a:Lcom/xiaomi/greendao/internal/LongHashMap;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/greendao/internal/LongHashMap;->b(J)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final a(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->a:Lcom/xiaomi/greendao/internal/LongHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/greendao/internal/LongHashMap;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Long;

    invoke-direct {p0, p1}, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->a(Ljava/lang/Long;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->a:Lcom/xiaomi/greendao/internal/LongHashMap;

    invoke-virtual {v0}, Lcom/xiaomi/greendao/internal/LongHashMap;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->a:Lcom/xiaomi/greendao/internal/LongHashMap;

    mul-int/lit8 v1, p1, 0x5

    div-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/xiaomi/greendao/internal/LongHashMap;->a(I)V

    return-void
.end method

.method public final a(JLjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->a:Lcom/xiaomi/greendao/internal/LongHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaomi/greendao/internal/LongHashMap;->a(JLjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final a(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v2, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->a:Lcom/xiaomi/greendao/internal/LongHashMap;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/xiaomi/greendao/internal/LongHashMap;->b(J)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->a(JLjava/lang/Object;)V

    return-void
.end method

.method public final b(J)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->a:Lcom/xiaomi/greendao/internal/LongHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/greendao/internal/LongHashMap;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method public final b(JLjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->a:Lcom/xiaomi/greendao/internal/LongHashMap;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/xiaomi/greendao/internal/LongHashMap;->a(JLjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b(JLjava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public final synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-direct {p0, p1}, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->b(Ljava/lang/Long;)V

    return-void
.end method

.method public final synthetic c(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Long;

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/greendao/identityscope/IdentityScopeLong;->a(Ljava/lang/Long;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
