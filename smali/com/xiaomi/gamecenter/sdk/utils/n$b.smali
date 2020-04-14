.class final Lcom/xiaomi/gamecenter/sdk/utils/n$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/utils/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/utils/n;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/utils/n;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/n$b;->a:Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/utils/n$b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    const-string v0, "ServiceDeviceInfoHelper"

    const-string v1, "connected"

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n$b;->a:Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-static {p2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Lcom/xiaomi/gamecenter/sdk/utils/n;Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n$b;->a:Lcom/xiaomi/gamecenter/sdk/utils/n;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/n$b;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/n$b;->a:Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Lcom/xiaomi/gamecenter/sdk/utils/n;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Lcom/xiaomi/gamecenter/sdk/utils/n;Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)V

    const-string v0, "ServiceDeviceInfoHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDeviceId after connect : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/n$b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/n;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n$b;->a:Lcom/xiaomi/gamecenter/sdk/utils/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Lcom/xiaomi/gamecenter/sdk/utils/n;Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n$b;->a:Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->b(Lcom/xiaomi/gamecenter/sdk/utils/n;)Lcom/xiaomi/gamecenter/sdk/utils/n$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/n$b;->a:Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->b(Lcom/xiaomi/gamecenter/sdk/utils/n;)Lcom/xiaomi/gamecenter/sdk/utils/n$a;

    :cond_0
    return-void
.end method
