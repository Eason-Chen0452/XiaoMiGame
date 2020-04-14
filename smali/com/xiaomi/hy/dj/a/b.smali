.class public Lcom/xiaomi/hy/dj/a/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/android/volley/RequestQueue;

.field private static b:Landroid/content/Context;

.field private static volatile c:Lcom/xiaomi/hy/dj/a/b;

.field private static final d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaomi/hy/dj/a/b;->d:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/xiaomi/hy/dj/a/b;->b:Landroid/content/Context;

    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    const/4 v1, 0x0

    invoke-static {}, Lcom/xiaomi/hy/dj/a/b;->c()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V

    invoke-static {p1, v0}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/hy/dj/a/b;->a:Lcom/android/volley/RequestQueue;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/hy/dj/a/b;->c:Lcom/xiaomi/hy/dj/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/hy/dj/a/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/hy/dj/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/hy/dj/a/b;->c:Lcom/xiaomi/hy/dj/a/b;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/hy/dj/a/a;)V
    .locals 7

    invoke-virtual {p4}, Lcom/xiaomi/hy/dj/a/a;->a()V

    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/xiaomi/hy/dj/a/l;

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/hy/dj/a/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/hy/dj/a/a;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/hy/dj/a/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/hy/dj/a/a;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/xiaomi/hy/dj/a/a;->a()V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "&"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "&"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v2, p0

    :goto_2
    new-instance v0, Lcom/xiaomi/hy/dj/a/f;

    new-instance v3, Lcom/xiaomi/hy/dj/a/c;

    invoke-direct {v3, p2}, Lcom/xiaomi/hy/dj/a/c;-><init>(Lcom/xiaomi/hy/dj/a/a;)V

    new-instance v4, Lcom/xiaomi/hy/dj/a/e;

    invoke-direct {v4, p2}, Lcom/xiaomi/hy/dj/a/e;-><init>(Lcom/xiaomi/hy/dj/a/a;)V

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/hy/dj/a/f;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V

    new-instance v2, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v3, 0x30d4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v1, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v2}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    const-class v1, Lcom/xiaomi/hy/dj/a/b;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/StringRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    sget-object v1, Lcom/xiaomi/hy/dj/a/b;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void

    :cond_2
    const-string v0, "?"

    goto :goto_1

    :cond_3
    move-object v2, p0

    goto :goto_2
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/xiaomi/hy/dj/a/b;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "imei"

    invoke-static {p0}, Lcom/wali/gamecenter/report/utils/TelUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v0, "imsi"

    invoke-static {p0}, Lcom/wali/gamecenter/report/utils/ZSIMInfo;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "mac"

    invoke-static {p0}, Lcom/wali/gamecenter/report/utils/ZSIMInfo;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ua"

    invoke-static {p0}, Lcom/xiaomi/hy/dj/f/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clientType"

    const-string v2, "android"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "carrierInfo"

    invoke-static {p0}, Lcom/wali/gamecenter/report/utils/ZSIMInfo;->getSIMOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "channelId"

    invoke-static {p0}, Lcom/xiaomi/hy/dj/f/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "sdkVersion"

    const-string v2, "SDK_VISITOR_DJPAY_1.1.6"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "nonceStr"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timeStamp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "publishChannel"

    const-string v2, "mi"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "oaid"

    invoke-static {}, Lcom/xiaomi/hy/dj/f/m;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/hy/dj/a/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xiaomi/hy/dj/a/a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/xiaomi/hy/dj/a/a;->a()V

    invoke-static {}, Lcom/xiaomi/hy/dj/c/b;->a()Lcom/xiaomi/hy/dj/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/hy/dj/c/b;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/hy/dj/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/hy/dj/c/b;->a()Lcom/xiaomi/hy/dj/c/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/xiaomi/hy/dj/c/b;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;->getBody()Ljava/lang/String;

    move-result-object v0

    const-string v1, "milink post result-->"

    invoke-static {v1, v0}, Lcom/xiaomi/hy/dj/b/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/hy/dj/a/b;->d:Landroid/os/Handler;

    new-instance v2, Lcom/xiaomi/hy/dj/a/h;

    invoke-direct {v2, p2, v0}, Lcom/xiaomi/hy/dj/a/h;-><init>(Lcom/xiaomi/hy/dj/a/a;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    sget-object v0, Lcom/xiaomi/hy/dj/a/b;->d:Landroid/os/Handler;

    new-instance v1, Lcom/xiaomi/hy/dj/a/g;

    invoke-direct {v1, p2}, Lcom/xiaomi/hy/dj/a/g;-><init>(Lcom/xiaomi/hy/dj/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xiaomi/hy/dj/a/k;

    const/4 v1, 0x1

    new-instance v3, Lcom/xiaomi/hy/dj/a/i;

    invoke-direct {v3, p2}, Lcom/xiaomi/hy/dj/a/i;-><init>(Lcom/xiaomi/hy/dj/a/a;)V

    new-instance v4, Lcom/xiaomi/hy/dj/a/j;

    invoke-direct {v4, p2}, Lcom/xiaomi/hy/dj/a/j;-><init>(Lcom/xiaomi/hy/dj/a/a;)V

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/hy/dj/a/k;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/util/Map;)V

    new-instance v1, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v2, 0x30d4

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/StringRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    const-class v1, Lcom/xiaomi/hy/dj/a/b;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/StringRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    sget-object v1, Lcom/xiaomi/hy/dj/a/b;->a:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0
.end method

.method private static c()Ljavax/net/ssl/SSLSocketFactory;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    new-instance v3, Lcom/xiaomi/hy/dj/a/d;

    invoke-direct {v3}, Lcom/xiaomi/hy/dj/a/d;-><init>()V

    aput-object v3, v1, v2

    :try_start_0
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v3, v1, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/xiaomi/hy/dj/a/b;
    .locals 1

    sget-object v0, Lcom/xiaomi/hy/dj/a/b;->c:Lcom/xiaomi/hy/dj/a/b;

    return-object v0
.end method
