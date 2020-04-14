.class Lcom/mi/milink/sdk/session/persistent/Session$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/session/common/ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/persistent/Session;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/persistent/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/Session$4;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->isAnonymousModeCurrent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$4;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v1, "current is not anonymous mode"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$4;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fastlogin onDataSendFailed errCode= "

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

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;->LoginFailed:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session$4;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {v1, v2, v3, p1}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDataSendSuccess(ILcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->isAnonymousModeCurrent()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$4;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v1, "current is not anonymous mode"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$4;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "anonymous fastlogin response mns code: "

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

    invoke-static {v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp;->parseFrom([B)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$4;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v1, "anonymous fastlogin response = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;->LoginFailed:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session$4;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    const/16 v4, 0x3e6

    invoke-direct {v1, v2, v3, v4}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp;->getB2()Lcom/google/protobuf/ByteString;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp;->getGTKEYB2()Lcom/google/protobuf/ByteString;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/mi/milink/sdk/account/AnonymousAccount;->getInstance()Lcom/mi/milink/sdk/account/AnonymousAccount;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp;->getB2()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp;->getGTKEYB2()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mi/milink/sdk/account/AnonymousAccount;->loginMiLink([B[B)V

    :goto_2
    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->setPassportInit(Z)V

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp;->getSUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/config/ConfigManager;->updateSuidAnonymous(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdAnonymousRsp;->getWid()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/account/AnonymousAccount;->getInstance()Lcom/mi/milink/sdk/account/AnonymousAccount;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/account/AnonymousAccount;->setUserId(Ljava/lang/String;)V

    :try_start_1
    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->newBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;->setWid(J)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;

    new-instance v0, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v0}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    const-string v2, "data.anonymouswid"

    invoke-virtual {v0, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;->build()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->getInstance()Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->dispatchPacket(Lcom/mi/milink/sdk/aidl/PacketData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;->LoginSuccess:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session$4;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {v1, v2, v3, v4}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$4;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/persistent/Session;->heartBeat(Z)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/Session$4;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v1, v1, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v2, "anonymous fastlogin response.getB2() = null or response.getGTKEYB2() = null"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;->LoginFailed:Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session$4;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {p2}, Lcom/mi/milink/sdk/aidl/PacketData;->getMnsCode()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$SessionLoginEvent$EventType;Lcom/mi/milink/sdk/session/persistent/Session;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method
