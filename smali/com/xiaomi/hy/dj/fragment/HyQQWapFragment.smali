.class public Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;
.super Lcom/xiaomi/hy/dj/fragment/BaseFragment;


# static fields
.field public static final d:Ljava/lang/String; = "HyQQWapFragment"


# instance fields
.field private e:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;->e:[B

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;)[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;->e:[B

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/k;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/hy/dj/fragment/k;-><init>(Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;->a:Lcom/xiaomi/hy/dj/d/b;

    const-string v1, "QPAY"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/d/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0xb5

    const-string v0, "TRADE_SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;->b(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->onResume()V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;->e:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;->e:[B

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
