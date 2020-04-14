.class Lcom/mi/milink/sdk/session/persistent/SessionManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$2;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "SessionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "internalAutoOpen mOpenSessionTryTimes="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$2;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v2}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$300(Lcom/mi/milink/sdk/session/persistent/SessionManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$2;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v2}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$400(Lcom/mi/milink/sdk/session/persistent/SessionManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$2;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$300(Lcom/mi/milink/sdk/session/persistent/SessionManager;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$2;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$400(Lcom/mi/milink/sdk/session/persistent/SessionManager;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$2;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$308(Lcom/mi/milink/sdk/session/persistent/SessionManager;)I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$2;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$500(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V

    :cond_0
    return-void
.end method
