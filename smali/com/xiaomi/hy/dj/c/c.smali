.class Lcom/xiaomi/hy/dj/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/client/IEventListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/c/b;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/c/c;->a:Lcom/xiaomi/hy/dj/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventGetServiceToken()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/c;->a:Lcom/xiaomi/hy/dj/c/b;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/c/b;->a:Lcom/mi/milink/sdk/client/MiLinkChannelClient;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->initUseChannelMode()V

    return-void
.end method

.method public onEventInvalidPacket()V
    .locals 0

    return-void
.end method

.method public onEventKickedByServer(IJLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/c;->a:Lcom/xiaomi/hy/dj/c/b;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/c/b;->a:Lcom/mi/milink/sdk/client/MiLinkChannelClient;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->initUseChannelMode()V

    return-void
.end method

.method public onEventServiceTokenExpired()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/c;->a:Lcom/xiaomi/hy/dj/c/b;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/c/b;->a:Lcom/mi/milink/sdk/client/MiLinkChannelClient;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->initUseChannelMode()V

    return-void
.end method

.method public onEventShouldCheckUpdate()V
    .locals 0

    return-void
.end method
