.class public Lcom/xiaomi/gamecenter/sdk/milink/MilinkSetUserInfoToGameCenter;
.super Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 4

    const-string v0, "gamesdk.account.setuserinfo"

    invoke-direct {p0, p1, v0, p8}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->setFuid(J)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    invoke-virtual {v1, p4}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->setToke(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    invoke-virtual {v1, p6}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->setSex(I)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    invoke-virtual {v1, p5}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->setNickname(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    invoke-virtual {v1, p7}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->setAvatarUrl(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->setAutoLogin(Z)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, ""

    :cond_0
    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->setImei(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkSetUserInfoToGameCenter;->a:Lcom/google/protobuf/GeneratedMessage;

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

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterRsp;->getRetCode()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkSetUserInfoToGameCenter;->e:I

    :cond_0
    return-object v0
.end method
