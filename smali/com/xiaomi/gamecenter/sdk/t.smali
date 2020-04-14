.class final Lcom/xiaomi/gamecenter/sdk/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/t;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/t;->a:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/t;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkAndConnect(Landroid/content/Context;Z)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/t;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/t;->a:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v1, -0x67

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/t;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/t;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$400()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/t;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->miLogout(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setAccount(Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/t;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/t;->a:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v1, -0x68

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/t;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/t;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/t;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/t;->a:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v2, -0x67

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/t;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/t;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/t;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v1, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/t;->b:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    throw v0
.end method
