.class public Lcom/xiaomi/hy/dj/d/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/xiaomi/hy/dj/purchase/Purchase;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Lcom/xiaomi/hy/dj/d/a;

.field private o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/hy/dj/model/AppInfo;Lcom/xiaomi/hy/dj/purchase/Purchase;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/hy/dj/d/b;->a:Lcom/xiaomi/hy/dj/purchase/Purchase;

    invoke-virtual {p2}, Lcom/xiaomi/hy/dj/model/AppInfo;->getAppid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->c:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/xiaomi/hy/dj/model/AppInfo;->getAppkey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->d:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/xiaomi/hy/dj/model/AppInfo;->getPaymentList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->o:Ljava/lang/String;

    instance-of v0, p3, Lcom/xiaomi/hy/dj/purchase/UnrepeatPurchase;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lcom/xiaomi/hy/dj/purchase/UnrepeatPurchase;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/purchase/UnrepeatPurchase;->getChargeCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8ba1\u8d39\u4ee3\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "1"

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->f:Ljava/lang/String;

    :cond_1
    instance-of v0, p3, Lcom/xiaomi/hy/dj/purchase/RepeatPurchase;

    if-eqz v0, :cond_3

    move-object v0, p3

    check-cast v0, Lcom/xiaomi/hy/dj/purchase/RepeatPurchase;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/purchase/RepeatPurchase;->getChargeCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->e:Ljava/lang/String;

    move-object v0, p3

    check-cast v0, Lcom/xiaomi/hy/dj/purchase/RepeatPurchase;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/purchase/RepeatPurchase;->getAmout()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u8ba1\u8d39\u4ee3\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->f:Ljava/lang/String;

    :cond_3
    instance-of v0, p3, Lcom/xiaomi/hy/dj/purchase/FeePurchase;

    if-eqz v0, :cond_8

    move-object v0, p3

    check-cast v0, Lcom/xiaomi/hy/dj/purchase/FeePurchase;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/purchase/FeePurchase;->getFeeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->g:Ljava/lang/String;

    move-object v0, p3

    check-cast v0, Lcom/xiaomi/hy/dj/purchase/FeePurchase;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/purchase/FeePurchase;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\u91d1\u989d\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->e:Ljava/lang/String;

    :goto_0
    instance-of v0, p3, Lcom/xiaomi/hy/dj/purchase/FeeCodePurchase;

    if-eqz v0, :cond_5

    move-object v0, p3

    check-cast v0, Lcom/xiaomi/hy/dj/purchase/FeeCodePurchase;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/purchase/FeeCodePurchase;->getFeeValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/hy/dj/d/b;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/purchase/FeeCodePurchase;->getCpOrderId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/hy/dj/d/b;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/purchase/FeeCodePurchase;->getChargeCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1"

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->f:Ljava/lang/String;

    :cond_5
    instance-of v0, p3, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;

    if-eqz v0, :cond_6

    move-object v0, p3

    check-cast v0, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;->getFeeValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/hy/dj/d/b;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/hy/dj/d/b;->i:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;->getMiOrderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->h:Ljava/lang/String;

    :cond_6
    instance-of v0, p3, Lcom/xiaomi/hy/dj/purchase/SZFOrderPurchase;

    if-eqz v0, :cond_7

    check-cast p3, Lcom/xiaomi/hy/dj/purchase/SZFOrderPurchase;

    invoke-virtual {p3}, Lcom/xiaomi/hy/dj/purchase/SZFOrderPurchase;->getCardNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->j:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/xiaomi/hy/dj/purchase/SZFOrderPurchase;->getCardPwd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->k:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/xiaomi/hy/dj/purchase/SZFOrderPurchase;->getCardType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->l:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/xiaomi/hy/dj/purchase/SZFOrderPurchase;->getCardMoney()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->m:Ljava/lang/String;

    :cond_7
    return-void

    :cond_8
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/hy/dj/d/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/hy/dj/d/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/d/b;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaomi/hy/dj/d/b;)Lcom/xiaomi/hy/dj/d/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->n:Lcom/xiaomi/hy/dj/d/a;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/hy/dj/d/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/d/b;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/hy/dj/d/b;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/d/b;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/xiaomi/hy/dj/d/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/f/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/hy/dj/f/o;->a()Lcom/xiaomi/hy/dj/f/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/hy/dj/f/o;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://hysdk.game.xiaomi.com/fpassport/loginGuest"

    iget-object v3, p0, Lcom/xiaomi/hy/dj/d/b;->c:Ljava/lang/String;

    new-instance v4, Lcom/xiaomi/hy/dj/d/c;

    invoke-direct {v4, p0}, Lcom/xiaomi/hy/dj/d/c;-><init>(Lcom/xiaomi/hy/dj/d/b;)V

    invoke-static {v2, v3, v1, v0, v4}, Lcom/xiaomi/hy/dj/a/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/hy/dj/a/a;)V

    return-void
.end method

