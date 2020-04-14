.class Lcom/mi/milink/sdk/session/persistent/SessionManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$3;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$3;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$600(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$3;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$700(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Lcom/mi/milink/sdk/session/persistent/Session;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$3;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$700(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Lcom/mi/milink/sdk/session/persistent/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->shouldCheckRequestsTimeout()Z

    move-result v0

    if-eqz v0, :cond_6

    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$3;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$200(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$3;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$800(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Lcom/mi/milink/sdk/session/persistent/Session;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$3;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$800(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Lcom/mi/milink/sdk/session/persistent/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->shouldCheckRequestsTimeout()Z

    move-result v0

    if-eqz v0, :cond_2

    move v2, v1

    :cond_2
    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$3;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$900(Lcom/mi/milink/sdk/session/persistent/SessionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/persistent/Session;

    iget v5, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mFlagForSessionManager:I

    if-eq v5, v3, :cond_4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    :cond_4
    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->shouldCheckRequestsTimeout()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    if-eqz v0, :cond_0

    const-string v0, "SessionManager"

    const-string v1, "all session request map is empty, stopTimer"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionManager$3;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionManager;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->access$1000(Lcom/mi/milink/sdk/session/persistent/SessionManager;)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_1
.end method
