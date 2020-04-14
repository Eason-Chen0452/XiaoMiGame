.class Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiMsgHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/16 v3, 0x3e9

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;

    invoke-static {v2, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgEntity$MarqueeMsg;->getTime()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;->removeMessages(I)V

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v3, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager$MiMsgHandler;->a:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;->a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/message/MiMsgManager;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
