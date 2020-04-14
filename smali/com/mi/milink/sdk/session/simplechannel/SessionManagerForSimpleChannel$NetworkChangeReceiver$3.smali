.class Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver$3;->this$1:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver$3;->this$1:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$NetworkChangeReceiver;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$1800(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;->NetWorkChange:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SystemNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
