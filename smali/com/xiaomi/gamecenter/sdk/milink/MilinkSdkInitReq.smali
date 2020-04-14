.class public Lcom/xiaomi/gamecenter/sdk/milink/MilinkSdkInitReq;
.super Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 3

    const-string v0, "gamesdk.account.init"

    invoke-direct {p0, p1, v0, p2}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;->setDevAppId(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;->setPackageName(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->getAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;->setAppKey(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;

    const-string v0, "SDK_MI_SP_3.1.2"

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;->setSdkVersion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;->setImei(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->n:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;->setUa(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;->setChannel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;->setCurrentChannel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;->setImeiMd5(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ChannelPreference;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;->setFirstChannel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;

    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitReq;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkSdkInitReq;->a:Lcom/google/protobuf/GeneratedMessage;

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

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SdkInitRsp;->getRetCode()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkSdkInitReq;->e:I

    :cond_0
    return-object v0
.end method
