.class public Lcom/xiaomi/gamecenter/sdk/milink/MilinkForVipInfo;
.super Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 2

    const-string v0, "migame.vip.sdk.getuserlevelinfo"

    invoke-direct {p0, p1, v0, p5}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->setFuid(J)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->SDK:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->setAppType(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    invoke-virtual {v0, p4}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->setToken(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkForVipInfo;->a:Lcom/google/protobuf/GeneratedMessage;

    return-void
.end method


# virtual methods
.method public final a([B)Lcom/google/protobuf/GeneratedMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vipRsp retCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getRetCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    return-object v0
.end method
