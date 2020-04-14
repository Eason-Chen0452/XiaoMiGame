.class Lcom/xiaomi/hy/dj/d/e;
.super Lcom/xiaomi/hy/dj/a/a;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/d/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

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

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/hy/dj/d/a;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0xbf6

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/hy/dj/f/n;->a(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, "createUndefineOrder--->"

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

    const-string v3, "createUndefineOrder"

    invoke-static {v3, v2}, Lcom/xiaomi/hy/dj/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/xiaomi/hy/dj/f/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&uri=/order-manager/order/v3/createUnifiedOrder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

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

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "200"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

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

    const-string v0, "createUndefineOrder onSuccess"

    invoke-static {v0, v1}, Lcom/xiaomi/hy/dj/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    const-string v2, "orderId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/hy/dj/d/b;->a(Lcom/xiaomi/hy/dj/d/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    const-string v2, "feeValue"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v1}, Lcom/xiaomi/hy/dj/d/b;->d(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ""

    iget-object v2, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v2}, Lcom/xiaomi/hy/dj/d/b;->d(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    const-string v2, "displayName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/hy/dj/d/b;->c(Lcom/xiaomi/hy/dj/d/b;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const-string v1, "paymentList"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "miOrderId"

    iget-object v3, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v3}, Lcom/xiaomi/hy/dj/d/b;->e(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "displayName"

    iget-object v3, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v3}, Lcom/xiaomi/hy/dj/d/b;->d(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "feeValue"

    iget-object v3, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v3}, Lcom/xiaomi/hy/dj/d/b;->f(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appId"

    iget-object v3, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v3}, Lcom/xiaomi/hy/dj/d/b;->g(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appKey"

    iget-object v3, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v3}, Lcom/xiaomi/hy/dj/d/b;->c(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "miOrderId"

    iget-object v3, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v3}, Lcom/xiaomi/hy/dj/d/b;->e(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "displayName"

    iget-object v3, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v3}, Lcom/xiaomi/hy/dj/d/b;->d(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "feeValue"

    iget-object v3, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v3}, Lcom/xiaomi/hy/dj/d/b;->f(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appId"

    iget-object v3, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v3}, Lcom/xiaomi/hy/dj/d/b;->g(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appKey"

    iget-object v3, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v3}, Lcom/xiaomi/hy/dj/d/b;->c(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "payment"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/xiaomi/hy/dj/d/a;->a(Ljava/util/Map;)V

    :goto_1
    return-void

    :cond_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "5010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    const/16 v1, 0xb8

    invoke-interface {v0, v1}, Lcom/xiaomi/hy/dj/d/a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/xiaomi/hy/dj/d/a;->a(I)V

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xbf6

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/e;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    const/16 v1, 0xbf6

    invoke-interface {v0, v1}, Lcom/xiaomi/hy/dj/d/a;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
