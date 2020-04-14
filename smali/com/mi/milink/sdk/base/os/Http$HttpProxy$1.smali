.class final Lcom/mi/milink/sdk/base/os/Http$HttpProxy$1;
.super Lcom/mi/milink/sdk/base/os/Http$HttpProxy;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/base/os/Http$HttpProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHost()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPort()I
    .locals 1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    return v0
.end method
