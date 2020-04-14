.class final Lcom/xiaomi/gamecenter/sdk/milink/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/client/IEventListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/d;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEventGetServiceToken()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/d;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;->initUseChannelMode()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/d;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    const-wide/16 v2, 0x0

    const/16 v1, 0x1d52

    const/16 v4, 0x2710

    invoke-static {v0, v2, v3, v1, v4}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$000(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;JII)V

    return-void
.end method

.method public final onEventInvalidPacket()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/d;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    const-wide/16 v2, 0x0

    const/16 v1, 0x1d55

    const/16 v4, 0x2713

    invoke-static {v0, v2, v3, v1, v4}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$000(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;JII)V

    return-void
.end method

.method public final onEventKickedByServer(IJLjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/d;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;->initUseChannelMode()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/d;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    const-wide/16 v2, 0x0

    const/16 v1, 0x1d56

    const/16 v4, 0x2714

    invoke-static {v0, v2, v3, v1, v4}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$000(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;JII)V

    return-void
.end method

.method public final onEventServiceTokenExpired()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/d;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;->initUseChannelMode()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/d;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    const-wide/16 v2, 0x0

    const/16 v1, 0x1d53

    const/16 v4, 0x2711

    invoke-static {v0, v2, v3, v1, v4}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$000(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;JII)V

    return-void
.end method

.method public final onEventShouldCheckUpdate()V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/d;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    const-wide/16 v2, 0x0

    const/16 v1, 0x1d54

    const/16 v4, 0x2712

    invoke-static {v0, v2, v3, v1, v4}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->access$000(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;JII)V

    return-void
.end method
