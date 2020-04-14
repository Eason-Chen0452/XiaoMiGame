.class Lcom/mi/milink/sdk/session/persistent/Session$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/session/common/ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/persistent/Session;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/persistent/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hand shake error session, errCode="

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

    const/16 v0, 0x204

    if-eq p1, v0, :cond_0

    const/16 v0, 0x203

    if-eq p1, v0, :cond_0

    const/16 v0, 0x22d

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/session/persistent/Session;->access$502(Lcom/mi/milink/sdk/session/persistent/Session;Z)Z

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-static {v0, p1}, Lcom/mi/milink/sdk/session/persistent/Session;->access$600(Lcom/mi/milink/sdk/session/persistent/Session;I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/persistent/Session;->onOpenSessionHandshakeSuccess(Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;)V

    goto :goto_0
.end method

.method public onDataSendSuccess(ILcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 13

    const/4 v12, 0x5

    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hand shake success session "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v4, v4, Lcom/mi/milink/sdk/session/persistent/Session;->mServerProfile:Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", seq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p2}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp;->parseFrom([B)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v5, v0

    :goto_0
    if-nez v5, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v1, "handshake response is null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v0, v2}, Lcom/mi/milink/sdk/session/persistent/Session;->onOpenSessionHandshakeSuccess(Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v5, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp;->getClientinfo()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v3, v3, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "clientInfo:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/mi/milink/sdk/session/persistent/Session;->access$202(Lcom/mi/milink/sdk/session/persistent/Session;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    const-string v4, ""

    invoke-static {v3, v4}, Lcom/mi/milink/sdk/session/persistent/Session;->access$302(Lcom/mi/milink/sdk/session/persistent/Session;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "#"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    aget-object v4, v0, v1

    invoke-static {v3, v4}, Lcom/mi/milink/sdk/session/persistent/Session;->access$202(Lcom/mi/milink/sdk/session/persistent/Session;Ljava/lang/String;)Ljava/lang/String;

    array-length v3, v0

    if-le v3, v11, :cond_1

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    aget-object v0, v0, v11

    invoke-static {v3, v0}, Lcom/mi/milink/sdk/session/persistent/Session;->access$302(Lcom/mi/milink/sdk/session/persistent/Session;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->access$200(Lcom/mi/milink/sdk/session/persistent/Session;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataClientIp;->newBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataClientIp$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-static {v3}, Lcom/mi/milink/sdk/session/persistent/Session;->access$200(Lcom/mi/milink/sdk/session/persistent/Session;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataClientIp$Builder;->setClientIp(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataClientIp$Builder;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-static {v3}, Lcom/mi/milink/sdk/session/persistent/Session;->access$300(Lcom/mi/milink/sdk/session/persistent/Session;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataClientIp$Builder;->setClientIpIsp(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataClientIp$Builder;

    new-instance v3, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v3}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    const-string v4, "data.clientip"

    invoke-virtual {v3, v4}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataClientIp$Builder;->build()Lcom/mi/milink/sdk/proto/DataExtraProto$DataClientIp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataClientIp;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->access$400(Lcom/mi/milink/sdk/session/persistent/Session;)Ljava/lang/String;

    move-result-object v0

    const-string v4, " disp clientIP"

    invoke-static {v0, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->getInstance()Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->dispatchPacket(Lcom/mi/milink/sdk/aidl/PacketData;)V

    :cond_2
    invoke-virtual {v5}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp;->getRedirectList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_2
    invoke-virtual {v5}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp;->getRedirectCount()I

    move-result v4

    if-ge v0, v4, :cond_8

    invoke-virtual {v5, v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHandShakeRsp;->getRedirect(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo;->getIp()I

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v6}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo;->getIp()I

    move-result v7

    invoke-static {v7}, Lcom/mi/milink/sdk/base/data/Convert;->intToIPv4(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v1, v11, v12}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v6}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo;->hasIpv6()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v6}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo;->getIpv6()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v1, v11, v12}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-nez v0, :cond_6

    invoke-virtual {v6}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo;->getRemark()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    array-length v8, v7

    move v4, v1

    :goto_3
    if-ge v4, v8, :cond_6

    aget-object v9, v7, v4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    new-instance v10, Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-direct {v10, v9, v1, v11, v12}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo;->hasIpv6()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v4, v4, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "milink server ipv6:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo;->getIpv6()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " port:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo;->getPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " remark:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_7
    iget-object v4, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v4, v4, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "milink server ipv4:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo;->getIp()I

    move-result v8

    invoke-static {v8}, Lcom/mi/milink/sdk/base/data/Convert;->intToIPv4(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " port:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo;->getPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " remark:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsIpInfo;->getRemark()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    move-object v0, v2

    move-object v1, v3

    :goto_5
    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    new-instance v3, Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;

    iget-object v4, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-static {v4}, Lcom/mi/milink/sdk/session/persistent/Session;->access$200(Lcom/mi/milink/sdk/session/persistent/Session;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/mi/milink/sdk/session/persistent/Session$3;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-static {v5}, Lcom/mi/milink/sdk/session/persistent/Session;->access$300(Lcom/mi/milink/sdk/session/persistent/Session;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v0}, Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/session/persistent/Session;->onOpenSessionHandshakeSuccess(Lcom/mi/milink/sdk/session/common/OpenSessionSucessReturnInfo;)V

    goto/16 :goto_1

    :cond_9
    move-object v0, v2

    move-object v1, v2

    goto :goto_5
.end method
