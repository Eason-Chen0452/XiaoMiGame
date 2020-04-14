.class Lcom/wali/gamecenter/report/io/HttpConnectionManager$ClientConnectionManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-void
.end method


# virtual methods
.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 2

    const/16 v0, 0xf

    const/16 v1, 0x1e

    invoke-static {p0, v0, v1}, Lcom/wali/gamecenter/report/io/HttpConnectionManager$IdleConnectionMonitorThread;->ensureRunning(Lcom/wali/gamecenter/report/io/HttpConnectionManager$ClientConnectionManager;II)V

    invoke-virtual {p0}, Lcom/wali/gamecenter/report/io/HttpConnectionManager$ClientConnectionManager;->getConnectionsInPool()I

    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v0

    return-object v0
.end method
