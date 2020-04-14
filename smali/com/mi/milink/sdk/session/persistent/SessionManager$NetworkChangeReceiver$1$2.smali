.class Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1$2;->this$2:Lcom/mi/milink/sdk/session/persistent/SessionManager$NetworkChangeReceiver$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;->NetWorkChange:Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SystemNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
