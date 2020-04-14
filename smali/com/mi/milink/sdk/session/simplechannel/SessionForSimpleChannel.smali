.class public Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;
.super Lcom/mi/milink/sdk/session/persistent/Session;

# interfaces
.implements Lcom/mi/milink/sdk/connection/IConnectionCallback;
.implements Lcom/mi/milink/sdk/session/common/MsgProcessor;


# instance fields
.field private TAG:Ljava/lang/String;

.field private accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

.field private appId:I

.field private mChannelFastLoginRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

.field private mClientIp:Ljava/lang/String;

.field private mClientIsp:Ljava/lang/String;

.field private mHandlePendingStatisticTimeoutedRunnable:Ljava/lang/Runnable;

.field private mIsHandshakeRequestFailed:Z

.field private mLogoffRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

.field private mOpenSessionSucessReturnInfo:Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;

.field private mRecBufSink:Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation
.end field

.field private sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;


# direct methods
.method public constructor <init>(Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/Session;-><init>()V

    const-string v0, "SessionForSimpleChannel_"

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$1;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRecBufSink:Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;

    new-instance v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$2;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$2;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mHandlePendingStatisticTimeoutedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mChannelFastLoginRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    new-instance v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$4;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$4;-><init>(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogoffRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    iput-boolean v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mIsHandshakeRequestFailed:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mClientIp:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mClientIsp:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milink/sdk/session/common/SessionConst;->generateSessionNO()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mSessionNO:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[No:%d]"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mSessionNO:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    iput-object v6, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    iput-object v6, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRecBufSink:Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;

    iget v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mSessionNO:I

    invoke-direct {v0, v1, v2, v5}, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;-><init>(Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;IZ)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRecBuffer:Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

    iput v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCurState:I

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    iput-object p2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    iput p3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->appId:I

    return-void
.end method

.method static synthetic access$000(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLastReceivedFastPingTime:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mHandlePendingStatisticTimeoutedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRecvDataProcessUtil:Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLastReceivedPacketTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mNeedClientInfo:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mNeedClientInfo:Z

    return v0
.end method

.method static synthetic access$600(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mPendingStatisticTimeoutedRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;Lcom/mi/milink/sdk/session/common/Request;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->isFastCheckPing(Lcom/mi/milink/sdk/session/common/Request;)Z

    move-result v0

    return v0
.end method

.method private checkIsReadTimeOut()V
    .locals 11

    const/16 v10, 0x203

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    move v2, v0

    move v3, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/Request;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->isFastCheckPing(Lcom/mi/milink/sdk/session/common/Request;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->isTimeout()Z

    move-result v3

    if-eqz v3, :cond_9

    move v2, v4

    move v3, v4

    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->isTimeout()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Const.InternalErrorCode.CONNECT_FAIL, seq="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",cmd="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getTimeOut()I

    move-result v7

    const/16 v8, 0x2710

    if-lt v7, v8, :cond_1

    move v1, v4

    :cond_1
    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->canRetry()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->setHasRetry()V

    iget-object v6, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "seq="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",cmd="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " will be retry send from timeout check."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;

    sget-object v7, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->PackageNeedRetry:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    invoke-direct {v6, v7, p0}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)V

    iput-object v0, v6, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    iget-object v7, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Request read time out, seq="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",cmd="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "request time out"

    invoke-virtual {v0, v10, v6}, Lcom/mi/milink/sdk/session/common/Request;->onDataSendFailed(ILjava/lang/String;)Z

    iget-object v6, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mPendingStatisticTimeoutedRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x204

    const-string v7, "native network broken"

    invoke-virtual {v0, v6, v7}, Lcom/mi/milink/sdk/session/common/Request;->onDataSendFailed(ILjava/lang/String;)Z

    :cond_3
    move v0, v1

    move v1, v0

    goto/16 :goto_0

    :cond_4
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milink/sdk/base/os/Device$Network;->getCurrentNetworkDetailInfo()Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-nez v2, :cond_6

    if-eqz v1, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    const-string v1, "checkIsReadTimeOut, fast ping timeout, reconnect"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->disConnect(I)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    if-nez v3, :cond_7

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->fastCheckPing()V

    goto :goto_2

    :cond_9
    move v3, v4

    goto/16 :goto_1
.end method

.method private fastCheckPing()V
    .locals 6

    const/4 v5, 0x1

    new-instance v0, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v0}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    const-string v1, "milink.ping"

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getSequence()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/aidl/PacketData;->setSeqNo(I)V

    new-instance v1, Lcom/mi/milink/sdk/session/common/Request;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v4}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/mi/milink/sdk/session/common/Request;-><init>(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/ResponseListener;BLcom/mi/milink/sdk/account/IAccount;)V

    invoke-virtual {v1, v5}, Lcom/mi/milink/sdk/session/common/Request;->setInternal(Z)V

    invoke-virtual {v1, v5}, Lcom/mi/milink/sdk/session/common/Request;->setPing(Z)V

    const/16 v0, 0x2710

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/session/common/Request;->setTimeOut(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start fast ping, seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    return-void
.end method

.method private handlePendingStatisticTimeoutedRequestMap()V
    .locals 14

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mPendingStatisticTimeoutedRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/Request;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleTimeoutedRequest seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->isJustSentFastCheckPing()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLastSendFastCheckPingTime:J

    iget-wide v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLastReceivedFastPingTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSentTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLastSendFastCheckPingTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timeouted, ping also timeout,Reported 3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v4, "milink.ping"

    :goto_1
    iget v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->appId:I

    invoke-static {v1}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance(I)Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v3}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerPort()I

    move-result v3

    :goto_3
    const/4 v5, 0x3

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSentTime()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSize()I

    move-result v10

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v12

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    const-string v2, ""

    goto :goto_2

    :cond_3
    move v3, v11

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " timeouted, ping not timeout,Reported 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v4, "milink.ping"

    :goto_4
    iget v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->appId:I

    invoke-static {v1}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance(I)Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v2

    :goto_5
    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v3}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerPort()I

    move-result v3

    :goto_6
    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSentTime()J

    move-result-wide v6

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSize()I

    move-result v10

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v12

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    invoke-interface {v13}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_6
    const-string v2, ""

    goto :goto_5

    :cond_7
    move v3, v11

    goto :goto_6

    :cond_8
    return-void
.end method

.method private isFastCheckPing(Lcom/mi/milink/sdk/session/common/Request;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/Request;->isPingRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/Request;->getTimeOut()I

    move-result v0

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isJustSentFastCheckPing()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLastSendFastCheckPingTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onOpenSessionBuildConnectFail(I)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mOpenSessionDoneTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCurState:I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;->SessionBuildFailed:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;

    invoke-direct {v1, v2, p0, p1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private onOpenSessionBuildConnectSuccess()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCurState:I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->handShake(Lcom/mi/milink/sdk/account/IAccount;)V

    return-void
.end method

.method private onOpenSessionHandshakeFail(I)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mOpenSessionDoneTime:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCurState:I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;->SessionBuildFailed:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;

    invoke-direct {v1, v2, p0, p1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private onSessionError(I)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCurState:I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;->SessionRunError:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;

    invoke-direct {v1, v2, p0, p1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private postMessage(ILjava/lang/Object;I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "postMessage "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mConn == null!!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v1, p1, p2, p3, p0}, Lcom/mi/milink/sdk/connection/IConnection;->postMessage(ILjava/lang/Object;ILcom/mi/milink/sdk/session/common/MsgProcessor;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mMessage must be full ! uMsg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addContinuousRecv110Count()V
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mContinuousRecv110Count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mContinuousRecv110Count:I

    return-void
.end method

.method public checkExceedMaxContinuousRecv110Count()Z
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mContinuousRecv110Count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mContinuousRecv110Count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mContinuousRecv110Count:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;->ServerLineBroken:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkRequestsTimeout()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->shouldCheckRequestsTimeout()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->postMessage(ILjava/lang/Object;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->RequestMapIsEmpty:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    invoke-direct {v2, v3, p0}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public close()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCanClose:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    const-string v2, "connecting! can not close"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    const-string v2, "stop begin"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v1}, Lcom/mi/milink/sdk/connection/IConnection;->stop()Z

    iput-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    iput-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCurState:I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    const-string v1, "stop over"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disConnect()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->disConnect(I)V

    return-void
.end method

.method public disConnect(I)V
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disConnect, errorCallBackErrorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->postMessage(ILjava/lang/Object;I)Z

    return-void
.end method

.method public fastLogin()V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getCurrentAccountType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {v0, v5}, Lcom/mi/milink/sdk/session/common/Request;->setInternal(Z)V

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v0, v5}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->setIsLogining(Z)V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq;->newBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/IAccount;->getPrivacyKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq$Builder;->setPrivacyKey(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq$Builder;

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->getInstance()Lcom/mi/milink/sdk/base/os/info/DeviceDash;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->getDeviceSimplifiedInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq$Builder;->setDeviceinfo(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq$Builder;

    new-instance v1, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getSequence()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setSeqNo(I)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelReq$Builder;->getDeviceinfo()Ljava/lang/String;

    const-string v0, "milink.channel"

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    new-instance v0, Lcom/mi/milink/sdk/session/common/Request;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mChannelFastLoginRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v4}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mi/milink/sdk/session/common/Request;-><init>(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/ResponseListener;BLcom/mi/milink/sdk/account/IAccount;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start channel fastlogin, seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mClientIp:Ljava/lang/String;

    return-object v0
.end method

.method public getClientIsp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mClientIsp:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsWaitTime()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mDnsWaitTime:J

    return-wide v0
.end method

.method public getOpenSessionSucessReturnInfo()Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mOpenSessionSucessReturnInfo:Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;

    return-object v0
.end method

.method public getOpenSessionTimecost()J
    .locals 4

    iget-wide v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mOpenSessionDoneTime:J

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConnectStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    return-object v0
.end method

.method public getServerProfileForStatistic()Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    return-object v0
.end method

.method public getSessionManagerForSimpleChannel()Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    return-object v0
.end method

.method public getSessionNO()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mSessionNO:I

    return v0
.end method

.method public handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    const-string v2, "handleRequest request == null"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleRequest seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNeedClientInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mNeedClientInfo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mSessionNO:I

    invoke-virtual {p1, v1}, Lcom/mi/milink/sdk/session/common/Request;->setHandleSessionNO(I)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->postMessage(ILjava/lang/Object;I)Z

    move-result v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v1}, Lcom/mi/milink/sdk/connection/IConnection;->wakeUp()V

    :cond_2
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->isTimerOpen()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->RequestMapIsNotEmpty:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    invoke-direct {v2, v3, p0}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCurState:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public isConnected()Z
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCurState:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isDeadConnection(JJ)Z
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLastReceivedPacketTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logoff()V
    .locals 5

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff;->newBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff$Builder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/config/ConfigManager;->getSuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/config/ConfigManager;->getSuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff$Builder;->setSUID(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff$Builder;

    :cond_0
    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setNeedResponse(Z)V

    const-string v2, "milink.loginoff"

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getSequence()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setSeqNo(I)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdLoginOff;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    new-instance v0, Lcom/mi/milink/sdk/session/common/Request;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogoffRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->accountManager:Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    invoke-virtual {v4}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mi/milink/sdk/session/common/Request;-><init>(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/ResponseListener;BLcom/mi/milink/sdk/account/IAccount;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/common/Request;->setInternal(Z)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start logoff, seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    return-void
.end method

.method public onAccNeedRetryWithClientInfo(Lcom/mi/milink/sdk/session/common/Request;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "onAccNeedRetryWithClientInfo"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mNeedClientInfo:Z

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/Request;->getRetryCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/Request;->addRetryCount()V

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v1, "try 118 too many times"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConnect(ZI)Z
    .locals 4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCanClose:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSuccess="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->onOpenSessionBuildConnectSuccess()V

    :goto_0
    return v3

    :cond_0
    invoke-direct {p0, p2}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0
.end method

.method public onDisconnect()Z
    .locals 5

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    const-string v1, "OnDisconnect"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRecBuffer:Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->reset()V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/Request;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Const.InternalErrorCode.CONNECT_FAIL, seq="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->canRetry()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->setHasRetry()V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "seq="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " will be retry send from onDisconnect."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->PackageNeedRetry:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    invoke-direct {v2, v3, p0}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)V

    iput-object v0, v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x204

    const-string v3, "native network broken"

    invoke-virtual {v0, v2, v3}, Lcom/mi/milink/sdk/session/common/Request;->onDataSendFailed(ILjava/lang/String;)Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->handlePendingStatisticTimeoutedRequestMap()V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mPendingStatisticTimeoutedRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public onError(I)Z
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mIsHandshakeRequestFailed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError but handshake failed has already notice SM, socketStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCurState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mIsHandshakeRequestFailed:Z

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError socketStatus "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCurState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCurState:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError wrong state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCurState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x20e

    if-ne p1, v0, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->onOpenSessionHandshakeFail(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->onOpenSessionHandshakeFail(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->onSessionError(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onMsgProc(ILjava/lang/Object;I)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onMsgProc, uMsg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", wParam="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnMsgProc unknow uMsgID = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    const-string v1, "OnMsgProc mServerProfile == null!!!"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/mi/milink/sdk/connection/DomainManager;->getInstance()Lcom/mi/milink/sdk/connection/DomainManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/connection/DomainManager;->getDomainIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-direct {p0, v4}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->setServerIP(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "connect to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConnectStartTime:J

    iget-wide v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConnectStartTime:J

    sub-long v2, v4, v2

    iput-wide v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mDnsWaitTime:J

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-eqz v0, :cond_0

    iput-boolean v6, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCanClose:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerPort()I

    move-result v2

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v3}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProxyIP()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getPorxyPort()I

    move-result v4

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milink/sdk/config/ConfigManager;->getConnetionTimeout()I

    move-result v5

    invoke-interface/range {v0 .. v6}, Lcom/mi/milink/sdk/connection/IConnection;->connect(Ljava/lang/String;ILjava/lang/String;III)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    check-cast p2, Lcom/mi/milink/sdk/session/common/Request;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->isValidNow()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    const-string v1, "seq=%d,cmd=%s is invalid"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x3e6

    const-string v1, "package is already over the valid time"

    invoke-virtual {p2, v0, v1}, Lcom/mi/milink/sdk/session/common/Request;->onDataSendFailed(ILjava/lang/String;)Z

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/mi/milink/sdk/session/common/Request;->setSentTime(J)V

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v1

    const-string v2, "milink.fastlogin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "milink.anonymous"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iput-boolean v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mNeedClientInfo:Z

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    const-string v3, "set mNeedClientInfo=true when send login or fastlogin"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-boolean v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mNeedClientInfo:Z

    invoke-virtual {v0, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setNeedClientInfo(Z)V

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->toBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->needResponse()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-direct {p0, p2}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->isFastCheckPing(Lcom/mi/milink/sdk/session/common/Request;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLastSendFastCheckPingTime:J

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mHandlePendingStatisticTimeoutedRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x27d8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connection send data, seq="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->getTimeOut()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lcom/mi/milink/sdk/connection/IConnection;->sendData([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milink/sdk/debug/TrafficMonitor;

    move-result-object v0

    array-length v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->traffic(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x206

    const-string v1, "data encryption failed"

    invoke-virtual {p2, v0, v1}, Lcom/mi/milink/sdk/session/common/Request;->onDataSendFailed(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    const-string v1, "connection send data, but data = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->checkIsReadTimeOut()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v0}, Lcom/mi/milink/sdk/connection/IConnection;->disconnect()Z

    :cond_a
    iput v6, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCurState:I

    if-lez p3, :cond_0

    invoke-direct {p0, p3}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->onSessionError(I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->handlePendingStatisticTimeoutedRequestMap()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onOpenSessionHandshakeSuccess(Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mOpenSessionDoneTime:J

    const/4 v0, 0x4

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCurState:I

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mOpenSessionSucessReturnInfo:Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;->SessionBuildSuccess:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionConnectEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onRecv([B)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recv data:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRecBuffer:Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRecBuffer:Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

    invoke-virtual {v1, p1}, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->append([B)V
    :try_end_0
    .catch Lcom/mi/milink/sdk/session/common/InvalidPacketExecption; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/16 v2, 0x205

    invoke-virtual {p0, v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->disConnect(I)V

    iget v1, v1, Lcom/mi/milink/sdk/session/common/InvalidPacketExecption;->errCode:I

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->sessionManager:Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;->RecvInvalidPacket:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;

    invoke-direct {v1, v2, p0}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionOtherEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSendBegin(I)Z
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send begin: seq="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onSendEnd(I)Z
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send end: seq="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public onStart()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTimeOut(II)Z
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send time out: seq="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public openSession(Lcom/mi/milink/sdk/session/common/ServerProfile;)Z
    .locals 6

    const/16 v5, 0x232

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->resetContinuousRecv110Count()V

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mIsHandshakeRequestFailed:Z

    iput-boolean v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mNeedClientInfo:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openSession fail, serverprofile="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x22d

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->onOpenSessionBuildConnectFail(I)V

    :goto_0
    return v0

    :cond_1
    iput v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mCurState:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLastSendFastCheckPingTime:J

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v2

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v3

    if-eq v2, v3, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    const-string v3, "openSession if"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v2}, Lcom/mi/milink/sdk/connection/IConnection;->stop()Z

    :cond_3
    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v2

    if-ne v2, v1, :cond_4

    new-instance v2, Lcom/mi/milink/sdk/connection/TcpConnection;

    iget v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mSessionNO:I

    invoke-direct {v2, v3, p0}, Lcom/mi/milink/sdk/connection/TcpConnection;-><init>(ILcom/mi/milink/sdk/connection/IConnectionCallback;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    :cond_4
    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    :try_start_0
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v2}, Lcom/mi/milink/sdk/connection/IConnection;->start()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-nez v2, :cond_7

    invoke-direct {p0, v5}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    const-string v4, "connection start failed"

    invoke-static {v3, v4, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    const-string v3, "openSession else"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v2

    if-ne v2, v1, :cond_6

    new-instance v2, Lcom/mi/milink/sdk/connection/TcpConnection;

    iget v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mSessionNO:I

    invoke-direct {v2, v3, p0}, Lcom/mi/milink/sdk/connection/TcpConnection;-><init>(ILcom/mi/milink/sdk/connection/IConnectionCallback;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    :cond_6
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v2}, Lcom/mi/milink/sdk/connection/IConnection;->isRunning()Z

    move-result v2

    if-nez v2, :cond_7

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    :try_start_1
    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v2}, Lcom/mi/milink/sdk/connection/IConnection;->start()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_2
    if-nez v2, :cond_7

    invoke-direct {p0, v5}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :catch_1
    move-exception v2

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mLogTag:Ljava/lang/String;

    const-string v4, "connection start failed"

    invoke-static {v3, v4, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v0

    goto :goto_2

    :cond_7
    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->postMessage(ILjava/lang/Object;I)Z

    move v0, v1

    goto/16 :goto_0
.end method

.method public postStatisticsTimeoutPacketAction()V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->postMessage(ILjava/lang/Object;I)Z

    return-void
.end method

.method public resetContinuousRecv110Count()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mContinuousRecv110Count:I

    return-void
.end method

.method public shouldCheckRequestsTimeout()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
