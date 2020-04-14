.class Lcom/xiaomi/hy/dj/fragment/h;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/h;->a:Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BROADCAST_PAY_END"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "HyAlipayFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u63a5\u6536\u5230\u5e7f\u64ad\uff0c\u4f46\u4e0e\u6ce8\u518c\u7684\u540d\u79f0\u4e0d\u4e00\u81f4["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "upPay.Rsp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "respCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "respDesc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HyAlipayFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "respCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " respDesc:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/h;->a:Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/i;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/fragment/i;-><init>(Lcom/xiaomi/hy/dj/fragment/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/h;->a:Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;

    const/16 v1, 0xbd

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;->b(I)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/h;->a:Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/j;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/fragment/j;-><init>(Lcom/xiaomi/hy/dj/fragment/h;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
