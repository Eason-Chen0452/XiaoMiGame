.class final Lcom/xiaomi/gamecenter/sdk/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/u;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/u;->a:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/u;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkAndConnect(Landroid/content/Context;Z)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/u;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/u;->a:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    const/16 v1, -0x4653

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/u;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v0, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/u;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$400()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->miWindow()I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/u;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/u;->a:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/u;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v0, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/u;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/u;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/u;->a:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    const/16 v2, -0x4653

    invoke-interface {v1, v2}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/u;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v0, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/u;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/u;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v1, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/u;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    throw v0
.end method
