.class final Lcom/xiaomi/gamecenter/sdk/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/bh$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/n;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$200()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$200()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