.method public a(Lcom/xiaomi/hy/dj/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/d/b;->n:Lcom/xiaomi/hy/dj/d/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/hy/dj/a/b;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "devAppId"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "openId"

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getOpenId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "payment"

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "orderId"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->h:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "amount"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->g:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "displayName"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->i:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "tradeType"

    const-string v4, "WXMWEB"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "SZFPAY"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "cardNo"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->j:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cardPwd"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->k:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cardType"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->l:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "cardMoney"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->m:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :try_start_0
    const-string v3, "38464B6C45486561724D415964687A61"

    invoke-static {v3}, Lcom/xiaomi/hy/dj/f/a;->a(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/xiaomi/hy/dj/f/a;->a(Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/hy/dj/f/n;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "session"

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getSession()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "uid"

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v3, "p"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/xiaomi/hy/dj/f/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&uri=/order-manager/order/v3/getTransactionData"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "signString"

    invoke-static {v3, v0}, Lcom/xiaomi/hy/dj/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "appkey"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xiaomi/hy/dj/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/hy/dj/f/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    const-string v1, "sign"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://mis.g.mi.com/order-manager/order/v3/getTransactionData"

    new-instance v1, Lcom/xiaomi/hy/dj/d/f;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/hy/dj/d/f;-><init>(Lcom/xiaomi/hy/dj/d/b;Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Lcom/xiaomi/hy/dj/a/b;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/hy/dj/a/a;)V

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    const-string v3, "uid"

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getOpenId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_2
.end method

.method public a([Ljava/lang/String;)V
    .locals 6

    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/hy/dj/a/b;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    const-string v2, "devAppId"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->c:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productCode"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->e:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "quantity"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->f:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "feeValue"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->g:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "goodsName"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->i:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cpOrderId"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->a:Lcom/xiaomi/hy/dj/purchase/Purchase;

    invoke-virtual {v4}, Lcom/xiaomi/hy/dj/purchase/Purchase;->getCpOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cpUserInfo"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->a:Lcom/xiaomi/hy/dj/purchase/Purchase;

    invoke-virtual {v4}, Lcom/xiaomi/hy/dj/purchase/Purchase;->getCpUserInfo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "paymentList"

    invoke-static {p1}, Lcom/xiaomi/hy/dj/f/k;->a([Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "openId"

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getOpenId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/hy/dj/f/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v5, "xiaomiId"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "userMark"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :try_start_1
    const-string v2, "38464B6C45486561724D415964687A61"

    invoke-static {v2}, Lcom/xiaomi/hy/dj/f/a;->a(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/xiaomi/hy/dj/f/a;->a(Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/hy/dj/f/n;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "session"

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getSession()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "uid"

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string v3, "p"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/xiaomi/hy/dj/f/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&uri=/order-manager/order/v3/createUnifiedOrder"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "signString"

    invoke-static {v3, v0}, Lcom/xiaomi/hy/dj/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "appkey"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xiaomi/hy/dj/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/hy/dj/f/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_3
    const-string v1, "sign"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://mis.g.mi.com/order-manager/order/v3/createUnifiedOrder"

    new-instance v1, Lcom/xiaomi/hy/dj/d/e;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/d/e;-><init>(Lcom/xiaomi/hy/dj/d/b;)V

    invoke-static {v0, v2, v1}, Lcom/xiaomi/hy/dj/a/b;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/hy/dj/a/a;)V

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_1
    const-string v3, "uid"

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getOpenId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_3
.end method

.method public b()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "pid"

    const-string v2, "7010"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "uid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "session"

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getSession()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "actionType"

    const-string v2, "spay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appId"

    iget-object v2, p0, Lcom/xiaomi/hy/dj/d/b;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nonce"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ua"

    iget-object v2, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/hy/dj/f/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ver"

    const-string v2, "SDK_VISITOR_DJPAY_1.1.6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/xiaomi/hy/dj/f/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&key=lDhModTw8IufDtiE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/hy/dj/f/l;->c([B)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "https://hysdk.game.xiaomi.com/rn/verify"

    new-instance v2, Lcom/xiaomi/hy/dj/d/d;

    invoke-direct {v2, p0}, Lcom/xiaomi/hy/dj/d/d;-><init>(Lcom/xiaomi/hy/dj/d/b;)V

    invoke-static {v1, v0, v2}, Lcom/xiaomi/hy/dj/a/b;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/hy/dj/a/a;)V

    return-void

    :cond_0
    const-string v1, "uid"

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public c()V
    .locals 6

    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/hy/dj/a/b;->b(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "devAppId"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->c:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "openId"

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getOpenId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "orderId"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->h:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v3, "38464B6C45486561724D415964687A61"

    invoke-static {v3}, Lcom/xiaomi/hy/dj/f/a;->a(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/xiaomi/hy/dj/f/a;->a(Ljava/lang/String;[B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/hy/dj/f/n;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "session"

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getSession()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "uid"

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const-string v3, "p"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/xiaomi/hy/dj/f/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&uri=/order-manager/order/v3/queryReceiptStatus"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "signString"

    invoke-static {v3, v0}, Lcom/xiaomi/hy/dj/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "appkey"

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->d:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/xiaomi/hy/dj/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/hy/dj/d/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&key"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/hy/dj/f/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    const-string v1, "sign"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "http://mis.g.mi.com/order-manager/order/v3/queryReceiptStatus"

    new-instance v1, Lcom/xiaomi/hy/dj/d/g;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/d/g;-><init>(Lcom/xiaomi/hy/dj/d/b;)V

    invoke-static {v0, v2, v1}, Lcom/xiaomi/hy/dj/a/b;->b(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/hy/dj/a/a;)V

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_0
    const-string v3, "uid"

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/hy/dj/d/b;->b:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getOpenId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_2
.end method

.method public d()V
    .locals 2

    sget-object v0, Lcom/xiaomi/hy/dj/a/b;->a:Lcom/android/volley/RequestQueue;

    const-class v1, Lcom/xiaomi/hy/dj/a/b;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    return-void
.end method
