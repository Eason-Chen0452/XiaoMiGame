.class Lcom/xiaomi/hy/dj/d/c;
.super Lcom/xiaomi/hy/dj/a/a;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/d/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/d/c;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/volley/VolleyError;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xbf4

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/c;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/hy/dj/d/a;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0xbf5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getSession"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/b/a;->a(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "retCode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/d/c;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v1}, Lcom/xiaomi/hy/dj/d/b;->a(Lcom/xiaomi/hy/dj/d/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/hy/dj/model/TokenManager;->save2File(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/c;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/xiaomi/hy/dj/d/a;->b(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xbf5

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/c;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    const/16 v1, 0xbf5

    invoke-interface {v0, v1}, Lcom/xiaomi/hy/dj/d/a;->a(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/c;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/d/b;->b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/xiaomi/hy/dj/d/a;->a(I)V

    goto :goto_0
.end method
