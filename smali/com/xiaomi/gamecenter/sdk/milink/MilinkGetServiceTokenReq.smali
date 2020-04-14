.class public Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetServiceTokenReq;
.super Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 4

    const-string v0, "gamesdk.account.getservicetoken"

    invoke-direct {p0, p1, v0, p5}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;->setFuid(J)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;

    invoke-virtual {p5}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;->setDevAppId(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;

    invoke-virtual {v1, p4}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;->setToke(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;

    const-string v0, "SDK_MI_SP_3.1.2"

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;->setSdkVersion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;->setImei(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;->setUa(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;->setChannel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;->setCurrentChannel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;->setImeiMd5(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;

    invoke-virtual {p5}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ChannelPreference;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;->setFirstChannel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;

    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenReq;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetServiceTokenReq;->a:Lcom/google/protobuf/GeneratedMessage;

    return-void
.end method


# virtual methods
.method public final a([B)Lcom/google/protobuf/GeneratedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetServiceTokenRsp;->getRetCode()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetServiceTokenReq;->e:I

    :cond_0
    return-object v0
.end method
