.class public Lcom/xiaomi/gamecenter/sdk/milink/MilinkForMemInfo;
.super Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 2

    const-string v0, "migc.vip.sdk.query.user"

    invoke-direct {p0, p1, v0, p5}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq$Builder;->setFuid(J)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq$Builder;

    invoke-virtual {v0, p4}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq$Builder;->setToken(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq$Builder;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkForMemInfo;->a:Lcom/google/protobuf/GeneratedMessage;

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

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "memRsp retCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;->getRetCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    return-object v0
.end method
