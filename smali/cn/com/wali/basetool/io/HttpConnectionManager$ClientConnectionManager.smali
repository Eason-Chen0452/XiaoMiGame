.class Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;
.super Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/com/wali/basetool/io/HttpConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientConnectionManager"
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    return-void
.end method


# virtual methods
.method public requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;
    .locals 1

    invoke-static {p0}, Lcn/com/wali/basetool/io/HttpConnectionManager$IdleConnectionMonitorThread;->a(Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;)V

    invoke-virtual {p0}, Lcn/com/wali/basetool/io/HttpConnectionManager$ClientConnectionManager;->getConnectionsInPool()I

    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->requestConnection(Lorg/apache/http/conn/routing/HttpRoute;Ljava/lang/Object;)Lorg/apache/http/conn/ClientConnectionRequest;

    move-result-object v0

    return-object v0
.end method
