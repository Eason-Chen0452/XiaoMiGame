.class public Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->a:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->c:Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->c:Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->c:Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/SocketTouch;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/utils/b;->n:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->a:Ljava/util/ArrayList;

    new-instance v5, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;

    const-string v6, "pid"

    const-string v7, "7010"

    invoke-direct {v5, v6, v7}, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->a:Ljava/util/ArrayList;

    new-instance v5, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;

    const-string v6, "uid"

    iget-object v7, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->d:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->a:Ljava/util/ArrayList;

    new-instance v5, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;

    const-string v6, "session"

    iget-object v7, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->e:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->a:Ljava/util/ArrayList;

    new-instance v5, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;

    const-string v6, "actionType"

    invoke-direct {v5, v6, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->a:Ljava/util/ArrayList;

    new-instance v4, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;

    const-string v5, "appId"

    iget-object v6, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->f:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->a:Ljava/util/ArrayList;

    new-instance v4, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;

    const-string v5, "nonce"

    invoke-direct {v4, v5, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;

    const-string v4, "ua"

    invoke-direct {v2, v4, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->a:Ljava/util/ArrayList;

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;

    const-string v3, "ver"

    const-string v4, "SDK_MI_SP_3.1.2"

    invoke-direct {v2, v3, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ParamEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/h;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcn/com/wali/basetool/log/Logger;->a:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "verify param===="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&key=lDhModTw8IufDtiE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&key=lDhModTw8IufDtiE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/wali/basetool/utils/MD5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "&sign="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcn/com/wali/basetool/log/Logger;->a:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "verifyid request>>>>>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :cond_3
    const-string v1, "https://hysdk.game.xiaomi.com/rn/verify"

    sget-object v2, Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;->POST:Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Lcn/com/wali/basetool/io/QHttpRequest;->a(Ljava/lang/String;Lcn/com/wali/basetool/io/QHttpRequest$RequestMethod;[BLjava/lang/String;Z)Lcn/com/wali/basetool/io/QHttpRequest;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestNewVerifyId;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcn/com/wali/basetool/io/HttpUtils;->a(Landroid/content/Context;Lcn/com/wali/basetool/io/QHttpRequest;)Lcn/com/wali/basetool/io/QHttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto/16 :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Lcn/com/wali/basetool/io/QHttpResponse;->a()[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sget-boolean v1, Lcn/com/wali/basetool/log/Logger;->a:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "verifyid response="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string v0, ""

    goto/16 :goto_0
.end method
