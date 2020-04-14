.class final Lcom/mi/milink/sdk/client/MiLinkClient$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/session/common/ResponseListener;


# instance fields
.field final synthetic val$l:Lcom/mi/milink/sdk/client/SendPacketListener;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/client/SendPacketListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/client/MiLinkClient$2;->val$l:Lcom/mi/milink/sdk/client/SendPacketListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataSendFailed(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient$2;->val$l:Lcom/mi/milink/sdk/client/SendPacketListener;

    invoke-interface {v0, p1, p2}, Lcom/mi/milink/sdk/client/SendPacketListener;->onFailed(ILjava/lang/String;)V

    return-void
.end method

.method public final onDataSendSuccess(ILcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkClient$2;->val$l:Lcom/mi/milink/sdk/client/SendPacketListener;

    invoke-interface {v0, p2}, Lcom/mi/milink/sdk/client/SendPacketListener;->onResponse(Lcom/mi/milink/sdk/aidl/PacketData;)V

    return-void
.end method
