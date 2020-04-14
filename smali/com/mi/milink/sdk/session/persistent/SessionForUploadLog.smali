.class public Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/connection/IConnectionCallback;
.implements Lcom/mi/milink/sdk/session/common/MsgProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogUtils;,
        Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;
    }
.end annotation


# static fields
.field private static final CONNECTED_STATE:I = 0x2

.field private static final CONNECTING_STATE:I = 0x1

.field private static final MSG_CONNECT:I = 0x1

.field private static final MSG_DISCONNECT:I = 0x4

.field private static final MSG_HANDLE_REQUEST:I = 0x2

.field private static final NO_CONNECT_STATE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SessionForUploadLog"


# instance fields
.field private mCanClose:Z

.field private mConn:Lcom/mi/milink/sdk/connection/IConnection;

.field private mCurState:I

.field public mFlagForSessionManager:I

.field private mIAccount:Lcom/mi/milink/sdk/account/IAccount;

.field private mLogReq:Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

.field private mRecBufSink:Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;

.field protected mRecBuffer:Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

.field private mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

.field mUploadLogListener:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;

.field request:Lcom/mi/milink/sdk/session/common/Request;


# direct methods
.method public constructor <init>(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;Lcom/mi/milink/sdk/account/IAccount;Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mCurState:I

    iput-boolean v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mCanClose:Z

    iput-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mLogReq:Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$1;

    invoke-direct {v0, p0}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$1;-><init>(Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mRecBufSink:Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;

    iput-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    iput-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    iput v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mCurState:I

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mLogReq:Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mLogReq:Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->newBuilder()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    const-string v1, "58.83.160.103:80"

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->setIp(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->setTime(I)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->build()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mLogReq:Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    :cond_0
    iput-object p2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mIAccount:Lcom/mi/milink/sdk/account/IAccount;

    iput-object p3, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mUploadLogListener:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;

    new-instance v0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mRecBufSink:Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;

    invoke-direct {v0, v1, v2, v3}, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;-><init>(Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;IZ)V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mRecBuffer:Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

    return-void
.end method

.method static synthetic access$000(Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;)Lcom/mi/milink/sdk/account/IAccount;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mIAccount:Lcom/mi/milink/sdk/account/IAccount;

    return-object v0
.end method

.method private onOpenSessionBuildConnectFail(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mCurState:I

    return-void
.end method

.method private onOpenSessionBuildConnectSuccess()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mCurState:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->uploadLog()V

    return-void
.end method

.method private onSessionError(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mCurState:I

    return-void
.end method

.method private postMessage(ILjava/lang/Object;I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-nez v1, :cond_1

    const-string v1, "SessionForUploadLog"

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
    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v1, p1, p2, p3, p0}, Lcom/mi/milink/sdk/connection/IConnection;->postMessage(ILjava/lang/Object;ILcom/mi/milink/sdk/session/common/MsgProcessor;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "SessionForUploadLog"

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
.method public close()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mCanClose:Z

    if-nez v1, :cond_0

    const-string v1, "SessionForUploadLog"

    const-string v2, "connecting! can not close"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-eqz v1, :cond_1

    const-string v1, "SessionForUploadLog"

    const-string v2, "stop begin"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v1}, Lcom/mi/milink/sdk/connection/IConnection;->stop()Z

    iput-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    iput-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mCurState:I

    const-string v0, "SessionForUploadLog"

    const-string v1, "stop over"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disConnect()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->disConnect(I)V

    return-void
.end method

.method public disConnect(I)V
    .locals 3

    const-string v0, "SessionForUploadLog"

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

    invoke-direct {p0, v0, v1, p1}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->postMessage(ILjava/lang/Object;I)Z

    return-void
.end method

.method public getServerProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mCurState:I

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
    .end packed-switch
.end method

.method public onConnect(ZI)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mCanClose:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->onOpenSessionBuildConnectSuccess()V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0
.end method

.method public onDisconnect()Z
    .locals 2

    const-string v0, "SessionForUploadLog"

    const-string v1, "OnDisconnect"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mRecBuffer:Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->reset()V

    const/4 v0, 0x1

    return v0
.end method

.method public onError(I)Z
    .locals 4

    const/4 v3, 0x1

    const-string v0, "SessionForUploadLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError socketStatus "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mCurState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mCurState:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "SessionForUploadLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError wrong state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mCurState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onMsgProc(ILjava/lang/Object;I)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v0, "SessionForUploadLog"

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

    :pswitch_0
    const-string v0, "SessionForUploadLog"

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

    :pswitch_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milink/sdk/util/CommonUtils;->isLegalIp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mi/milink/sdk/connection/DomainManager;->getInstance()Lcom/mi/milink/sdk/connection/DomainManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/connection/DomainManager;->getDomainIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-direct {p0, v4}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->setServerIP(Ljava/lang/String;)V

    :goto_1
    const-string v0, "SessionForUploadLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connect to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-eqz v0, :cond_0

    iput-boolean v6, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mCanClose:Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerPort()I

    move-result v2

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v3}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProxyIP()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v4}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getPorxyPort()I

    move-result v4

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milink/sdk/config/ConfigManager;->getConnetionTimeout()I

    move-result v5

    invoke-interface/range {v0 .. v6}, Lcom/mi/milink/sdk/connection/IConnection;->connect(Ljava/lang/String;ILjava/lang/String;III)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_2
    check-cast p2, Lcom/mi/milink/sdk/session/common/Request;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->isValidNow()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "SessionForUploadLog"

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

    const/16 v0, 0x3e6

    const-string v1, "package is already over the valid time"

    invoke-virtual {p2, v0, v1}, Lcom/mi/milink/sdk/session/common/Request;->onDataSendFailed(ILjava/lang/String;)Z

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/mi/milink/sdk/session/common/Request;->setSentTime(J)V

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->toBytes()[B

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "SessionForUploadLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connection send data, seq="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v3

    invoke-virtual {p2}, Lcom/mi/milink/sdk/session/common/Request;->getTimeOut()I

    move-result v4

    invoke-interface {v2, v1, v3, v4}, Lcom/mi/milink/sdk/connection/IConnection;->sendData([BII)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milink/sdk/debug/TrafficMonitor;

    move-result-object v2

    array-length v1, v1

    invoke-virtual {v2, v0, v1}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->traffic(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x206

    const-string v1, "data encryption failed"

    invoke-virtual {p2, v0, v1}, Lcom/mi/milink/sdk/session/common/Request;->onDataSendFailed(ILjava/lang/String;)Z

    const-string v0, "SessionForUploadLog"

    const-string v1, "connection send data, but data = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mUploadLogListener:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mUploadLogListener:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;

    invoke-interface {v0}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;->failed()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v0}, Lcom/mi/milink/sdk/connection/IConnection;->disconnect()Z

    :cond_5
    iput v6, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mCurState:I

    if-lez p3, :cond_0

    invoke-direct {p0, p3}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->onSessionError(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onRecv([B)Z
    .locals 3

    const-string v0, "SessionForUploadLog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "recv data:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mRecBuffer:Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mRecBuffer:Lcom/mi/milink/sdk/session/common/ReceiveBuffer;

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->append([B)V
    :try_end_0
    .catch Lcom/mi/milink/sdk/session/common/InvalidPacketExecption; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/16 v0, 0x205

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->disConnect(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSendBegin(I)Z
    .locals 3

    const-string v0, "SessionForUploadLog"

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

    const-string v0, "SessionForUploadLog"

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

    const-string v0, "SessionForUploadLog"

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

.method public openSession()Z
    .locals 9

    const/16 v8, 0x232

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mLogReq:Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    if-nez v2, :cond_1

    const-string v1, "SessionForUploadLog"

    const-string v2, "mLogReq is null"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mLogReq:Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getIp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SessionForUploadLog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ipAndPortStr"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_0

    array-length v2, v3

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    :try_start_0
    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x4

    invoke-direct {v2, v5, v3, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v1, "SessionForUploadLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "openSession fail, serverprofile="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x22d

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->onOpenSessionBuildConnectFail(I)V

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v3, v4

    goto :goto_2

    :cond_3
    iput v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mCurState:I

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v2

    invoke-virtual {v3}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v5

    if-eq v2, v5, :cond_7

    :cond_4
    const-string v2, "SessionForUploadLog"

    const-string v5, "openSession if"

    invoke-static {v2, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v2}, Lcom/mi/milink/sdk/connection/IConnection;->stop()Z

    :cond_5
    invoke-virtual {v3}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v2

    if-ne v2, v1, :cond_6

    new-instance v2, Lcom/mi/milink/sdk/connection/TcpConnection;

    invoke-direct {v2, v0, p0}, Lcom/mi/milink/sdk/connection/TcpConnection;-><init>(ILcom/mi/milink/sdk/connection/IConnectionCallback;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    :cond_6
    iput-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    :try_start_1
    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v2}, Lcom/mi/milink/sdk/connection/IConnection;->start()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_3
    if-nez v2, :cond_9

    invoke-direct {p0, v8}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->onOpenSessionBuildConnectFail(I)V

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string v5, "SessionForUploadLog"

    const-string v6, "connection start failed"

    invoke-static {v5, v6, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v0

    goto :goto_3

    :cond_7
    const-string v2, "SessionForUploadLog"

    const-string v5, "openSession else"

    invoke-static {v2, v5}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-nez v2, :cond_8

    invoke-virtual {v3}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v2

    if-ne v2, v1, :cond_8

    new-instance v2, Lcom/mi/milink/sdk/connection/TcpConnection;

    invoke-direct {v2, v0, p0}, Lcom/mi/milink/sdk/connection/TcpConnection;-><init>(ILcom/mi/milink/sdk/connection/IConnectionCallback;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    :cond_8
    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v2}, Lcom/mi/milink/sdk/connection/IConnection;->isRunning()Z

    move-result v2

    if-nez v2, :cond_9

    iput-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    :try_start_2
    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v2}, Lcom/mi/milink/sdk/connection/IConnection;->start()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    :goto_4
    if-nez v2, :cond_9

    invoke-direct {p0, v8}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->onOpenSessionBuildConnectFail(I)V

    goto/16 :goto_0

    :catch_2
    move-exception v2

    const-string v5, "SessionForUploadLog"

    const-string v6, "connection start failed"

    invoke-static {v5, v6, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v0

    goto :goto_4

    :cond_9
    iput-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-direct {p0, v1, v4, v0}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->postMessage(ILjava/lang/Object;I)Z

    move v0, v1

    goto/16 :goto_0

    :cond_a
    move-object v3, v4

    goto/16 :goto_1
.end method

.method public uploadLog()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v0}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getSequence()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/aidl/PacketData;->setSeqNo(I)V

    invoke-virtual {v0, v6}, Lcom/mi/milink/sdk/aidl/PacketData;->setHasClientInfo(Z)V

    const-string v1, "milink.uploadlog"

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mLogReq:Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getTime()I

    move-result v1

    invoke-static {v1}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogUtils;->getLogFile(I)[Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogUtils;->createTemp([Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogUtils;->getFileBytes(Ljava/io/File;)[B

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->close()Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mUploadLogListener:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mUploadLogListener:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;

    invoke-interface {v0}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogListener;->failed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    new-instance v2, Lcom/mi/milink/sdk/session/common/Request;

    new-instance v3, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$2;

    invoke-direct {v3, p0}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$2;-><init>(Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;)V

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mIAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/mi/milink/sdk/session/common/Request;-><init>(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/ResponseListener;BLcom/mi/milink/sdk/account/IAccount;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->request:Lcom/mi/milink/sdk/session/common/Request;

    const/4 v0, 0x2

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->request:Lcom/mi/milink/sdk/session/common/Request;

    invoke-direct {p0, v0, v2, v6}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->postMessage(ILjava/lang/Object;I)Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->mConn:Lcom/mi/milink/sdk/connection/IConnection;

    invoke-interface {v0}, Lcom/mi/milink/sdk/connection/IConnection;->wakeUp()V

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_0
.end method
