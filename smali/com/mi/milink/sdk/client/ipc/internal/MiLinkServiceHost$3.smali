.class Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$3;
.super Lcom/mi/milink/sdk/aidl/IPacketCallback$Stub;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$3;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    invoke-direct {p0}, Lcom/mi/milink/sdk/aidl/IPacketCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/aidl/PacketData;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$3;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v0, v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mPacketListener:Lcom/mi/milink/sdk/client/IPacketListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$3;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v0, v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mPacketListener:Lcom/mi/milink/sdk/client/IPacketListener;

    check-cast p1, Ljava/util/ArrayList;

    invoke-interface {v0, p1}, Lcom/mi/milink/sdk/client/IPacketListener;->onReceive(Ljava/util/ArrayList;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
