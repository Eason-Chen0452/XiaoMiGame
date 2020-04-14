.class public Lcom/xiaomi/gamecenter/sdk/utils/TokenUtils;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xiaomi/hy/dj/model/ServiceToken;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/hy/dj/model/TokenManager;->deleteToken(Landroid/content/Context;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "uid"

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "session"

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "openId"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lcom/xiaomi/hy/dj/model/ServiceToken;

    invoke-direct {v2}, Lcom/xiaomi/hy/dj/model/ServiceToken;-><init>()V

    sput-object v2, Lcom/xiaomi/gamecenter/sdk/utils/TokenUtils;->a:Lcom/xiaomi/hy/dj/model/ServiceToken;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/hy/dj/model/ServiceToken;->setUid(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/TokenUtils;->a:Lcom/xiaomi/hy/dj/model/ServiceToken;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/hy/dj/model/ServiceToken;->setSession(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/TokenUtils;->a:Lcom/xiaomi/hy/dj/model/ServiceToken;

    invoke-virtual {v2, p2}, Lcom/xiaomi/hy/dj/model/ServiceToken;->setOpenId(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, p0, v1}, Lcom/xiaomi/hy/dj/model/TokenManager;->save2File(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/TokenUtils;->a:Lcom/xiaomi/hy/dj/model/ServiceToken;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/TokenUtils;->a:Lcom/xiaomi/hy/dj/model/ServiceToken;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v0

    goto :goto_0
.end method
