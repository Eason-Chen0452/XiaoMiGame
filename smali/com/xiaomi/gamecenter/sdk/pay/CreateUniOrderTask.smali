.class public Lcom/xiaomi/gamecenter/sdk/pay/CreateUniOrderTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

.field private f:Lcom/xiaomi/gamecenter/sdk/pay/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/pay/a;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/pay/CreateUniOrderTask;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/pay/CreateUniOrderTask;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/pay/CreateUniOrderTask;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/pay/CreateUniOrderTask;->e:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    iput-object p5, p0, Lcom/xiaomi/gamecenter/sdk/pay/CreateUniOrderTask;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/gamecenter/sdk/pay/CreateUniOrderTask;->f:Lcom/xiaomi/gamecenter/sdk/pay/a;

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestCreateUnifiedOrder;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/pay/CreateUniOrderTask;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/pay/CreateUniOrderTask;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/pay/CreateUniOrderTask;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/pay/CreateUniOrderTask;->e:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestCreateUnifiedOrder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/pay/CreateUniOrderTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestCreateUnifiedOrder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "feeValue"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "displayName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    const-string v0, "PAYECO"

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/pay/CreateUniOrderTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
