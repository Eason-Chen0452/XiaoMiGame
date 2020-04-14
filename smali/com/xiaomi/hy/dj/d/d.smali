.class Lcom/xiaomi/hy/dj/d/d;
.super Lcom/xiaomi/hy/dj/a/a;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/d/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/d/d;->a:Lcom/xiaomi/hy/dj/d/b;

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

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/d;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    const-string v1, "3065"

    invoke-interface {v0, v1}, Lcom/xiaomi/hy/dj/d/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "verifyID"

    invoke-static {v0, p1}, Lcom/xiaomi/hy/dj/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/d/d;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v1}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaomi/hy/dj/d/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xbfa

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/d;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    const-string v1, "3066"

    invoke-interface {v0, v1}, Lcom/xiaomi/hy/dj/d/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
