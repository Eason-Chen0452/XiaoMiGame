.class Lcom/mi/milink/sdk/client/MiLinkChannelClient$2;
.super Lcom/mi/milink/sdk/base/MessageTask;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/client/MiLinkChannelClient;

.field final synthetic val$packet:Lcom/mi/milink/sdk/aidl/PacketData;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/client/MiLinkChannelClient;Lcom/mi/milink/sdk/aidl/PacketData;I)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient$2;->this$0:Lcom/mi/milink/sdk/client/MiLinkChannelClient;

    iput-object p2, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient$2;->val$packet:Lcom/mi/milink/sdk/aidl/PacketData;

    iput p3, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient$2;->val$timeout:I

    invoke-direct {p0}, Lcom/mi/milink/sdk/base/MessageTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mi/milink/sdk/client/MiLinkChannelClient$2;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/client/MiLinkChannelClient$2;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mi/milink/sdk/client/MiLinkChannelClient$2;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/client/MiLinkChannelClient$2;->setException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public doSendWork()V
    .locals 4

    iget-object v0, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient$2;->this$0:Lcom/mi/milink/sdk/client/MiLinkChannelClient;

    iget-object v1, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient$2;->val$packet:Lcom/mi/milink/sdk/aidl/PacketData;

    iget v2, p0, Lcom/mi/milink/sdk/client/MiLinkChannelClient$2;->val$timeout:I

    new-instance v3, Lcom/mi/milink/sdk/client/MiLinkChannelClient$2$1;

    invoke-direct {v3, p0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient$2$1;-><init>(Lcom/mi/milink/sdk/client/MiLinkChannelClient$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sendAsyncWithResponse(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/session/common/ResponseListener;)V

    return-void
.end method
