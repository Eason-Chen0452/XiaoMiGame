.class public Lcom/mi/milink/sdk/session/persistent/Session;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/connection/IConnectionCallback;
.implements Lcom/mi/milink/sdk/session/common/MsgProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/session/persistent/Session$B;
    }
.end annotation


# static fields
.field protected static final CONNECTED_STATE:I = 0x2

.field protected static final CONNECTING_STATE:I = 0x1

.field protected static final FAST_CHECK_PING_TIME_OUT:I = 0x2710

.field protected static final HANDSHAKE_INITED_STATE:I = 0x4

.field protected static final HANDSHAKE_INITING_STATE:I = 0x3

.field protected static final MSG_CHECK_TIMEOUT:I = 0x3

.field protected static final MSG_CONNECT:I = 0x1

.field protected static final MSG_DISCONNECT:I = 0x4

.field protected static final MSG_HANDLE_REQUEST:I = 0x2

.field protected static final MSG_POST_STATISTICS_TIMEOUT_PACKET:I = 0x5

.field protected static final NO_CONNECT_STATE:I = 0x0

.field public static final SESSION_TYPE_ASSIST:I = 0x1

.field public static final SESSION_TYPE_DEFAULT:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private appId:I

.field private mAnonymousFastLoginRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

.field protected mCanClose:Z

.field private mChannelFastLoginRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

.field private mClientIp:Ljava/lang/String;

.field private mClientIsp:Ljava/lang/String;

.field protected mConn:Lcom/mi/milink/sdk/connection/IConnection;

.field protected mConnectStartTime:J

.field protected mContinuousRecv110Count:I

.field protected mCurState:I

.field protected mDnsWaitTime:J

.field private mFastLoginRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

.field public mFlagForSessionManager:I

.field protected mHandShakeRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

.field private mHandlePendingStatisticTimeoutedRunnable:Ljava/lang/Runnable;

.field private mIsHandshakeRequestFailed:Z

.field protected mLastReceivedFastPingTime:J

.field protected mLastReceivedPacketTime:J

.field protected mLastSendFastCheckPingTime:J

.field protected mLogTag:Ljava/lang/String;

.field private mLogoffRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

.field protected mNeedClientInfo:Z

.field protected mOpenSessionDoneTime:J

.field private mOpenSessionSucessReturnInfo:Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;

.field protected mPendingStatisticTimeoutedRequestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mi/milink/sdk/session/common/Request;",
            ">;"
        }
    .end annotation
.end field

.field private mRecBufSink:Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;

.field protected mRecBuffer:Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

.field protected mRecvDataProcessUtil:Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;

.field protected mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mi/milink/sdk/session/common/Request;",
            ">;"
        }
    .end annotation
.end field

.field protected mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

.field protected mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

.field protected mSessionNO:I

