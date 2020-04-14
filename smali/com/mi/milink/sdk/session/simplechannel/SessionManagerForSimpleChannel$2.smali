.class Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$2;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$2;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$500(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$2;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$600(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$2;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$600(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->shouldCheckRequestsTimeout()Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$2;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$700(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    iget v5, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mFlagForSessionManager:I

    if-eq v5, v3, :cond_3

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    :cond_3
    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->shouldCheckRequestsTimeout()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$2;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "all session request map is empty, stopTimer"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$2;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$800(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v2, v3

    goto :goto_1
.end method
