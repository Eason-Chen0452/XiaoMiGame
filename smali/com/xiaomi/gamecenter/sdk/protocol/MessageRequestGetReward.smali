.class public Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;->c:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/wali/gamecenter/report/utils/ZSIMInfo;->getSha1DeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    :cond_0
    const-string v2, "appId"

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "channelId"

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "launchFrom"

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "imei"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "imsi"

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/wali/gamecenter/report/utils/ZSIMInfo;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v0, "ua"

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/j;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "mac"

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/wali/gamecenter/report/utils/ZSIMInfo;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vc"

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;->d:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "vn"

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;->e:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdkVersion"

    const-string v2, "SDK_MI_SP_3.1.2"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v5, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    const-string v0, "https://mis.migc.xiaomi.com/api/biz/game/launch"

    sget-object v1, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->POST:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v5}, Lcn/com/wali/basetool/io/QHttpRequest;->a(Ljava/lang/String;Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;[BLjava/lang/String;Z)Lcn/com/wali/basetool/io/QHttpRequest;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestGetReward;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/com/wali/basetool/io/HttpUtils;->a(Landroid/content/Context;Lcn/com/wali/basetool/io/QHttpRequest;)Lcn/com/wali/basetool/io/QHttpResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_2
    :goto_2
    return-object v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcn/com/wali/basetool/io/QHttpResponse;->a()[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, ""

    goto :goto_2
.end method
