.class Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/session/common/ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1400(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;->LogoffCmdReturn:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDataSendSuccess(ILcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 5

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1400(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;->LogoffCmdReturn:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
