.class public Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;
.super Lcom/mi/milink/sdk/base/CustomHandlerThread;


# static fields
.field private static final MAX_BATCH_COUNT:I = 0xa

.field private static final MAX_DISPATCH_PACKET_DELAY_TIME:I = 0x1f4

.field private static final MSG_ADD_PACKET:I = 0x1

.field private static final MSG_DISPATCH_PACKET:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MnsPacketDispatcher"

.field private static sInstance:Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;


# instance fields
.field private volatile mDispatchPacketDelayTime:J

.field private mDispatchPacketDelayTimeWhenScreenOn:J

.field private mListener:Lcom/mi/milink/sdk/client/IPacketListener;

.field private final mPacketCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/aidl/PacketData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;

    invoke-direct {v0}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->sInstance:Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, "MnsPacketDispatcher"

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/base/CustomHandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mPacketCache:Ljava/util/List;

    iput-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mDispatchPacketDelayTimeWhenScreenOn:J

    iput-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mDispatchPacketDelayTime:J

    const-string v0, "MnsPacketDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MnsPacketDispatcher created, threadId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private execDispatch()V
    .locals 3

    const-string v0, "MnsPacketDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DISPATCH_PACKET, mPacketCache.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mPacketCache:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mPacketCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mPacketCache:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mPacketCache:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mListener:Lcom/mi/milink/sdk/client/IPacketListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mListener:Lcom/mi/milink/sdk/client/IPacketListener;

    invoke-interface {v1, v0}, Lcom/mi/milink/sdk/client/IPacketListener;->onReceive(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->sInstance:Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;

    return-object v0
.end method


# virtual methods
.method public dispatchPacket(Lcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 6

    if-eqz p1, :cond_1

    const-string v0, "MnsPacketDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatch packet data, seq="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mDispatchPacketDelayTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->sendMessage(Landroid/os/Message;)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v0, "MnsPacketDispatcher"

    const-string v1, "dispatch packet data, but data is null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "MnsPacketDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage unknown msgid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/aidl/PacketData;

    if-eqz v0, :cond_0

    const-string v1, "MnsPacketDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ADD_PACKET, seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mPacketCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v4}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->removeMessage(I)V

    iget-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mDispatchPacketDelayTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mPacketCache:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mDispatchPacketDelayTime:J

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->execDispatch()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/aidl/PacketData;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mPacketCache:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->execDispatch()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCallback(Lcom/mi/milink/sdk/client/IPacketListener;)V
    .locals 4

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const-string v0, "MnsPacketDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "register packet callback. callback="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mListener:Lcom/mi/milink/sdk/client/IPacketListener;

    invoke-virtual {p0, v3}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->removeMessage(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "MnsPacketDispatcher"

    const-string v1, "register packet callback, but callback is null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDispatchPacketDelayTime(J)V
    .locals 5

    const-wide/16 v2, 0x1f4

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    iput-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mDispatchPacketDelayTimeWhenScreenOn:J

    :goto_0
    iget-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mDispatchPacketDelayTimeWhenScreenOn:J

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mDispatchPacketDelayTime:J

    return-void

    :cond_0
    iput-wide p1, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mDispatchPacketDelayTimeWhenScreenOn:J

    goto :goto_0
.end method

.method public setDispatchPacketDelayTimeWhenScreenOff()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mDispatchPacketDelayTime:J

    return-void
.end method

.method public setDispatchPacketDelayTimeWhenScreenOn()V
    .locals 2

    iget-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mDispatchPacketDelayTimeWhenScreenOn:J

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->mDispatchPacketDelayTime:J

    return-void
.end method
