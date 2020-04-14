.class public final Lcn/com/wali/basetool/io/HttpUtils;
.super Ljava/lang/Object;


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcn/com/wali/basetool/io/HttpUtils;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcn/com/wali/basetool/io/QHttpRequest;)Lcn/com/wali/basetool/io/QHttpResponse;
    .locals 3

    const/4 v0, -0x1

    sput v0, Lcn/com/wali/basetool/io/HttpUtils;->a:I

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, 0x3b

    sput v0, Lcn/com/wali/basetool/io/HttpUtils;->a:I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x3c

    sput v0, Lcn/com/wali/basetool/io/HttpUtils;->a:I

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcn/com/wali/basetool/io/HttpUtils;->b(Landroid/content/Context;Lcn/com/wali/basetool/io/QHttpRequest;)Lcn/com/wali/basetool/io/QHttpResponse;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {p0}, Lcn/com/wali/basetool/utils/SystemConfig;->e(Landroid/content/Context;)Z

    :cond_3
    if-eqz v0, :cond_0

    iget v1, v0, Lcn/com/wali/basetool/io/QHttpResponse;->c:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Lcn/com/wali/basetool/io/QHttpRequest;ZZ)Ljava/net/HttpURLConnection;
    .locals 5

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    :try_start_0
    iget-object v0, p1, Lcn/com/wali/basetool/io/QHttpRequest;->a:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcn/com/wali/basetool/utils/SystemConfig;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcn/com/wali/basetool/utils/SystemConfig;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p1, Lcn/com/wali/basetool/io/QHttpRequest;->a:Ljava/lang/String;

    const-string v1, "http://10.0.0.172"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    :goto_0
    iput-object v0, p1, Lcn/com/wali/basetool/io/QHttpRequest;->a:Ljava/lang/String;

    :cond_1
    if-eqz p3, :cond_8

    invoke-static {p0}, Lcn/com/wali/basetool/utils/SystemConfig;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v0, "10.0.0.200"

    const/16 v3, 0x50

    invoke-direct {v1, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance v0, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v0, v3, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :goto_1
    iget-object v1, p1, Lcn/com/wali/basetool/io/QHttpRequest;->b:[B

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcn/com/wali/basetool/io/QHttpRequest;->b:[B

    array-length v1, v1

    if-lez v1, :cond_6

    if-nez v0, :cond_5

    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lcn/com/wali/basetool/io/QHttpRequest;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    :try_start_1
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    iget-object v2, p1, Lcn/com/wali/basetool/io/QHttpRequest;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Encoding"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Lcn/com/wali/basetool/io/QHttpRequest;->b:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-static {p2, p1, v0}, Lcn/com/wali/basetool/io/HttpUtils;->a(ZLcn/com/wali/basetool/io/QHttpRequest;Ljava/net/HttpURLConnection;)V

    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p1, Lcn/com/wali/basetool/io/QHttpRequest;->b:[B

    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    return-object v0

    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "http://10.0.0.172"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const/16 v3, 0x3f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/net/URL;

    iget-object v3, p1, Lcn/com/wali/basetool/io/QHttpRequest;->a:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto/16 :goto_2

    :cond_6
    if-nez v0, :cond_7

    new-instance v0, Ljava/net/URL;

    iget-object v1, p1, Lcn/com/wali/basetool/io/QHttpRequest;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    :try_start_3
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-static {p2, p1, v0}, Lcn/com/wali/basetool/io/HttpUtils;->a(ZLcn/com/wali/basetool/io/QHttpRequest;Ljava/net/HttpURLConnection;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    :try_start_4
    new-instance v1, Ljava/net/URL;

    iget-object v3, p1, Lcn/com/wali/basetool/io/QHttpRequest;->a:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v0, v2

    goto :goto_5

    :cond_8
    move-object v0, v2

    goto/16 :goto_1
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 11

    const/4 v5, 0x0

    const/4 v1, 0x1

    const-string v0, "SDK-HttpUtils"

    const-string v2, "begin test milink network status"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v2, 0x5f5e100

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://d.g.mi.com/t.html"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "?time="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0xbb8

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v4, 0x1388

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v4, "GET"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Cache-Control"

    const-string v8, "no-cache"

    invoke-virtual {v0, v4, v8}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v6, v0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "SDK-HttpUtils"

    const-string v1, "isInternetAvailable error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v0, 0x3

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_2
    const-string v1, "SDK-HttpUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "test milink network status:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x1d5a

    invoke-virtual {v0, v2, v3, v1, p0}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->reportMilink(JILjava/lang/String;)V

    return-void

    :cond_2
    :try_start_5
    const-string v8, "SDK-HttpUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isInternetAvailable result="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "milink.test"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-wide v2

    sub-long/2addr v2, v6

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move v0, v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_2

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v4, v5

    move-object v6, v5

    :goto_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    if-eqz v4, :cond_6

    :try_start_7
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_5
    throw v1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v4, v5

    move-object v6, v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v6, v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v4, v5

    move-object v6, v5

    goto/16 :goto_1

    :catch_5
    move-exception v1

    move-object v4, v5

    move-object v6, v0

    goto/16 :goto_1
.end method

.method private static a(ZLcn/com/wali/basetool/io/QHttpRequest;Ljava/net/HttpURLConnection;)V
    .locals 3

    const/16 v0, 0x3a98

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1}, Lcn/com/wali/basetool/io/QHttpRequest;->d()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    if-eqz p0, :cond_0

    const-string v0, "X-Online-Host"

    iget-object v1, p1, Lcn/com/wali/basetool/io/QHttpRequest;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p1, Lcn/com/wali/basetool/io/QHttpRequest;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcn/com/wali/basetool/io/QHttpRequest;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/com/wali/basetool/utils/Pair;

    invoke-virtual {v1}, Lcn/com/wali/basetool/utils/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcn/com/wali/basetool/utils/Pair;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Connection"

    const-string v1, "close"

    invoke-virtual {p2, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcn/com/wali/basetool/io/QHttpRequest;)Lcn/com/wali/basetool/io/QHttpResponse;
    .locals 13

    invoke-static {p0}, Lcn/com/wali/basetool/utils/SystemConfig;->a(Landroid/content/Context;)Z

    move-result v4

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcn/com/wali/basetool/io/QHttpResponse;

    invoke-direct {v1}, Lcn/com/wali/basetool/io/QHttpResponse;-><init>()V

    iget-object v6, p1, Lcn/com/wali/basetool/io/QHttpRequest;->a:Ljava/lang/String;

    sget-boolean v2, Lcn/com/wali/basetool/log/Logger;->a:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HttpUtils reuqest only use http:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v3, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->needOnlyUseHttp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :cond_1
    invoke-static {v6}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v2

    const-wide/16 v8, 0x0

    const/16 v3, 0x1d75

    invoke-virtual {v2, v8, v9, v3, v6}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->reportMilink(JILjava/lang/String;)V

    :cond_2
    sget-boolean v2, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->needOnlyUseHttp:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Lcn/com/wali/basetool/io/QHttpRequest;->h:Z

    if-nez v2, :cond_10

    :cond_3
    :try_start_0
    invoke-static {v6}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v2

    const-wide/16 v8, 0x0

    const/16 v3, 0x1d72

    invoke-virtual {v2, v8, v9, v3, v6}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->reportMilink(JILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    const/4 v3, 0x1

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "HttpUtils Transfer requestUrl:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->getInstance()Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->isMilinkLogined()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->getInstance()Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v6, p1, v2}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->sendSyncHttpTransfer(Ljava/lang/String;Lcn/com/wali/basetool/io/QHttpRequest;Z)Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {p0}, Lcn/com/wali/basetool/utils/SystemConfig;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    sub-long v8, v10, v8

    const/4 v7, 0x2

    if-ne v0, v7, :cond_4

    const-string v0, "SDK-HttpUtils"

    const-string v7, "network status unavailable!"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getBusiCode()I

    move-result v0

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v7

    const/16 v10, 0x203

    if-eq v0, v10, :cond_5

    const/16 v10, 0x207

    if-eq v0, v10, :cond_5

    const/16 v10, 0x208

    if-ne v0, v10, :cond_7

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "transfer busCode:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getBusiCode()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ",mnsCode:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "HttpUtils transfer busCode:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getBusiCode()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ",mnsCode:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const-wide/16 v8, 0x0

    const/16 v7, 0x1d6e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " busCode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getBusiCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",mnsCode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v9, v7, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->reportMilink(JILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v3

    :goto_2
    if-eqz v0, :cond_f

    const/4 v2, 0x1

    sput-boolean v2, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->needOnlyUseHttp:Z

    iget-boolean v2, p1, Lcn/com/wali/basetool/io/QHttpRequest;->h:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Milink Transfer need http request:"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "HttpUtils Transfer need http request:"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v3

    const-wide/16 v8, 0x0

    const/16 v7, 0x1d69

    iget-object v10, p1, Lcn/com/wali/basetool/io/QHttpRequest;->a:Ljava/lang/String;

    invoke-virtual {v3, v8, v9, v7, v10}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->reportMilink(JILjava/lang/String;)V

    if-nez v2, :cond_e

    const-string v0, ">>>>>MILINK TRANSFER REQUEST ERROR, NOT USE HTTP REQUEST<<<<<"

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x2

    goto/16 :goto_1

    :cond_7
    :try_start_2
    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v10

    invoke-static {v10}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;->getCode()I

    move-result v2

    iput v2, v1, Lcn/com/wali/basetool/io/QHttpResponse;->c:I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "HttpUtils transfer response code:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",busCode:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ",mnsCode:"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne v2, v0, :cond_9

    sget-boolean v0, Lcn/com/wali/basetool/log/Logger;->a:Z

    if-eqz v0, :cond_8

    const-string v0, "milink_ret.url===="

    invoke-static {v0, v6}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "milink_ret.data===="

    invoke-virtual {v10}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v10}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;->getBodyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    iput-object v0, v1, Lcn/com/wali/basetool/io/QHttpResponse;->a:[B

    :goto_3
    move-object v0, v1

    goto/16 :goto_0

    :cond_9
    const-string v0, "SDK-HttpUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "milink responseCode:"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v2, 0x1d57

    invoke-virtual {v0, v8, v9, v2, v6}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->reportMilink(JILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    :goto_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/16 v0, 0x38

    sput v0, Lcn/com/wali/basetool/io/HttpUtils;->a:I

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_2

    :cond_a
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "transfer busCode:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getBusiCode()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ",mnsCode:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "HttpUtils transfer busCode:"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getBusiCode()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ",mnsCode:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v7, 0x1d4c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " busCode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getBusiCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",mnsCode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v7, v10}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->reportMilink(JILjava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v7, 0x1d6e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " busCode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getBusiCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",mnsCode:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v8, v9, v7, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->reportMilink(JILjava/lang/String;)V

    new-instance v0, Lcn/com/wali/basetool/io/b;

    invoke-direct {v0, v6}, Lcn/com/wali/basetool/io/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/com/wali/basetool/io/b;->start()V

    move v0, v3

    goto/16 :goto_2

    :cond_b
    const-string v0, "HttpUtils transfer packetData is null"

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V

    move v0, v3

    goto/16 :goto_2

    :cond_c
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->getInstance()Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;->initUseChannelMode()V

    move v0, v3

    goto/16 :goto_2

    :cond_d
    const/4 v3, 0x0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->getInstance()Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;->initUseChannelMode()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "HttpUtils requestUrl:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move v0, v3

    goto/16 :goto_2

    :cond_e
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v2

    const-wide/16 v8, 0x0

    const/16 v3, 0x1d74

    iget-object v7, p1, Lcn/com/wali/basetool/io/QHttpRequest;->a:Ljava/lang/String;

    invoke-virtual {v2, v8, v9, v3, v7}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->reportMilink(JILjava/lang/String;)V

    const-string v2, ">>>>>MILINK TRANSFER REQUEST ERROR, USE HTTP REQUEST<<<<<"

    invoke-static {v2}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V

    :cond_f
    :goto_5
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    const/4 v2, 0x1

    :goto_6
    :try_start_4
    invoke-static {p0, p1, v4, v2}, Lcn/com/wali/basetool/io/HttpUtils;->a(Landroid/content/Context;Lcn/com/wali/basetool/io/QHttpRequest;ZZ)Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-nez v4, :cond_12

    const/16 v0, 0x3a

    :try_start_6
    sput v0, Lcn/com/wali/basetool/io/HttpUtils;->a:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HttpUtils requestUrl:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V

    goto :goto_5

    :cond_11
    const/4 v2, 0x0

    goto :goto_6

    :catch_1
    move-exception v0

    const/16 v1, 0x37

    :try_start_7
    sput v1, Lcn/com/wali/basetool/io/HttpUtils;->a:I

    invoke-virtual {v0}, Ljava/net/ProtocolException;->printStackTrace()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const/16 v1, 0x38

    sput v1, Lcn/com/wali/basetool/io/HttpUtils;->a:I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_19

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    sput v0, Lcn/com/wali/basetool/io/HttpUtils;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpUtils response code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcn/com/wali/basetool/io/HttpUtils;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V

    sget v0, Lcn/com/wali/basetool/io/HttpUtils;->a:I

    const/16 v1, 0x193

    if-eq v0, v1, :cond_13

    sget v0, Lcn/com/wali/basetool/io/HttpUtils;->a:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/16 v1, 0x190

    if-ne v0, v1, :cond_16

    :cond_13
    const/4 v1, 0x0

    :try_start_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v0, ""

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_14
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_15
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_17

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_8

    :catch_3
    move-exception v0

    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v1, :cond_16

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_16
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Http Response Code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HttpUtils http Response Code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_17
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_9

    :catch_4
    move-exception v0

    const/16 v1, 0x39

    :try_start_b
    sput v1, Lcn/com/wali/basetool/io/HttpUtils;->a:I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcn/com/wali/basetool/io/QHttpRequest;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const/4 v0, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_18

    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_18
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_1
    move-exception v0

    throw v0

    :cond_19
    :try_start_d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "HttpUtils http Response Code:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/wali/basetool/log/Logger;->e(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iput v2, v1, Lcn/com/wali/basetool/io/QHttpResponse;->c:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const/4 v2, 0x0

    :try_start_e
    const-string v3, ""

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-object v2

    :try_start_f
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_a

    :cond_1a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iput-object v3, v1, Lcn/com/wali/basetool/io/QHttpResponse;->a:[B
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v2, :cond_1b

    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1b
    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/16 v4, 0x1d73

    invoke-virtual {v0, v2, v3, v4, v6}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->reportMilink(JILjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :cond_1c
    move-object v0, v1

    goto/16 :goto_0

    :catch_5
    move-exception v0

    move-object v1, v2

    :goto_b
    const/16 v2, 0x38

    :try_start_11
    sput v2, Lcn/com/wali/basetool/io/HttpUtils;->a:I

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v1, :cond_1d

    :try_start_12
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    :goto_c
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1e
    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_b

    :catch_7
    move-exception v2

    move v3, v0

    goto/16 :goto_4
.end method
