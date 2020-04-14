.class public final Lcom/wali/gamecenter/report/io/HttpConnectionManager;
.super Ljava/lang/Object;


# static fields
.field public static final GPRS_WAIT_TIMEOUT:I = 0x7530

.field private static final KEEP_ALIVE_DURATION_SECS:I = 0xf

.field private static final KEEP_ALIVE_INTERVAL_SECS:I = 0x1e

.field public static final MAX_ROUTE_CONNECTIONS:I = 0x100

.field public static final MAX_TOTAL_CONNECTIONS:I = 0x400

.field public static WAIT_TIMEOUT:I = 0x0

.field public static final WIFI_WAIT_TIMEOUT:I = 0x3a98

.field public static _lock_:Ljava/lang/Object;

.field private static client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static httpParams:Lorg/apache/http/params/HttpParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x7530

    sput v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->WAIT_TIMEOUT:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->_lock_:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static Init()Lcom/wali/gamecenter/report/io/HttpConnectionManager$ClientConnectionManager;
    .locals 5

    const/16 v0, 0x7530

    sput v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->WAIT_TIMEOUT:I

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sput-object v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->httpParams:Lorg/apache/http/params/HttpParams;

    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    sget-object v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->httpParams:Lorg/apache/http/params/HttpParams;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    sget-object v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->httpParams:Lorg/apache/http/params/HttpParams;

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    sget-object v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->httpParams:Lorg/apache/http/params/HttpParams;

    sget v1, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->WAIT_TIMEOUT:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    sget-object v1, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-static {v1, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    sget-object v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->httpParams:Lorg/apache/http/params/HttpParams;

    sget v1, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->WAIT_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->httpParams:Lorg/apache/http/params/HttpParams;

    sget v1, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->WAIT_TIMEOUT:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    sget-object v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->httpParams:Lorg/apache/http/params/HttpParams;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    sget-object v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->httpParams:Lorg/apache/http/params/HttpParams;

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v2, Lcom/wali/gamecenter/report/io/HttpConnectionManager$WaliSSLSocketFactory;

    invoke-direct {v2, v1}, Lcom/wali/gamecenter/report/io/HttpConnectionManager$WaliSSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v2, v1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lcom/wali/gamecenter/report/io/HttpConnectionManager$ClientConnectionManager;

    sget-object v2, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v1, v2, v0}, Lcom/wali/gamecenter/report/io/HttpConnectionManager$ClientConnectionManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-object v1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 4

    sget-object v1, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->_lock_:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-static {}, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->Init()Lcom/wali/gamecenter/report/io/HttpConnectionManager$ClientConnectionManager;

    move-result-object v2

    sget-object v3, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->httpParams:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lcom/wali/gamecenter/report/io/HttpConnectionManager$1;

    invoke-direct {v2}, Lcom/wali/gamecenter/report/io/HttpConnectionManager$1;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    sget-object v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lcom/wali/gamecenter/report/io/HttpConnectionManager$2;

    invoke-direct {v2}, Lcom/wali/gamecenter/report/io/HttpConnectionManager$2;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    sget-object v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lcom/wali/gamecenter/report/io/HttpConnectionManager$3;

    invoke-direct {v2}, Lcom/wali/gamecenter/report/io/HttpConnectionManager$3;-><init>()V

    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    :cond_0
    sget-object v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static reset()V
    .locals 2

    sget-object v1, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->_lock_:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/wali/gamecenter/report/io/HttpConnectionManager;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
