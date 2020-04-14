.class public abstract Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;
.super Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->getSdkStatus()I

    move-result v1

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->getMsgResult()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->onComplete(ILorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->onError(ILorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract onComplete(ILorg/json/JSONObject;)V
.end method

.method protected abstract onError(ILorg/json/JSONObject;)V
.end method

.method public sendResultMsg(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;

    invoke-direct {v1}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;-><init>()V

    invoke-virtual {v1, p1}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->setSdkStatus(I)V

    invoke-virtual {v1, p2}, Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;->setMsgResult(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendResultMsg(Lcom/xiaomi/gamecenter/sdk/gam/MiGamMessageResponse;)V
    .locals 1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/gam/MiResponseHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
