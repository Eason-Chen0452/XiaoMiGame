.class final Lcom/xiaomi/gamecenter/sdk/milink/a;
.super Lcom/mi/milink/sdk/base/MessageTask;


# instance fields
.field final synthetic a:Lcom/mi/milink/sdk/aidl/PacketData;

.field final synthetic b:I

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;Lcom/mi/milink/sdk/aidl/PacketData;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/a;->c:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/milink/a;->a:Lcom/mi/milink/sdk/aidl/PacketData;

    iput p3, p0, Lcom/xiaomi/gamecenter/sdk/milink/a;->b:I

    invoke-direct {p0}, Lcom/mi/milink/sdk/base/MessageTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/milink/a;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/milink/a;->set(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/milink/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/gamecenter/sdk/milink/a;->setException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final doSendWork()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/a;->c:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/a;->a:Lcom/mi/milink/sdk/aidl/PacketData;

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/milink/a;->b:I

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/milink/b;

    invoke-direct {v3, p0}, Lcom/xiaomi/gamecenter/sdk/milink/b;-><init>(Lcom/xiaomi/gamecenter/sdk/milink/a;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;->sendAsyncWithResponse(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/session/common/ResponseListener;)V

    return-void
.end method
