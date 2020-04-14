.class final Lcom/xiaomi/gamecenter/sdk/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a()Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    move-result-object v0

    const-string v1, "ColorOS"

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->cancelSendToastServiceConnTimeOutMsg()V

    :cond_0
    invoke-static {p2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$402(Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/z;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/z;-><init>(Lcom/xiaomi/gamecenter/sdk/y;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->cancelSendToastServiceConnTimeOutMsg()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$402(Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    const-string v0, ">>>>"

    const-string v1, "Service DisConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
