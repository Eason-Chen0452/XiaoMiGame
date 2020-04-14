.class final Lcom/xiaomi/gamecenter/sdk/aa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/OnExitListner;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnExitListner;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/aa;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/aa;->b:Lcom/xiaomi/gamecenter/sdk/OnExitListner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/16 v2, 0x2711

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkAndConnect(Landroid/content/Context;Z)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v0, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->b:Lcom/xiaomi/gamecenter/sdk/OnExitListner;

    invoke-interface {v0, v2}, Lcom/xiaomi/gamecenter/sdk/OnExitListner;->onExit(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j()V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$400()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$400()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->appExit()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$200()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ab;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/gamecenter/sdk/ab;-><init>(Lcom/xiaomi/gamecenter/sdk/aa;I)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v0, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->b:Lcom/xiaomi/gamecenter/sdk/OnExitListner;

    const/16 v1, 0x2711

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/OnExitListner;->onExit(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v0, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v1, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aa;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    throw v0
.end method
