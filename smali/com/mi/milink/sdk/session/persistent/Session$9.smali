.class Lcom/mi/milink/sdk/session/persistent/Session$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/session/common/ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/persistent/Session;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/persistent/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/Session$9;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 5

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;->LogoffCmdReturn:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session$9;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDataSendSuccess(ILcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 5

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;->LogoffCmdReturn:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session$9;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
