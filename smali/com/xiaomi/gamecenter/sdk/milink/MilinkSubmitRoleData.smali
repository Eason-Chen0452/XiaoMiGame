.class public Lcom/xiaomi/gamecenter/sdk/milink/MilinkSubmitRoleData;
.super Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/RoleData;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "gamesdk.roledata.uploadroledata"

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-direct {v1, p3}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/RoleData;->getRoleId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/RoleData;->getRoleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;->setRoleId(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    :cond_0
    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/RoleData;->getRoleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/RoleData;->getRoleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;->setRoleName(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    :cond_1
    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/RoleData;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/RoleData;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;->setServerId(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    :cond_2
    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/RoleData;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/RoleData;->getServerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;->setServerName(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    :cond_3
    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/RoleData;->getZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/RoleData;->getZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;->setZoneId(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    :cond_4
    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/RoleData;->getZoneName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/RoleData;->getZoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;->setZoneName(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    :cond_5
    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/RoleData;->getLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;->setLevel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    invoke-virtual {p3}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;->setDevAppId(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;->setOpenId(J)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    :cond_6
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;->setFuid(J)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;

    :cond_7
    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkSubmitRoleData;->a:Lcom/google/protobuf/GeneratedMessage;

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

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp;->getRetCode()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkSubmitRoleData;->e:I

    :cond_0
    return-object v0
.end method
