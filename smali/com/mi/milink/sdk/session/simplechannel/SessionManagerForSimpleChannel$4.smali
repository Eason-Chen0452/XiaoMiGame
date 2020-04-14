.class Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

.field final synthetic val$openStartTime:J


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;J)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    iput-wide p2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;->val$openStartTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "check isInternetAvailable begin ,id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mInfoOnOpen="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v4}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$1000(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/session/common/SessionConst;->isInternetAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/os/Device$Network;->getCurrentNetworkDetailInfo()Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v3}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "NetworkDetailInfo current="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v3}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$1000(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "at most wait 15s\uff0cid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$1100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$1100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/Object;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$600(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v7, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "statistic milink.open, code="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$1200(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)I

    move-result v2

    invoke-static {v2}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance(I)Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v3

    const-string v4, ""

    const/4 v5, 0x0

    const-string v6, "milink.open"

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;->val$openStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v3 .. v14}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel$4;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-static {v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "check isInternetAvailable end, id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    const/4 v7, 0x4

    goto :goto_1

    :cond_2
    const/4 v7, 0x4

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method
