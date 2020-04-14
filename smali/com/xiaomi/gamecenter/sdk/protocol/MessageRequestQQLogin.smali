.class public Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestQQLogin;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestQQLogin;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestQQLogin;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://graph.qq.com/oauth2.0/me?access_token="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestQQLogin;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->GET:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    invoke-static {v1, v2, v0, v0, v3}, Lcn/com/wali/basetool/io/QHttpRequest;->a(Ljava/lang/String;Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;[BLjava/lang/String;Z)Lcn/com/wali/basetool/io/QHttpRequest;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestQQLogin;->a:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/com/wali/basetool/io/HttpUtils;->a(Landroid/content/Context;Lcn/com/wali/basetool/io/QHttpRequest;)Lcn/com/wali/basetool/io/QHttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcn/com/wali/basetool/io/QHttpResponse;->a()[B

    move-result-object v0

    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "openid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "client_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method
