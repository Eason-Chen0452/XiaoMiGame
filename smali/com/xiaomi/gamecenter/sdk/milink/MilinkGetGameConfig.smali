.class public Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetGameConfig;
.super Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 3

    const-string v0, "gamesdk.config.getappconfig"

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->getNewAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder;->setDevAppId(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder;->setImsi(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder;

    const-string v0, "SDK_MI_SP_3.1.2"

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder;->setSdkVersion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder;->setImei(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder;->setUa(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder;->setChannel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder;

    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigReq;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetGameConfig;->a:Lcom/google/protobuf/GeneratedMessage;

    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->o:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a([B)Lcom/google/protobuf/GeneratedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->getRetCode()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetGameConfig;->e:I

    :cond_0
    return-object v0
.end method
