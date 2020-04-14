.class final Lcom/mi/milink/sdk/base/os/info/NetworkDash$1;
.super Lcom/mi/milink/sdk/base/os/info/NetworkObserver;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/base/os/info/NetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkChanged()V
    .locals 1

    new-instance v0, Lcom/mi/milink/sdk/base/os/info/NetworkDash$1$1;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/base/os/info/NetworkDash$1$1;-><init>(Lcom/mi/milink/sdk/base/os/info/NetworkDash$1;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/base/os/info/NetworkDash$1$1;->start()V

    return-void
.end method
