.class public abstract Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;
.super Ljava/lang/Object;


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field protected mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

.field protected mRequeset:Lcom/mi/milink/sdk/session/common/Request;

.field protected mRetCode:I

.field protected mSession:Lcom/mi/milink/sdk/session/persistent/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "IMnsCodeCopeWays"

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mi/milink/sdk/session/persistent/Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    return-void
.end method


# virtual methods
.method protected abstract afterHandle()V
.end method

.method public handleMnsCode()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRetCode:I

    const-string v1, "milink.handshake"

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/persistent/Session;->addContinuousRecv110Count()V

    :cond_0
    :goto_0
    const-string v1, "milink.loginoff"

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v1

    const-string v2, "MNS_LOGOFF failed, return"

    invoke-virtual {v0, v1, v2}, Lcom/mi/milink/sdk/session/common/Request;->onDataSendFailed(ILjava/lang/String;)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/persistent/Session;->resetContinuousRecv110Count()V

    goto :goto_0

    :cond_3
    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->onUnknowMsnCode(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->afterHandle()V

    iput-object v3, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    iput-object v3, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->onOk()V

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->onB2TokenExpired()V

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->onServerTokenExpired()V

    goto :goto_2

    :sswitch_3
    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->onTimeOut()V

    goto :goto_2

    :sswitch_4
    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->onKickedByServer()V

    goto :goto_2

    :sswitch_5
    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->onAccNeedRetry()V

    goto :goto_2

    :sswitch_6
    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->onServerSpecialLineBroken()V

    goto :goto_2

    :sswitch_7
    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->onServerSpecialLineBrokenUrgent()V

    goto :goto_2

    :sswitch_8
    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->onUpdateChannelPubKey()V

    goto :goto_2

    :sswitch_9
    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->onDeleteChannelPubKey()V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x66 -> :sswitch_4
        0x6d -> :sswitch_3
        0x6e -> :sswitch_6
        0x76 -> :sswitch_5
        0x77 -> :sswitch_7
        0x81 -> :sswitch_8
        0xdf -> :sswitch_9
    .end sparse-switch
.end method

.method protected abstract onAccNeedRetry()V
.end method

.method protected onB2TokenExpired()V
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    instance-of v0, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

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

.method protected abstract onBusinessCmdTimeout()V
.end method

.method protected onDeleteChannelPubKey()V
    .locals 4

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    instance-of v0, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    check-cast v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getSessionManagerForSimpleChannel()Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;->ChannelDelPubKey:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    invoke-direct {v1, v2, v3}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected abstract onInternalCmdTimeout()V
.end method

.method protected onKickedByServer()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;->parseFrom([B)Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;

    move-result-object v0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->KickByServer:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-direct {v2, v3, v0}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->TAG:Ljava/lang/String;

    const-string v1, "kick but InvalidProtocolBufferException construct a message and post."

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;->newBuilder()Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage$Builder;

    move-result-object v1

    const-string v2, "unknowdevices"

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage$Builder;->setDevice(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage$Builder;->setTime(I)Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage$Builder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage$Builder;->setType(I)Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage$Builder;->build()Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;

    move-result-object v0

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->KickByServer:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-direct {v2, v3, v0}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract onOk()V
.end method

.method protected onServerSpecialLineBroken()V
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v1

    const-string v2, "MI_LINK_CODE_SERVER_SPECIAL_LINE_BROKEN"

    invoke-virtual {v0, v1, v2}, Lcom/mi/milink/sdk/session/common/Request;->onDataSendFailed(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->checkExceedMaxContinuousRecv110Count()Z

    return-void
.end method

.method protected onServerSpecialLineBrokenUrgent()V
    .locals 4

    sget-object v0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->TAG:Ljava/lang/String;

    const-string v1, "onServerSpecialLineBrokenUrgent"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v1

    const-string v2, "MI_LINK_CODE_SERVER_SPECIAL_LINE_BROKEN_URGENT"

    invoke-virtual {v0, v1, v2}, Lcom/mi/milink/sdk/session/common/Request;->onDataSendFailed(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    instance-of v0, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    check-cast v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getSessionManagerForSimpleChannel()Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;->ServerLineBroken:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    invoke-direct {v1, v2, v3}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ServerLineBroken:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected abstract onServerTokenExpired()V
.end method

.method protected onTimeOut()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->isInternalRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->onInternalCmdTimeout()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->onBusinessCmdTimeout()V

    goto :goto_0
.end method

.method protected abstract onUnknowMsnCode(I)V
.end method

.method protected onUpdateChannelPubKey()V
    .locals 4

    sget-object v0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->TAG:Ljava/lang/String;

    const-string v1, "onUpdateChannelPubKey handler"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->parseFrom([B)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    instance-of v1, v1, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/mi/milink/sdk/session/simplechannel/UpdateChannelPubKeyValue;

    invoke-direct {v1}, Lcom/mi/milink/sdk/session/simplechannel/UpdateChannelPubKeyValue;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/session/simplechannel/UpdateChannelPubKeyValue;->setChannelNewPubkey(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/session/simplechannel/UpdateChannelPubKeyValue;->setmRequeset(Lcom/mi/milink/sdk/session/common/Request;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    check-cast v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->getSessionManagerForSimpleChannel()Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;->ChannelPubKeyUpdate:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;

    invoke-direct {v2, v3, v1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$ServerNotificationEvent$EventType;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ChannelPubKeyUpdate:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-direct {v2, v3, v0}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setParam(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    iput-object p2, p0, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    return-void
.end method
