.class public Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/xiaomi/gson/Gson;

.field public static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/licensinglibrary/model/ProductCatalog;",
            ">;"
        }
    .end annotation
.end field

.field public static c:J

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:J

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:I

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:I

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Z

.field public static p:I

.field public static final q:Ljava/lang/Object;

.field public static r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static t:Landroid/app/ActivityManager;

.field private static u:Ljava/util/concurrent/ExecutorService;

.field private static v:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/gson/Gson;

    invoke-direct {v0}, Lcom/xiaomi/gson/Gson;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a:Lcom/xiaomi/gson/Gson;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->b:Ljava/util/HashMap;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->c:J

    const-string v0, "http://f1.g.mi.com/download/Wali/1d760a5a1e7bb41d015a7e27ea5633bfb81e7bb46/MiGameCenterSDKService.apk"

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->d:Ljava/lang/String;

    const-string v0, "6ade4661ba038e1c534a4d43a269a532"

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->e:Ljava/lang/String;

    const-wide/32 v0, 0x8b9459

    sput-wide v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->f:J

    const-string v0, "\u5fae\u4fe1\u767b\u5f55\uff0c\u5c0f\u53f7\u767b\u5f55\u7b49\u66f4\u591a\u529f\u80fd\uff0c\u8bf7\u5b89\u88c5\u5e76\u4f7f\u7528\u5c0f\u7c73\u6e38\u620f\u670d\u52a1\u767b\u5f55 >"

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->g:Ljava/lang/String;

    const-string v0, "#66000000"

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->h:Ljava/lang/String;

    const/16 v0, 0xa

    sput v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->i:I

    const-string v0, "\u5b89\u88c5\u5e76\u767b\u5f55\u5c0f\u7c73\u6e38\u620f\u670d\u52a1\uff0c\u83b7\u53d6\u66f4\u591a\u798f\u5229 >"

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->j:Ljava/lang/String;

    const-string v0, "#FFFF5400"

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->k:Ljava/lang/String;

    const/16 v0, 0xb

    sput v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->l:I

    const-string v0, "https://static.g.mi.com/game/newAct/guildSdk2/index.html?"

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->m:Ljava/lang/String;

    const-string v0, "\u6743\u9650\u8bbe\u7f6e\u6559\u7a0b"

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->n:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->o:Z

    const/4 v0, -0x1

    sput v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->p:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->q:Ljava/lang/Object;

    sput-object v2, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->r:Ljava/util/List;

    sput-object v2, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->s:Ljava/util/List;

    sput-object v2, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->t:Landroid/app/ActivityManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v2, ""

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v3, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v2, v0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v2

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method private static a([B)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 8

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->u:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    mul-int/lit8 v3, v2, 0x2

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->u:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->u:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static a([Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    array-length v1, p0

    if-gtz v1, :cond_1

    const-string v1, "ALIPAY"

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_0
    return-object v0

    :cond_1
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0xa

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "downloadUrl"

    const-string v2, "http://f1.g.mi.com/download/Wali/1d760a5a1e7bb41d015a7e27ea5633bfb81e7bb46/MiGameCenterSDKService.apk"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->d:Ljava/lang/String;

    const-string v1, "md5"

    const-string v2, "6ade4661ba038e1c534a4d43a269a532"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->e:Ljava/lang/String;

    const-string v1, "size"

    const-wide/32 v2, 0x8b9459

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->f:J

    const-string v1, "baseText"

    const-string v2, "\u5fae\u4fe1\u767b\u5f55\uff0c\u5c0f\u53f7\u767b\u5f55\u7b49\u66f4\u591a\u529f\u80fd\uff0c\u8bf7\u5b89\u88c5\u5e76\u4f7f\u7528\u5c0f\u7c73\u6e38\u620f\u670d\u52a1\u767b\u5f55>"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->g:Ljava/lang/String;

    const-string v1, "baseTextColor"

    const-string v2, "#66000000"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->h:Ljava/lang/String;

    const-string v1, "baseTextSize"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->i:I

    const-string v1, "commonText"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->j:Ljava/lang/String;

    const-string v1, "commonTextColor"

    const-string v2, "#FFFF5400"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->k:Ljava/lang/String;

    const-string v1, "commonTextSize"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->l:I

    const-string v1, "guideLink"

    const-string v2, "https://static.g.mi.com/game/newAct/guildSdk2/index.html?"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->m:Ljava/lang/String;

    const-string v1, "guideWord"

    const-string v2, "\u6743\u9650\u8bbe\u7f6e\u6559\u7a0b"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->n:Ljava/lang/String;

    const-string v1, "force"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->o:Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized b()Z
    .locals 8

    const-class v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    sput-wide v2, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->v:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x7ee

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x7ef

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss dd/M"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a()Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    move-result-object v0

    const-string v2, "serviceVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->d(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ua="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/utils/b;->n:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&os="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&osVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v3, "utf-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&brand="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&androidApiLevel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&systemVersion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&model="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&manufacturer="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&device="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v0, ""

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "ServiceInfo"

    invoke-static {v1, v4}, Lcom/xiaomi/gamecenter/sdk/utils/SdkPreferenceUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "ServiceInfoCheckTime"

    invoke-static {v1, v4}, Lcom/xiaomi/gamecenter/sdk/utils/SdkPreferenceUtils;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v4

    sget-wide v6, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->c:J

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    sput-wide v4, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-wide v4, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->c:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x2932e00

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/utils/f;

    invoke-direct {v1}, Lcom/xiaomi/gamecenter/sdk/utils/f;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_2

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    move v2, v1

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method

.method private static g(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-string v3, "for3thd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "packageName="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "for3thd"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pubKey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "for3thd"

    const-string v2, "pkgName valid fail"

    invoke-static {v1, v2}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, ""

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "OpenSSLRSAPublicKey{modulus=9643933db422075411bda24ac36b56ad57c997e9ca0d27ed8e8e40d6f199e6aabde81e87a28b61e5b0f6ab26cbd080dfdc41a2b74b75b611350ebbed1c3de0d77ff4f0988d4a608f07bfaebf20d029af7edff1d5e578a12568ef07c58804625d0c9730d377420c8b116f2b77f4ad9e5c48c4fc8e00dd305ac16db701bb67860d,publicExponent=10001}"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "for3thd"

    const-string v2, "signature valid fail"

    invoke-static {v1, v2}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
