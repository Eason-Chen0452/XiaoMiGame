.class Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$2;
.super Lcom/mi/milink/sdk/aidl/IEventCallback$Stub;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$2;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    invoke-direct {p0}, Lcom/mi/milink/sdk/aidl/IEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventGetServiceToken()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$2;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v0, v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mEventListener:Lcom/mi/milink/sdk/client/IEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$2;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v0, v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mEventListener:Lcom/mi/milink/sdk/client/IEventListener;

    invoke-interface {v0}, Lcom/mi/milink/sdk/client/IEventListener;->onEventGetServiceToken()V

    :cond_0
    return-void
.end method

.method public onEventInvalidPacket()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$2;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v0, v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mEventListener:Lcom/mi/milink/sdk/client/IEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$2;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v0, v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mEventListener:Lcom/mi/milink/sdk/client/IEventListener;

    invoke-interface {v0}, Lcom/mi/milink/sdk/client/IEventListener;->onEventInvalidPacket()V

    :cond_0
    return-void
.end method

.method public onEventKickedByServer(IJLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$2;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v0, v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mEventListener:Lcom/mi/milink/sdk/client/IEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$2;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v0, v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mEventListener:Lcom/mi/milink/sdk/client/IEventListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/mi/milink/sdk/client/IEventListener;->onEventKickedByServer(IJLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onEventServiceTokenExpired()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$2;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v0, v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mEventListener:Lcom/mi/milink/sdk/client/IEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$2;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v0, v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mEventListener:Lcom/mi/milink/sdk/client/IEventListener;

    invoke-interface {v0}, Lcom/mi/milink/sdk/client/IEventListener;->onEventServiceTokenExpired()V

    :cond_0
    return-void
.end method

.method public onEventShouldCheckUpdate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$2;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v0, v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mEventListener:Lcom/mi/milink/sdk/client/IEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$2;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    iget-object v0, v0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->mEventListener:Lcom/mi/milink/sdk/client/IEventListener;

    invoke-interface {v0}, Lcom/mi/milink/sdk/client/IEventListener;->onEventShouldCheckUpdate()V

    :cond_0
    return-void
.end method
