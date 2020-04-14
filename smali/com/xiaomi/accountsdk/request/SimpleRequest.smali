.class public final Lcom/xiaomi/accountsdk/request/SimpleRequest;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/SimpleRequest$StreamContent;,
        Lcom/xiaomi/accountsdk/request/SimpleRequest$MapContent;,
        Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;,
        Lcom/xiaomi/accountsdk/request/SimpleRequest$HeaderContent;,
        Lcom/xiaomi/accountsdk/request/SimpleRequest$b;,
        Lcom/xiaomi/accountsdk/request/SimpleRequest$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field private static b:Lcom/xiaomi/accountsdk/request/a;

.field private static c:Lcom/xiaomi/accountsdk/request/SimpleRequest$a;

.field private static d:Lcom/xiaomi/accountsdk/request/SimpleRequest$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a:Ljava/util/logging/Logger;

    new-instance v0, Lcom/xiaomi/accountsdk/request/f;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/f;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->c:Lcom/xiaomi/accountsdk/request/SimpleRequest$a;

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->d:Lcom/xiaomi/accountsdk/request/SimpleRequest$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Lcom/xiaomi/accountsdk/request/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->b:Lcom/xiaomi/accountsdk/request/a;

    return-object v0
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/net/HttpCookie;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->hasExpired()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static b(Ljava/lang/String;)Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "origin is not allowed null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->c(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a:Ljava/util/logging/Logger;

    const-string v1, "failed to create URLConnection"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to create connection"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->a()Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$a;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "Date"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->a()Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$a;

    move-result-object v4

    invoke-interface {v4, p0, v3}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_3

    const/16 v3, 0x12e

    if-ne v2, v3, :cond_5

    :cond_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    new-instance v4, Ljava/net/CookieManager;

    invoke-direct {v4}, Ljava/net/CookieManager;-><init>()V

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V

    invoke-virtual {v4}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/net/CookieStore;->get(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x400

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-static {v5}, Lcom/xiaomi/accountsdk/utils/IOUtils;->a(Ljava/io/Reader;)V

    throw v0
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "protocol error"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0

    :cond_4
    :try_start_4
    invoke-static {v5}, Lcom/xiaomi/accountsdk/utils/IOUtils;->a(Ljava/io/Reader;)V

    new-instance v5, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->b(Ljava/util/Map;)V

    invoke-static {v3}, Lcom/xiaomi/accountsdk/utils/ObjectUtils;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(Ljava/util/Map;)V

    invoke-virtual {v5, v2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->a(I)V
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v5

    :cond_5
    const/16 v0, 0x193

    if-ne v2, v0, :cond_6

    :try_start_5
    new-instance v0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    const-string v3, "access denied, encrypt error or user is forbidden to access the resource"

    invoke-direct {v0, v2, v3}, Lcom/xiaomi/accountsdk/request/AccessDeniedException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    const/16 v0, 0x191

    if-eq v2, v0, :cond_7

    const/16 v0, 0x190

    if-ne v2, v0, :cond_8

    :cond_7
    new-instance v0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "authentication failure for get, code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;-><init>(ILjava/lang/String;)V

    const-string v2, "WWW-Authenticate"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->a(Ljava/lang/String;)V

    const-string v2, "CA-DISABLE-SECONDS"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;->b(Ljava/lang/String;)V

    throw v0

    :cond_8
    sget-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http status error when GET: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    const/16 v0, 0x12d

    if-ne v2, v0, :cond_9

    sget-object v0, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unexpected redirect from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Location"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unexpected http res code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
.end method

.method private static c(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v1, :cond_0

    sget-object v1, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a:Ljava/util/logging/Logger;

    const-string v2, "failed to init url"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x7530

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_1
    invoke-static {v3}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    sget-object v3, Lcom/xiaomi/accountsdk/request/SimpleRequest;->c:Lcom/xiaomi/accountsdk/request/SimpleRequest$a;

    invoke-interface {v3, v1}, Lcom/xiaomi/accountsdk/request/SimpleRequest$a;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "User-Agent"

    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v2, Lcom/xiaomi/accountsdk/utils/EasyMap;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/utils/EasyMap;-><init>()V

    const-string v3, "sdkVersion"

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/VersionUtils;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Cookie"

    const-string v4, "; "

    invoke-static {v2, v4}, Lcom/xiaomi/accountsdk/request/SimpleRequest;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
