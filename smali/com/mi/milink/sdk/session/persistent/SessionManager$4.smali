.class Lcom/mi/milink/sdk/session/persistent/SessionManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$4;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$4;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$1100(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V

    return-void
.end method
