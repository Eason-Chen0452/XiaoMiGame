.class final Lcom/xiaomi/game/plugin/stat/a/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->a:Landroid/content/Context;

    const-string v0, "720"

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->e:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/game/plugin/stat/a/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/a/c;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->h:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/game/plugin/stat/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.xiaomi.gamecenter"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/a/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/xiaomi/game/plugin/stat/a/a$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/xiaomi/game/plugin/stat/a/a$1;-><init>(Lcom/xiaomi/game/plugin/stat/a/a;ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/game/plugin/stat/a/a;->b([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B[B)[B
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Key\u4e3a\u7a7anull"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Key\u4e3a\u7a7anull"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "AES\u52a0\u5bc6\u9519\u8bef"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Key\u957f\u5ea6\u4e0d\u662f16\u4f4d"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/game/plugin/stat/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static b([B[B)[B
    .locals 3

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Key\u4e3a\u7a7anull"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "AES\u52a0\u5bc6\u9519\u8bef"

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Key\u957f\u5ea6\u4e0d\u662f16\u4f4d"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v1, "AES/ECB/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/game/plugin/stat/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5e94\u8be5\u8981\u8bbf\u95ee\u6e38\u620f\u4e2d\u5fc3"

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/game/plugin/stat/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8981\u8bbf\u95ee\u6e38\u620f\u4e2d\u5fc3Success"

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaomi/game/plugin/stat/a/a;->a(I)V

    invoke-virtual {p0}, Lcom/xiaomi/game/plugin/stat/a/a;->d()V

    return-void

    :cond_0
    const-string v0, "\u8981\u8bbf\u95ee\u6e38\u620f\u4e2d\u5fc3failed"

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const-string v0, "\u4e0d\u5e94\u8be5\u8bbf\u95ee\u6e38\u620f\u4e2d\u5fc3"

    invoke-static {v0}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "migame_fetch_promotion"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.gamecenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "migamecenter://sdkad?channel=sdk&bid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/game/plugin/stat/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/a/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()[B
    .locals 5

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "bid"

    iget-object v2, p0, Lcom/xiaomi/game/plugin/stat/a/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ua"

    iget-object v2, p0, Lcom/xiaomi/game/plugin/stat/a/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ver"

    iget-object v2, p0, Lcom/xiaomi/game/plugin/stat/a/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "appId"

    iget-object v2, p0, Lcom/xiaomi/game/plugin/stat/a/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "packageName"

    iget-object v2, p0, Lcom/xiaomi/game/plugin/stat/a/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :try_start_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, ""

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_2
    return-object v0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "rsa ret:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    const-string v1, "cn.wali.YF.Oss.c"

    invoke-static {v0, v1}, Lcom/xiaomi/game/plugin/stat/a/a;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    goto :goto_2
.end method

.method public final d()V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x1

    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http://oss.migc.g.mi.com/ossv2/getbaseinfo"

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x1388

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lcom/xiaomi/game/plugin/stat/a/a;->c()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "resultCode:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v1, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v5, v0

    :goto_1
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    const-string v3, "cn.wali.YF.Oss.c"

    const-string v5, "UTF-8"

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaomi/game/plugin/stat/a/a;->a([B[B)[B

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v3, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "rsp content:"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "updategcpromotion"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_4

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/xiaomi/game/plugin/stat/a/a;->a(Z)Z

    :cond_4
    if-nez v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/xiaomi/game/plugin/stat/a/a;->a(Z)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    :goto_3
    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    :cond_9
    :goto_4
    throw v1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v0

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v4, v3

    move-object v5, v0

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v5, v0

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    goto/16 :goto_1

    :catch_5
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v0

    goto/16 :goto_1

    :catch_6
    move-exception v1

    move-object v4, v3

    move-object v5, v0

    goto/16 :goto_1
.end method

.method public final e()Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "migame_fetch_promotion"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
