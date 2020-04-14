.class Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$2;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$2;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1400(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->StatisticsTimeoutPacket:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$2;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-direct {v1, v2, v3}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
