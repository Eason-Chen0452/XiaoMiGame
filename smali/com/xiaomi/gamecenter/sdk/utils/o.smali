.class final Lcom/xiaomi/gamecenter/sdk/utils/o;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/utils/n;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/utils/n;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/o;->a:Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/o;->a:Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->a(Lcom/xiaomi/gamecenter/sdk/utils/n;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/o;->a:Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->b(Lcom/xiaomi/gamecenter/sdk/utils/n;)Lcom/xiaomi/gamecenter/sdk/utils/n$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/o;->a:Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->b(Lcom/xiaomi/gamecenter/sdk/utils/n;)Lcom/xiaomi/gamecenter/sdk/utils/n$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/utils/n$a;->b()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/o;->a:Lcom/xiaomi/gamecenter/sdk/utils/n;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/n;->c(Lcom/xiaomi/gamecenter/sdk/utils/n;)Lcom/xiaomi/gamecenter/sdk/utils/n$a;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
