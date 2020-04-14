.class Lcom/mi/milink/sdk/session/persistent/Session$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/session/common/ResponseListener;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/persistent/Session;

.field final synthetic val$b:Lcom/mi/milink/sdk/session/persistent/Session$B;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/persistent/Session;Lcom/mi/milink/sdk/session/persistent/Session$B;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/Session$7;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iput-object p2, p0, Lcom/mi/milink/sdk/session/persistent/Session$7;->val$b:Lcom/mi/milink/sdk/session/persistent/Session$B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataSendFailed(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$7;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v1, "heartbeat failed"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDataSendSuccess(ILcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 5

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$7;->val$b:Lcom/mi/milink/sdk/session/persistent/Session$B;

    iget-boolean v0, v0, Lcom/mi/milink/sdk/session/persistent/Session$B;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$7;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-static {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->access$400(Lcom/mi/milink/sdk/session/persistent/Session;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "upload regid to server success"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->setHasUploadRegIdToServer(Z)V

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/Session$7;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    const-string v1, "heartbeat success"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p2}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp;->parseFrom([B)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdHeartBeatRsp;->getJsonconfig()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/mi/milink/sdk/config/ConfigManager;->updateConfig(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->newBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/config/ConfigManager;->getEngineConfigRatio()F

    move-result v1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session$7;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v2, v2, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "engineConfigRatio="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;->setEngineratio(F)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/config/ConfigManager;->getEngineMatch()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/Session$7;->this$0:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v2, v2, Lcom/mi/milink/sdk/session/persistent/Session;->mLogTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "engineMatchJson="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;->setEngineConfigJson(Ljava/lang/String;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;

    :cond_1
    new-instance v1, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    const-string v2, "data.extra"

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;->build()Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->getInstance()Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->dispatchPacket(Lcom/mi/milink/sdk/aidl/PacketData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
