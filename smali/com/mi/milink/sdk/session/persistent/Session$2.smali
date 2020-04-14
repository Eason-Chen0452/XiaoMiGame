.class Lcom/mi/milink/sdk/session/persistent/Session$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/persistent/Session;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/persistent/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/Session$2;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;->StatisticsTimeoutPacket:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session$2;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {v1, v2, v3}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
