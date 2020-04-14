.class Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$1;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v3, 0x0

    const-string v0, "MiLinkClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receive event callback: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$1;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->onHandleInternalServiceEvent(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$1;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    invoke-static {v0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->access$000(Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;)V

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost$1;->this$0:Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
