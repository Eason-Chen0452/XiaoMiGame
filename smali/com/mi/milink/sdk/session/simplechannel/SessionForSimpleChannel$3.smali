.class Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/session/common/ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$000(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->isChannelModCurrent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$2000(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed current is not channel mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$000(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getCurrentAccountType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$2100(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "channel fastlogin onDataSendFailed errCode= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1400(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;->LoginFailed:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-direct {v1, v2, v3, p1}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDataSendSuccess(ILcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 5

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$000(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->isChannelModCurrent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1500(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current is not channel mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v2}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$000(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getCurrentAccountType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1600(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "channel fastlogin response mns code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p2}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp;->parseFrom([B)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1700(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chanel fastlogin response = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1400(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->getChannelEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;->LoginFailed:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    const/16 v4, 0x3e6

    invoke-direct {v1, v2, v3, v4}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp;->getB2()Lcom/google/protobuf/ByteString;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp;->getGTKEYB2()Lcom/google/protobuf/ByteString;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$000(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp;->getB2()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp;->getGTKEYB2()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mi/milink/sdk/account/IAccount;->loginMiLink([B[B)V

    :goto_2
    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelRsp;->getWid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1900(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",accountManager.getCurrentAccount():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v3}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$000(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$000(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->getCurrentAccount()Lcom/mi/milink/sdk/account/IAccount;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/account/IAccount;->setUserId(Ljava/lang/String;)V

    :try_start_1
    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->newBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;->setWid(J)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;

    new-instance v2, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v2}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    const-string v3, "data.channel.anonymouswid"

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;->build()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->getInstance()Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->dispatchPacket(Lcom/mi/milink/sdk/aidl/PacketData;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1900(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " dispwid to app success wid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1900(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1400(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;->LoginSuccess:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;I)V

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->processEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1800(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "channel fastlogin response.getB2() = null or response.getGTKEYB2() = null"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;->access$1400(Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;)Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;->LoginFailed:Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel$3;->this$0:Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    invoke-virtual {p2}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent$EventType;Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;I)V

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/simplechannel/SessionManagerForSimpleChannel;->processEvent(Lcom/mi/milink/sdk/event/MiLinkEventForSimpleChannel$SessionLoginEvent;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method