.field protected mSessionType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/Session;-><init>(I)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->appId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "Session"

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->TAG:Ljava/lang/String;

    iput v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionType:I

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mNeedClientInfo:Z

    iput v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionNO:I

    iput-wide v4, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConnectStartTime:J

    iput-wide v4, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mOpenSessionDoneTime:J

    iput-wide v4, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mDnsWaitTime:J

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mPendingStatisticTimeoutedRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-wide v4, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLastSendFastCheckPingTime:J

    iput-wide v4, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLastReceivedFastPingTime:J

    iput-wide v4, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLastReceivedPacketTime:J

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->TAG:Ljava/lang/String;

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;

    invoke-direct {v2, p0}, Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;-><init>(Lcom/mi/milink/sdk/session/persistent/Session;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRecvDataProcessUtil:Lcom/mi/milink/sdk/session/persistent/RecvDataProcessUtil;

    iput v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mContinuousRecv110Count:I

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCanClose:Z

    new-instance v2, Lcom/mi/milink/sdk/session/persistent/Session$1;

    invoke-direct {v2, p0}, Lcom/mi/milink/sdk/session/persistent/Session$1;-><init>(Lcom/mi/milink/sdk/session/persistent/Session;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRecBufSink:Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;

    new-instance v2, Lcom/mi/milink/sdk/session/persistent/Session$2;

    invoke-direct {v2, p0}, Lcom/mi/milink/sdk/session/persistent/Session$2;-><init>(Lcom/mi/milink/sdk/session/persistent/Session;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mHandlePendingStatisticTimeoutedRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/mi/milink/sdk/session/persistent/Session$3;

    invoke-direct {v2, p0}, Lcom/mi/milink/sdk/session/persistent/Session$3;-><init>(Lcom/mi/milink/sdk/session/persistent/Session;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mHandShakeRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    new-instance v2, Lcom/mi/milink/sdk/session/persistent/Session$4;

    invoke-direct {v2, p0}, Lcom/mi/milink/sdk/session/persistent/Session$4;-><init>(Lcom/mi/milink/sdk/session/persistent/Session;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mAnonymousFastLoginRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    new-instance v2, Lcom/mi/milink/sdk/session/persistent/Session$5;

    invoke-direct {v2, p0}, Lcom/mi/milink/sdk/session/persistent/Session$5;-><init>(Lcom/mi/milink/sdk/session/persistent/Session;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mFastLoginRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    new-instance v2, Lcom/mi/milink/sdk/session/persistent/Session$6;

    invoke-direct {v2, p0}, Lcom/mi/milink/sdk/session/persistent/Session$6;-><init>(Lcom/mi/milink/sdk/session/persistent/Session;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mChannelFastLoginRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    new-instance v2, Lcom/mi/milink/sdk/session/persistent/Session$9;

    invoke-direct {v2, p0}, Lcom/mi/milink/sdk/session/persistent/Session$9;-><init>(Lcom/mi/milink/sdk/session/persistent/Session;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogoffRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    iput-boolean v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mIsHandshakeRequestFailed:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mClientIp:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mClientIsp:Ljava/lang/String;

    iput p1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionType:I

    invoke-static {}, Lcom/mi/milink/sdk/session/common/SessionConst;->generateSessionNO()I

    move-result v2

    iput v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionNO:I

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionType:I

    if-ne v2, v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[as_No:%d]"

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionNO:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    :goto_0
    iput-object v6, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    iput-object v6, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRecBufSink:Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;

    iget v4, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionNO:I

    iget v5, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionType:I

    if-ne v5, v0, :cond_1

    :goto_1
    invoke-direct {v2, v3, v4, v0}, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;-><init>(Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;IZ)V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRecBuffer:Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

    iput v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[No:%d]"

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionNO:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/mi/milink/sdk/session/persistent/Session;Lcom/mi/milink/sdk/session/common/Request;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/session/persistent/Session;->isFastCheckPing(Lcom/mi/milink/sdk/session/common/Request;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mi/milink/sdk/session/persistent/Session;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mHandlePendingStatisticTimeoutedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mi/milink/sdk/session/persistent/Session;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mClientIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mi/milink/sdk/session/persistent/Session;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mClientIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mi/milink/sdk/session/persistent/Session;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mClientIsp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mi/milink/sdk/session/persistent/Session;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mClientIsp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mi/milink/sdk/session/persistent/Session;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mi/milink/sdk/session/persistent/Session;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mIsHandshakeRequestFailed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/mi/milink/sdk/session/persistent/Session;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/session/persistent/Session;->onOpenSessionHandshakeFail(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/mi/milink/sdk/session/persistent/Session;)I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->appId:I

    return v0
.end method

.method private checkIsReadTimeOut()V
    .locals 14

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-instance v6, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/Request;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->isFastCheckPing(Lcom/mi/milink/sdk/session/common/Request;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->isTimeout()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-wide v8, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLastReceivedPacketTime:J

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getCreatedTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_2

    const/4 v2, 0x1

    iget-object v7, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mLastReceivedPacketTime = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLastReceivedPacketTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",createTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getCreatedTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", fastping is timeout"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->isTimeout()Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const-string v5, "milink.heartbeat"

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v7

    if-ne v5, v7, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/config/HeartBeatManager;->getInstance()Lcom/mi/milink/sdk/config/HeartBeatManager;

    move-result-object v5

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->reciveTimeoutHeartBeat(I)V

    :cond_1
    move v0, v1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    iget-object v7, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "mLastReceivedPacketTime = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v10, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLastReceivedPacketTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",createTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getCreatedTime()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", fastping timeout,but can recv msg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v4, v0

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/Request;

    iget-object v10, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Request read time out, seq="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",cmd="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getTimeOut()I

    move-result v10

    const/16 v11, 0x2710

    if-lt v10, v11, :cond_4

    const/4 v5, 0x1

    :cond_4
    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSentTime()J

    move-result-wide v10

    sub-long v10, v8, v10

    const-wide/32 v12, 0x9c40

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    const/4 v4, 0x1

    iget-object v10, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v11, "hasLongLongTimeoutRequest=true"

    invoke-static {v10, v11}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/16 v10, 0x203

    const-string v11, "request time out"

    invoke-virtual {v0, v10, v11}, Lcom/mi/milink/sdk/session/common/Request;->onDataSendFailed(ILjava/lang/String;)Z

    iget-object v10, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mPendingStatisticTimeoutedRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    if-eqz v5, :cond_7

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milink/sdk/base/os/Device$Network;->getCurrentNetworkDetailInfo()Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mi/milink/sdk/base/os/Device$Network$NetworkDetailInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLastReceivedPacketTime:J

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x493e0

    cmp-long v0, v6, v8

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_3
    if-nez v2, :cond_8

    if-nez v4, :cond_8

    if-nez v0, :cond_8

    const/4 v6, 0x2

    if-le v1, v6, :cond_b

    :cond_8
    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkIsReadTimeOut,isFastCheckPingTimeout="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " hasLongLongTimeoutRequest="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " isFastCheckPingTimeout || hasLongLongTimeoutRequest || isBadConnect="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " timeoutNum="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x203

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->disConnect(I)V

    :cond_9
    :goto_4
    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_3

    :cond_b
    if-nez v3, :cond_9

    if-eqz v5, :cond_9

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/Session;->fastCheckPing()V

    goto :goto_4
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

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/mi/milink/sdk/session/common/Request;-><init>(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/ResponseListener;BLcom/mi/milink/sdk/account/IAccount;)V

    invoke-virtual {v1, v5}, Lcom/mi/milink/sdk/session/common/Request;->setInternal(Z)V

    invoke-virtual {v1, v5}, Lcom/mi/milink/sdk/session/common/Request;->setPing(Z)V

    const/16 v0, 0x2710

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/session/common/Request;->setTimeOut(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

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

    invoke-virtual {p0, v1}, Lcom/mi/milink/sdk/session/persistent/Session;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    return-void
.end method

.method private handlePendingStatisticTimeoutedRequestMap()V
    .locals 14

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mPendingStatisticTimeoutedRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

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

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

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

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/Session;->isJustSentFastCheckPing()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLastSendFastCheckPingTime:J

    iget-wide v4, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLastReceivedFastPingTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSentTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLastSendFastCheckPingTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

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
    iget v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->appId:I

    invoke-static {v1}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance(I)Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

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
    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

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
    iget v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->appId:I

    invoke-static {v1}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance(I)Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v2

    :goto_5
    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

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

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLastSendFastCheckPingTime:J

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

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mOpenSessionDoneTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->AssistSessionConnectFailed:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;

    invoke-direct {v1, v2, p0, p1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->SessionBuildFailed:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;

    invoke-direct {v1, v2, p0, p1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onOpenSessionBuildConnectSuccess()V
    .locals 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->AssistSessionConnectSuccess:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->handShake(Lcom/mi/milink/sdk/account/IAccount;)V

    goto :goto_0
.end method

.method private onOpenSessionHandshakeFail(I)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mOpenSessionDoneTime:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->SessionBuildFailed:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;

    invoke-direct {v1, v2, p0, p1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private onSessionError(I)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->AssistSessionRunError:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;

    invoke-direct {v1, v2, p0, p1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->SessionRunError:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;

    invoke-direct {v1, v2, p0, p1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private postMessage(ILjava/lang/Object;I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v1, p1, p2, p3, p0}, Lcom/mi/milink/sdk/connection/IConnection;->postMessage(ILjava/lang/Object;ILcom/mi/milink/sdk/session/common/MsgProcessor;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

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

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mContinuousRecv110Count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mContinuousRecv110Count:I

    return-void
.end method

.method public checkExceedMaxContinuousRecv110Count()Z
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mContinuousRecv110Count = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mContinuousRecv110Count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mContinuousRecv110Count:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionType:I

    if-nez v0, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ServerLineBroken:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkRequestsTimeout()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/Session;->shouldCheckRequestsTimeout()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->postMessage(ILjava/lang/Object;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;->RequestMapIsEmpty:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;

    invoke-direct {v2, v3, p0}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public close()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCanClose:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v2, "connecting! can not close"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v2, "stop begin"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v1}, Lcom/mi/milink/sdk/connection/IConnection;->stop()Z

    iput-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    iput-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v1, "stop over"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disConnect()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->disConnect(I)V

    return-void
.end method

.method public disConnect(I)V
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

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

    invoke-direct {p0, v0, v1, p1}, Lcom/mi/milink/sdk/session/persistent/Session;->postMessage(ILjava/lang/Object;I)Z

    return-void
.end method

.method public fastLogin()V
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getCurrentAccountType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-virtual {v0, v5}, Lcom/mi/milink/sdk/session/common/Request;->setInternal(Z)V

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->setIsLogining(Z)V

    return-void

    :pswitch_0
    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq;->newBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq$Builder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/config/ConfigManager;->getSuidAnonymous()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq$Builder;->setSUID(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq$Builder;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start Anonymous fastlogin, suid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {}, Lcom/mi/milink/sdk/account/AnonymousAccount;->getInstance()Lcom/mi/milink/sdk/account/AnonymousAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/AnonymousAccount;->getPrivacyKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq$Builder;->setPrivacyKey(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq$Builder;

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->getInstance()Lcom/mi/milink/sdk/base/os/info/DeviceDash;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->getDeviceSimplifiedInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq$Builder;->setDeviceinfo(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq$Builder;

    invoke-virtual {v0, v5}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq$Builder;->setOnoff(Z)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq$Builder;

    new-instance v1, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getSequence()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setSeqNo(I)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousReq;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    const-string v0, "milink.anonymous"

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    new-instance v0, Lcom/mi/milink/sdk/session/common/Request;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mAnonymousFastLoginRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    const/4 v3, 0x7

    invoke-static {}, Lcom/mi/milink/sdk/account/AnonymousAccount;->getInstance()Lcom/mi/milink/sdk/account/AnonymousAccount;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mi/milink/sdk/session/common/Request;-><init>(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/ResponseListener;BLcom/mi/milink/sdk/account/IAccount;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start anonymous fastlogin, seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->TAG:Ljava/lang/String;

    const-string v2, "start Anonymous fastlogin, suid is empty"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq;->newBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq$Builder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/config/ConfigManager;->getSuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq$Builder;->setSUID(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq$Builder;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start fastlogin, suid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getPassportInit()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq$Builder;->setPassportlogin(Z)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq$Builder;

    invoke-virtual {v0, v5}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq$Builder;->setOnoff(Z)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq$Builder;

    invoke-static {}, Lcom/mi/milink/sdk/account/MiAccount;->getInstance()Lcom/mi/milink/sdk/account/MiAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/MiAccount;->getFastLoginExtra()[B

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq$Builder;->setExtra(Lcom/google/protobuf/ByteString;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq$Builder;

    :cond_1
    new-instance v1, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getSequence()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setSeqNo(I)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdFastloginReq;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    const-string v0, "milink.fastlogin"

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    new-instance v0, Lcom/mi/milink/sdk/session/common/Request;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mFastLoginRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    const/4 v3, 0x3

    invoke-static {}, Lcom/mi/milink/sdk/account/MiAccount;->getInstance()Lcom/mi/milink/sdk/account/MiAccount;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mi/milink/sdk/session/common/Request;-><init>(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/ResponseListener;BLcom/mi/milink/sdk/account/IAccount;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start fastlogin, seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->TAG:Ljava/lang/String;

    const-string v2, "start fastlogin, suid is empty"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getClientIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mClientIp:Ljava/lang/String;

    return-object v0
.end method

.method public getClientIsp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mClientIsp:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsWaitTime()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mDnsWaitTime:J

    return-wide v0
.end method

.method public getOpenSessionSucessReturnInfo()Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mOpenSessionSucessReturnInfo:Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;

    return-object v0
.end method

.method public getOpenSessionTimecost()J
    .locals 4

    iget-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mOpenSessionDoneTime:J

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConnectStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    return-object v0
.end method

.method public getServerProfileForStatistic()Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    return-object v0
.end method

.method public getSessionNO()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionNO:I

    return v0
.end method

.method protected handShake(Lcom/mi/milink/sdk/account/IAccount;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x3

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->newBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->setType(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    const-string v2, "milink.handshake"

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getSequence()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setSeqNo(I)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeReq;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    new-instance v0, Lcom/mi/milink/sdk/session/common/Request;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mHandShakeRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/mi/milink/sdk/session/common/Request;-><init>(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/ResponseListener;BLcom/mi/milink/sdk/account/IAccount;)V

    invoke-virtual {v0, v4}, Lcom/mi/milink/sdk/session/common/Request;->setInternal(Z)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start hand shake, seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    return-void
.end method

.method public handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v2, "handleRequest request == null"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/mi/milink/sdk/config/HeartBeatManager;->getInstance()Lcom/mi/milink/sdk/config/HeartBeatManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v2

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mi/milink/sdk/config/HeartBeatManager;->setLastPacketSendTime(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRequest seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mServerProfile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v3}, Lcom/mi/milink/sdk/session/common/ServerProfile;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNeedClientInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mNeedClientInfo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionNO:I

    invoke-virtual {p1, v1}, Lcom/mi/milink/sdk/session/common/Request;->setHandleSessionNO(I)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->postMessage(ILjava/lang/Object;I)Z

    move-result v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v1}, Lcom/mi/milink/sdk/connection/IConnection;->wakeUp()V

    :cond_2
    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->getInstance()Lcom/mi/milink/sdk/session/persistent/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/persistent/SessionManager;->isTimerOpen()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;->RequestMapIsNotEmpty:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;

    invoke-direct {v2, v3, p0}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public heartBeat(Z)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isHeartBeatEnable()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat;->newBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/config/ConfigManager;->getConfigTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder;->setTimeStamp(J)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->isAnonymousModeCurrent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/ConfigManager;->getSuidAnonymous()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder;->setSUID(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start heartbeat, suid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v0, Lcom/mi/milink/sdk/session/persistent/Session$B;

    invoke-direct {v0}, Lcom/mi/milink/sdk/session/persistent/Session$B;-><init>()V

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isSupportMiPush()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->hasUploadRegIdToServer()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getMiPushRegId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "heartbeat regid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "utf-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder;->setDevicetoken(Lcom/google/protobuf/ByteString;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mi/milink/sdk/session/persistent/Session$B;->b:Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_3
    new-instance v2, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v2}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    const-string v3, "milink.heartbeat"

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getSequence()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/aidl/PacketData;->setSeqNo(I)V

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat$Builder;->build()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeat;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    new-instance v1, Lcom/mi/milink/sdk/session/common/Request;

    new-instance v3, Lcom/mi/milink/sdk/session/persistent/Session$7;

    invoke-direct {v3, p0, v0}, Lcom/mi/milink/sdk/session/persistent/Session$7;-><init>(Lcom/mi/milink/sdk/session/persistent/Session;Lcom/mi/milink/sdk/session/persistent/Session$B;)V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getBusinessEncByMode()B

    move-result v0

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/mi/milink/sdk/session/common/Request;-><init>(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/ResponseListener;BLcom/mi/milink/sdk/account/IAccount;)V

    invoke-virtual {v1, v6}, Lcom/mi/milink/sdk/session/common/Request;->setInternal(Z)V

    if-eqz p1, :cond_4

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/Session$8;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/session/persistent/Session$8;-><init>(Lcom/mi/milink/sdk/session/persistent/Session;)V

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/session/common/Request;->setAfterHandleCallBack(Lcom/mi/milink/sdk/session/common/Request$AfterHandleCallBack;)V

    invoke-static {}, Lcom/mi/milink/sdk/config/HeartBeatManager;->getInstance()Lcom/mi/milink/sdk/config/HeartBeatManager;

    move-result-object v0

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mi/milink/sdk/config/HeartBeatManager;->startHeartBeatProbeManager(I)V

    :goto_4
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start heartbeat, seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/mi/milink/sdk/session/persistent/Session;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/ConfigManager;->getSuid()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v2, "start heartbeat, suid is empty"

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/mi/milink/sdk/config/HeartBeatManager;->getInstance()Lcom/mi/milink/sdk/config/HeartBeatManager;

    move-result-object v0

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mi/milink/sdk/config/HeartBeatManager;->sendHeartBeat(I)V

    goto :goto_4

    :catch_0
    move-exception v2

    goto/16 :goto_3
.end method

.method public isAvailable()Z
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

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

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

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

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLastReceivedPacketTime:J

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

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogoffRspListener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getBusinessEncByMode()B

    move-result v3

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mi/milink/sdk/session/common/Request;-><init>(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/ResponseListener;BLcom/mi/milink/sdk/account/IAccount;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/common/Request;->setInternal(Z)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    return-void
.end method

.method public onAccNeedRetryWithClientInfo(Lcom/mi/milink/sdk/session/common/Request;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->TAG:Ljava/lang/String;

    const-string v1, "onAccNeedRetryWithClientInfo"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mNeedClientInfo:Z

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/Request;->getRetryCount()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/Request;->addRetryCount()V

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/session/persistent/Session;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->TAG:Ljava/lang/String;

    const-string v1, "try 118 too many times"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConnect(ZI)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCanClose:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/Session;->onOpenSessionBuildConnectSuccess()V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/mi/milink/sdk/session/persistent/Session;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0
.end method

.method public onDisconnect()Z
    .locals 5

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v1, "OnDisconnect"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRecBuffer:Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->reset()V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/Request;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

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

    const/16 v2, 0x204

    const-string v3, "native network broken"

    invoke-virtual {v0, v2, v3}, Lcom/mi/milink/sdk/session/common/Request;->onDataSendFailed(ILjava/lang/String;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/Session;->handlePendingStatisticTimeoutedRequestMap()V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mPendingStatisticTimeoutedRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    const/4 v0, 0x1

    return v0
.end method

.method public onError(I)Z
    .locals 4

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mIsHandshakeRequestFailed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError but handshake failed has already notice SM, socketStatus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mIsHandshakeRequestFailed:Z

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError socketStatus "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError wrong state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/mi/milink/sdk/session/persistent/Session;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x20e

    if-ne p1, v0, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->onOpenSessionHandshakeFail(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->onOpenSessionHandshakeFail(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/session/persistent/Session;->onSessionError(I)V

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

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v1, "OnMsgProc mServerProfile == null!!!"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/mi/milink/sdk/session/persistent/Session;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfileForStatistic:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/mi/milink/sdk/connection/DomainManager;->getInstance()Lcom/mi/milink/sdk/connection/DomainManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/connection/DomainManager;->getDomainIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-direct {p0, v4}, Lcom/mi/milink/sdk/session/persistent/Session;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->setServerIP(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "connect to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConnectStartTime:J

    iget-wide v4, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConnectStartTime:J

    sub-long v2, v4, v2

    iput-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mDnsWaitTime:J

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-eqz v0, :cond_0

    iput-boolean v6, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCanClose:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerPort()I

    move-result v2

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v3}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProxyIP()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getPorxyPort()I

    move-result v4

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milink/sdk/config/ConfigManager;->getConnetionTimeout()I

    move-result v5

    invoke-interface/range {v0 .. v6}, Lcom/mi/milink/sdk/connection/IConnection;->connect(Ljava/lang/String;ILjava/lang/String;III)Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_1
    check-cast p2, Lcom/mi/milink/sdk/session/common/Request;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->isValidNow()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

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
    iput-boolean v4, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mNeedClientInfo:Z

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v3, "set mNeedClientInfo=true when send login or fastlogin"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-boolean v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mNeedClientInfo:Z

    invoke-virtual {v0, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setNeedClientInfo(Z)V

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->toBytes()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->needResponse()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-direct {p0, p2}, Lcom/mi/milink/sdk/session/persistent/Session;->isFastCheckPing(Lcom/mi/milink/sdk/session/common/Request;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLastSendFastCheckPingTime:J

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mHandlePendingStatisticTimeoutedRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x27d8

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    if-eqz v2, :cond_9

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

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
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x206

    const-string v1, "data encryption failed"

    invoke-virtual {p2, v0, v1}, Lcom/mi/milink/sdk/session/common/Request;->onDataSendFailed(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v1, "connection send data, but data = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/Session;->checkIsReadTimeOut()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v0}, Lcom/mi/milink/sdk/connection/IConnection;->disconnect()Z

    :cond_a
    iput v6, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnMsgProc disconnect = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCurState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p3, :cond_0

    invoke-direct {p0, p3}, Lcom/mi/milink/sdk/session/persistent/Session;->onSessionError(I)V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/Session;->handlePendingStatisticTimeoutedRequestMap()V

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

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mOpenSessionDoneTime:J

    const/4 v0, 0x4

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mOpenSessionSucessReturnInfo:Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;->SessionBuildSuccess:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v3}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionConnectEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onRecv([B)Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recv data:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRecBuffer:Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRecBuffer:Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

    invoke-virtual {v1, p1}, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->append([B)V
    :try_end_0
    .catch Lcom/mi/milink/sdk/session/common/InvalidPacketExecption; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/16 v2, 0x205

    invoke-virtual {p0, v2}, Lcom/mi/milink/sdk/session/persistent/Session;->disConnect(I)V

    :cond_1
    iget v1, v1, Lcom/mi/milink/sdk/session/common/InvalidPacketExecption;->errCode:I

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionType:I

    if-nez v0, :cond_2

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;->RecvInvalidPacket:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;

    invoke-direct {v1, v2, p0}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionOtherEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSendBegin(I)Z
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send end: seq="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/Session;->resetContinuousRecv110Count()V

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mIsHandshakeRequestFailed:Z

    iput-boolean v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mNeedClientInfo:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "openSession fail, serverprofile="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x22d

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/session/persistent/Session;->onOpenSessionBuildConnectFail(I)V

    :goto_0
    return v0

    :cond_1
    iput v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mCurState:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLastSendFastCheckPingTime:J

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v2

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v3

    if-eq v2, v3, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v2}, Lcom/mi/milink/sdk/connection/IConnection;->stop()Z

    :cond_3
    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v2

    if-ne v2, v1, :cond_4

    new-instance v2, Lcom/mi/milink/sdk/connection/TcpConnection;

    iget v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionNO:I

    invoke-direct {v2, v3, p0}, Lcom/mi/milink/sdk/connection/TcpConnection;-><init>(ILcom/mi/milink/sdk/connection/IConnectionCallback;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    :cond_4
    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    :try_start_0
    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v2}, Lcom/mi/milink/sdk/connection/IConnection;->start()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    if-nez v2, :cond_7

    invoke-direct {p0, v5}, Lcom/mi/milink/sdk/session/persistent/Session;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v4, "connection start failed"

    invoke-static {v3, v4, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-nez v2, :cond_6

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v2

    if-ne v2, v1, :cond_6

    new-instance v2, Lcom/mi/milink/sdk/connection/TcpConnection;

    iget v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mSessionNO:I

    invoke-direct {v2, v3, p0}, Lcom/mi/milink/sdk/connection/TcpConnection;-><init>(ILcom/mi/milink/sdk/connection/IConnectionCallback;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    :cond_6
    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v2}, Lcom/mi/milink/sdk/connection/IConnection;->isRunning()Z

    move-result v2

    if-nez v2, :cond_7

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    :try_start_1
    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v2}, Lcom/mi/milink/sdk/connection/IConnection;->start()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_2
    if-nez v2, :cond_7

    invoke-direct {p0, v5}, Lcom/mi/milink/sdk/session/persistent/Session;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :catch_1
    move-exception v2

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v4, "connection start failed"

    invoke-static {v3, v4, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v0

    goto :goto_2

    :cond_7
    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->postMessage(ILjava/lang/Object;I)Z

    move v0, v1

    goto/16 :goto_0
.end method

.method public ping()V
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

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v4

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/mi/milink/sdk/session/common/Request;-><init>(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/ResponseListener;BLcom/mi/milink/sdk/account/IAccount;)V

    invoke-virtual {v1, v5}, Lcom/mi/milink/sdk/session/common/Request;->setInternal(Z)V

    invoke-virtual {v1, v5}, Lcom/mi/milink/sdk/session/common/Request;->setPing(Z)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start ping, seq="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/mi/milink/sdk/session/persistent/Session;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    return-void
.end method

.method public postStatisticsTimeoutPacketAction()V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/mi/milink/sdk/session/persistent/Session;->postMessage(ILjava/lang/Object;I)Z

    return-void
.end method

.method public pushAck(I)V
    .locals 6

    const/4 v3, 0x0

    mul-int/lit8 v0, p1, -0x1

    new-instance v1, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    const-string v2, "milink.push.ack"

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setSeqNo(I)V

    new-array v2, v3, [B

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    invoke-virtual {v1, v3}, Lcom/mi/milink/sdk/aidl/PacketData;->setNeedResponse(Z)V

    invoke-virtual {v1, v3}, Lcom/mi/milink/sdk/aidl/PacketData;->setNeedClientInfo(Z)V

    new-instance v2, Lcom/mi/milink/sdk/session/common/Request;

    const/4 v3, 0x0

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getBusinessEncByMode()B

    move-result v4

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/mi/milink/sdk/session/common/Request;-><init>(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/ResponseListener;BLcom/mi/milink/sdk/account/IAccount;)V

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/mi/milink/sdk/session/common/Request;->setInternal(Z)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start push ack, seq="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/mi/milink/sdk/session/persistent/Session;->handleRequest(Lcom/mi/milink/sdk/session/common/Request;)Z

    return-void
.end method

.method public resetContinuousRecv110Count()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mContinuousRecv110Count:I

    return-void
.end method

.method public setAppId(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/session/persistent/Session;->appId:I

    return-void
.end method

.method public shouldCheckRequestsTimeout()Z
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/Session;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session;->mRequestMap:Ljava/util/concurrent/ConcurrentHashMap;

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
