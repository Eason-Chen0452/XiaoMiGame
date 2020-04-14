.class final Lcom/xiaomi/gamecenter/sdk/milink/e;
.super Lcom/mi/milink/sdk/client/MiLinkObserver;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/e;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    invoke-direct {p0}, Lcom/mi/milink/sdk/client/MiLinkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInternalError(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/e;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    const-wide/16 v2, 0x0

    const/16 v1, 0x1d4f

    const/16 v4, 0x2716

    invoke-static {v0, v2, v3, v1, v4}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$000(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;JII)V

    return-void
.end method

.method public final onLoginStateUpdate(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/e;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$200(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/e;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$202(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;Z)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/milink/e;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$100(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v2

    const/16 v3, 0x1d4d

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/e;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$302(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/e;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$400(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;)[B

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/e;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$400(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;)[B

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

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/e;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$302(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;Z)Z

    goto :goto_1
.end method

.method public final onServerStateUpdate(II)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/e;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    const-wide/16 v2, 0x0

    const/16 v1, 0x1d51

    const/16 v4, 0x2718

    invoke-static {v0, v2, v3, v1, v4}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$000(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;JII)V

    return-void
.end method

.method public final onServiceConnected(J)V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/milink/e;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$100(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/milink/e;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    const/16 v3, 0x1d50

    const/16 v4, 0x2717

    invoke-static {v2, v0, v1, v3, v4}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$000(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;JII)V

    return-void
.end method

.method public final onSuicideTime(I)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/e;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    const-wide/16 v2, 0x0

    const/16 v1, 0x1d4e

    const/16 v4, 0x2715

    invoke-static {v0, v2, v3, v1, v4}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$000(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;JII)V

    return-void
.end method
