.class Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

.field final synthetic val$request:Lcom/mi/milink/sdk/session/common/Request;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;Lcom/mi/milink/sdk/session/common/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    iput-object p2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->val$request:Lcom/mi/milink/sdk/session/common/Request;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$1300(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send data, session manager state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v3}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$300(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x1770

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->isDeadConnection(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "session isDeadConnection=true"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->setState(I)V

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$1400(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "push request in cache, seq="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->val$request:Lcom/mi/milink/sdk/session/common/Request;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$1500(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->val$request:Lcom/mi/milink/sdk/session/common/Request;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    const-string v1, "handleRequest"

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->login(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send data to session, seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->val$request:Lcom/mi/milink/sdk/session/common/Request;

    invoke-virtual {v3}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$5;->val$request:Lcom/mi/milink/sdk/session/common/Request;

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    goto :goto_0
.end method
