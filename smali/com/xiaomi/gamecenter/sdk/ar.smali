.class final Lcom/xiaomi/gamecenter/sdk/ar;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ar;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ar;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {p2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ar;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$800(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ar;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$800(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Ljava/lang/Object;

    move-result-object v0

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

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ar;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1202(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    const-string v0, ">>>>"

    const-string v1, "Service DisConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
