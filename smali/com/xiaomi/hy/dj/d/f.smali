.class Lcom/xiaomi/hy/dj/d/f;
.super Lcom/xiaomi/hy/dj/a/a;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/hy/dj/d/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/d/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/d/f;->b:Lcom/xiaomi/hy/dj/d/b;

    iput-object p2, p0, Lcom/xiaomi/hy/dj/d/f;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/VolleyError;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xbf4

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/f;->b:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/hy/dj/d/a;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 9

    const/16 v8, 0xbf7

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/hy/dj/f/n;->a(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "getPayInfo"

    invoke-static {v0, v1}, Lcom/xiaomi/hy/dj/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "sign"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "errorMsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "errcode"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "errcode"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "errorMsg"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "data"

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "data"

    invoke-static {v3, v2}, Lcom/xiaomi/hy/dj/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/xiaomi/hy/dj/f/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&uri=/order-manager/order/v3/getTransactionData"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/xiaomi/hy/dj/d/f;->b:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v5}, Lcom/xiaomi/hy/dj/d/b;->c(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "&key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/hy/dj/f/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v2}, Lcom/xiaomi/hy/dj/f/n;->a(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "38464B6C45486561724D415964687A61"

    invoke-static {v1}, Lcom/xiaomi/hy/dj/f/a;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/hy/dj/f/a;->c([B[B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "getPayInfo onSuccess"

    invoke-static {v0, v1}, Lcom/xiaomi/hy/dj/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "schemeUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "codeUrl"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mwebUrl"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "referer"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PAYECO"

    iget-object v6, p0, Lcom/xiaomi/hy/dj/d/f;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v6, "Amount"

    const-string v7, "Amount"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "MerchOrderId"

    const-string v7, "MerchOrderId"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "MerchantId"

    const-string v7, "MerchantId"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "Sign"

    const-string v7, "Sign"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "OrderId"

    const-string v7, "OrderId"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "TradeTime"

    const-string v7, "TradeTime"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "Version"

    const-string v7, "Version"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/f;->b:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    iget-object v6, p0, Lcom/xiaomi/hy/dj/d/f;->a:Ljava/lang/String;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v0, v6, v5, v7}, Lcom/xiaomi/hy/dj/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    const-string v0, "mwebUrl"

    invoke-static {v0, v3}, Lcom/xiaomi/hy/dj/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "referer"

    invoke-static {v0, v4}, Lcom/xiaomi/hy/dj/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/f;->b:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/hy/dj/d/f;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/xiaomi/hy/dj/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/f;->b:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/xiaomi/hy/dj/d/a;->a(I)V

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/f;->b:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/d/f;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v4}, Lcom/xiaomi/hy/dj/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/f;->b:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/d/f;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaomi/hy/dj/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xbf7

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/f;->b:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    const/16 v1, 0xbf7

    invoke-interface {v0, v1}, Lcom/xiaomi/hy/dj/d/a;->a(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method
