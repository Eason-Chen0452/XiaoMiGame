.class final Lcom/xiaomi/gamecenter/sdk/am;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sOnInitProcessListener:Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;

    if-eqz v0, :cond_0

    const-string v0, "common"

    const-string v1, "base"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sOnInitProcessListener:Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->r:Ljava/util/List;

    sget v2, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->p:I

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;->finishInitProcess(Ljava/util/List;I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sOnInitProcessListener:Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;->finishInitProcess(Ljava/util/List;I)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sOnInitProcessListener:Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sOnInitProcessListener:Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/OnInitProcessListener;->onMiSplashEnd()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
