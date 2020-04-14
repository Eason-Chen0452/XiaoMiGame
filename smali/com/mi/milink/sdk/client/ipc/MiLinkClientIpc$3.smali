.class final Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;
.super Lcom/mi/milink/sdk/base/MessageTask;


# instance fields
.field final synthetic val$packet:Lcom/mi/milink/sdk/aidl/PacketData;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/aidl/PacketData;I)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;->val$packet:Lcom/mi/milink/sdk/aidl/PacketData;

    iput p2, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;->val$timeout:I

    invoke-direct {p0}, Lcom/mi/milink/sdk/base/MessageTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;->setException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final doSendWork()V
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;->val$packet:Lcom/mi/milink/sdk/aidl/PacketData;

    iget v1, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;->val$timeout:I

    new-instance v2, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3$1;

    invoke-direct {v2, p0}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3$1;-><init>(Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;)V

    invoke-static {v0, v1, v2}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->sendAsync(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/client/SendPacketListener;)V

    return-void
.end method
