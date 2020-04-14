.class Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$7;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$7;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "milink mLogoffRunnable run"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$7;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$900(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$7;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$1900(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->logoff()V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$7;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$2000(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$7;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$1500(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    return-void
.end method
