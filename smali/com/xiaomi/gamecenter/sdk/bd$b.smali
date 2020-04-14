.class final Lcom/xiaomi/gamecenter/sdk/bd$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/bd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/bd;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/bd;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/bd$b;->a:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/bd$b;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bd$b;->a:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {p2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
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

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bd$b;->a:Lcom/xiaomi/gamecenter/sdk/bd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    return-void
.end method
