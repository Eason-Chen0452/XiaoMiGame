.class public Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetLoginAppAccount;
.super Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 4

    const-string v0, "gamesdk.account.getloginappaccount.v2"

    invoke-direct {p0, p1, v0, p5}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;->setFuid(J)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;

    invoke-virtual {p5}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->getNewAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;->setDevAppId(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;

    invoke-virtual {v1, p4}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;->setToke(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;

    const-string v0, "SDK_MI_SP_3.1.2"

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;->setSdkVersion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;->setImei(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;->setUa(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;->setChannel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;->setCurrentChannel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;->setImeiMd5(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;

    const-string v0, "channel"

    invoke-static {p1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ChannelPreference;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;->setFirstChannel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;

    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountReq;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetLoginAppAccount;->a:Lcom/google/protobuf/GeneratedMessage;

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

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetLoginAppAccountRsp;->getRetCode()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetLoginAppAccount;->e:I

    :cond_0
    return-object v0
.end method
