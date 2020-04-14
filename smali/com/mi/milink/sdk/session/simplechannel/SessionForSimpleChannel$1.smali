.class Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddTimeout(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRecvDownStream(I[B)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    const-string v1, "[No:%d]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1$1;

    invoke-direct {v4, p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1$1;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;)V

    invoke-static {v1, p2, v4}, Lcom/mi/milink/sdk/session/common/StreamUtil;->getDownPacket(Ljava/lang/String;[BLcom/mi/milink/sdk/session/common/StreamUtil$GetAccountAdapter;)Lcom/mi/milink/sdk/aidl/PacketData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v3, v1

    :goto_1
    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v1, v4, v5}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$202(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;J)J

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-virtual {v3}, Lcom/mi/milink/sdk/aidl/PacketData;->hasClientInfo()Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v2

    :cond_2
    invoke-static {v1, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$302(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;Z)Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$400(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, " onRecvDownStream cmd="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mnscode="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " seq="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " and set mNeedClientInfo="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v4}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$500(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milink/sdk/debug/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v3}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v1

    array-length v4, p2

    invoke-virtual {v0, v1, v4}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->traffic(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$600(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v3}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/Request;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$700(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v3}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mi/milink/sdk/session/common/Request;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$800(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v3}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$900(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;Lcom/mi/milink/sdk/session/common/Request;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1002(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;J)J

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v4}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1100(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v4}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1100(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1200(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->selectHandleUtil(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/Request;)Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;->handle()Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1300(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1400(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->RequestMapIsEmpty:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    iget-object v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-direct {v1, v3, v4}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    iget-object v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v4}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "decode downstream failed"

    invoke-static {v4, v5, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_5
    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_2
.end method
