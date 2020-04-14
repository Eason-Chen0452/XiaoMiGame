.class Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$2;->this$0:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "MiLinkClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMilinkServiceReady send cache size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$2;->this$0:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    iget-object v2, v2, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mServiceNotReadyCache:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$2;->this$0:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    iget-object v0, v0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mServiceNotReadyCache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/mi/milink/sdk/aidl/PacketData;

    const/16 v3, 0x2710

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/client/SendPacketListener;

    const/4 v4, 0x1

    invoke-static {v1, v3, v0, v4}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->sendAsync(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/client/SendPacketListener;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$2;->this$0:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    iget-object v0, v0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mServiceNotReadyCache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
