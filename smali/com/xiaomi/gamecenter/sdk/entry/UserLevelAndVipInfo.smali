.class public Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;
.super Ljava/lang/Object;


# instance fields
.field private id:J

.field private isServiceUsr:Z

.field private memInfo:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;

.field private vipLevelInfo:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;


# direct methods
.method public constructor <init>(JZLorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;->id:J

    iput-boolean p3, p0, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;->isServiceUsr:Z

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;->vipLevelInfo:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    iput-object p5, p0, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;->memInfo:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;->id:J

    return-wide v0
.end method

.method public getMemInfo()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;->memInfo:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;

    return-object v0
.end method

.method public getVipLevelInfo()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;->vipLevelInfo:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    return-object v0
.end method

.method public isServiceUsr()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;->isServiceUsr:Z

    return v0
.end method

.method public setId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;->id:J

    return-void
.end method

.method public setMemInfo(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;->memInfo:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;

    return-void
.end method

.method public setServiceUsr(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;->isServiceUsr:Z

    return-void
.end method

.method public setVipLevelInfo(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;->vipLevelInfo:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    return-void
.end method
