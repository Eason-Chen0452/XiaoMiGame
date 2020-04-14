.class Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/client/SendPacketListener;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3$1;->this$0:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3$1;->this$0:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3$1;->this$0:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3$1;->this$0:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;

    new-instance v1, Lcom/mi/milink/sdk/client/MiLinkException;

    invoke-direct {v1, p1, p2}, Lcom/mi/milink/sdk/client/MiLinkException;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;->access$100(Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onResponse(Lcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3$1;->this$0:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3$1;->this$0:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3$1;->this$0:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;

    invoke-static {v0, p1}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;->access$000(Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
