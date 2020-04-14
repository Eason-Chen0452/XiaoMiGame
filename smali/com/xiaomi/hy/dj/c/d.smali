.class Lcom/xiaomi/hy/dj/c/d;
.super Lcom/mi/milink/sdk/client/MiLinkObserver;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/c/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/c/d;->a:Lcom/xiaomi/hy/dj/c/b;

    invoke-direct {p0}, Lcom/mi/milink/sdk/client/MiLinkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onInternalError(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLoginStateUpdate(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/d;->a:Lcom/xiaomi/hy/dj/c/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaomi/hy/dj/c/b;->a(Lcom/xiaomi/hy/dj/c/b;Z)Z

    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/d;->a:Lcom/xiaomi/hy/dj/c/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/c/b;->b(Lcom/xiaomi/hy/dj/c/b;)[B

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/d;->a:Lcom/xiaomi/hy/dj/c/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/c/b;->b(Lcom/xiaomi/hy/dj/c/b;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/d;->a:Lcom/xiaomi/hy/dj/c/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/hy/dj/c/b;->a(Lcom/xiaomi/hy/dj/c/b;Z)Z

    goto :goto_1
.end method

.method public onServerStateUpdate(II)V
    .locals 0

    return-void
.end method

.method public onServiceConnected(J)V
    .locals 1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/d;->a:Lcom/xiaomi/hy/dj/c/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/c/b;->a(Lcom/xiaomi/hy/dj/c/b;)J

    return-void
.end method

.method public onSuicideTime(I)V
    .locals 0

    return-void
.end method
