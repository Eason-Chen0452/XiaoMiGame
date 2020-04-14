.class public Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;
.super Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;


# static fields
.field public static final CHANNEL_BUSY_CANCEL_FLAG_NUMBER:J = 0x3L

.field public static final CHANNEL_BUSY_FLAG_INTERVAL:J = 0xbb8L

.field public static final CHANNEL_BUSY_FLAG_NUMBER:J = 0x96L

.field private static final CLASSTAG:Ljava/lang/String; = "MnsCodeCopeWaysWithPush"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBeginStatisticsTime:J

.field private mLargeIntervalNumber:I

.field private mLastRecvPushTimeStamp:J

.field private mRecvPushNumber:I


# direct methods
.method public constructor <init>(Lcom/mi/milink/sdk/session/persistent/Session;)V
    .locals 4

    const-wide/16 v0, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;-><init>(Lcom/mi/milink/sdk/session/persistent/Session;)V

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mBeginStatisticsTime:J

    iput v3, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvPushNumber:I

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mLastRecvPushTimeStamp:J

    iput v3, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mLargeIntervalNumber:I

    const-string v0, "[No:%d]%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/persistent/Session;->getSessionNO()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "MnsCodeCopeWaysWithPush"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->TAG:Ljava/lang/String;

    return-void
.end method

.method private estimateChannelBusy()V
    .locals 10

    const-wide/16 v8, 0xbb8

    const-wide/16 v4, 0x96

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mBeginStatisticsTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v8

    if-gez v2, :cond_2

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvPushNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvPushNumber:I

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvPushNumber:I

    int-to-long v2, v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent;

    sget-object v4, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;->channelBusy:Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;

    invoke-direct {v3, v4, v7}, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mLastRecvPushTimeStamp:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_3

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mLargeIntervalNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mLargeIntervalNumber:I

    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mLargeIntervalNumber:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mBeginStatisticsTime:J

    iput v6, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvPushNumber:I

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent;

    sget-object v4, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;->channelIdle:Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;

    invoke-direct {v3, v4, v7}, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_1
    :goto_1
    iput-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mLastRecvPushTimeStamp:J

    return-void

    :cond_2
    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvPushNumber:I

    int-to-long v2, v2

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mBeginStatisticsTime:J

    iput v6, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvPushNumber:I

    goto :goto_0

    :cond_3
    iput v6, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mLargeIntervalNumber:I

    goto :goto_1
.end method


# virtual methods
.method protected afterHandle()V
    .locals 13

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->isPushPacket()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfileForStatistic()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfileForStatistic()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfileForStatistic()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfileForStatistic()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerPort()I

    move-result v3

    :goto_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->isPushPacket()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "milink.push."

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v4}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    iget v5, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRetCode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getResponseSize()I

    move-result v11

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v12

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    :cond_0
    return-void

    :cond_1
    const-string v2, ""

    goto :goto_0

    :cond_2
    move v3, v10

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method protected onAccNeedRetry()V
    .locals 0

    return-void
.end method

.method protected onB2TokenExpired()V
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    instance-of v0, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    check-cast v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getSessionManagerForSimpleChannel()Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;->B2tokenExpired:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->B2tokenExpired:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onBusinessCmdTimeout()V
    .locals 0

    return-void
.end method

.method protected onInternalCmdTimeout()V
    .locals 0

    return-void
.end method

.method protected onKickedByServer()V
    .locals 0

    return-void
.end method

.method protected onOk()V
    .locals 4

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->TAG:Ljava/lang/String;

    const-string v1, "recv data and to dispatcher"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "milink.kick"

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->TAG:Ljava/lang/String;

    const-string v1, "get kick push"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$SimplePushData;->parseFrom([B)Lcom/mi/milink/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$SimplePushData;->getPushdata()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;

    move-result-object v0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->KickByServer:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-direct {v2, v3, v0}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getBusiCode()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRetCode:I

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "milink.push.log"

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$SimplePushData;->parseFrom([B)Lcom/mi/milink/sdk/proto/PushPacketProto$SimplePushData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$SimplePushData;->getPushdata()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getType()I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->requireUploadLog:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-direct {v2, v3, v0}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->getInstance()Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->dispatchPacket(Lcom/mi/milink/sdk/aidl/PacketData;)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne v2, v1, :cond_0

    :try_start_2
    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getLogLevel()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "recv push log level,loglevel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;->getLoglevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;->getTimeLong()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->requireChannelLogLevel:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-direct {v2, v3, v0}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->getInstance()Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->dispatchPacket(Lcom/mi/milink/sdk/aidl/PacketData;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->pushAck(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/aidl/PacketData;->setSeqNo(I)V

    goto/16 :goto_0
.end method

.method protected onServerTokenExpired()V
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysWithPush;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    instance-of v0, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ServiceTokenExpired:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onUnknowMsnCode(I)V
    .locals 0

    return-void
.end method

.method protected onUpdateChannelPubKey()V
    .locals 0

    return-void
.end method
