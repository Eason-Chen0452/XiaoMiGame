.class public final Lorg/xiaomi/gamecenter/milink/msg/VipProtos;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;,
        Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRspOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReq;,
        Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserReqOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRsp;,
        Lorg/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowRspOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReq;,
        Lorg/xiaomi/gamecenter/milink/msg/VipProtos$SdkCheckLoginShowReqOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;,
        Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRspOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;,
        Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReqOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "\n\tVip.proto\u0012 org.xiaomi.gamecenter.milink.msg\"n\n\u0013GetUserLevelInfoReq\u0012\u000c\n\u0004fuid\u0018\u0001 \u0002(\u0003\u0012\r\n\u0005token\u0018\u0002 \u0002(\t\u0012:\n\u0007appType\u0018\u0003 \u0002(\u000e2).org.xiaomi.gamecenter.milink.msg.AppType\"\u00f5\u0002\n\u0013GetUserLevelInfoRsp\u0012\u000f\n\u0007retCode\u0018\u0001 \u0002(\u0005\u0012\r\n\u0005level\u0018\u0002 \u0001(\u0005\u0012\u0010\n\u0008levelExp\u0018\u0003 \u0001(\u0005\u0012\u0014\n\u000clevelBigIcon\u0018\u0004 \u0001(\t\u0012\u001b\n\u0013levelSmallIconForOn\u0018\u0005 \u0001(\t\u0012\u001c\n\u0014levelSmallIconForOff\u0018\u0006 \u0001(\t\u0012\u0015\n\rlevelNickIcon\u0018\u0007 \u0001(\t\u0012\u0011\n\tnextLevel\u0018\u0008 \u0001(\u0005\u0012\u0014\n\u000cnextLevelExp\u0018\t \u0001(\u0005\u0012\u0018\n\u0010nextlevelBigIcon\u0018\n \u0001"

    aput-object v1, v0, v5

    const-string v1, "(\t\u0012\u001f\n\u0017nextlevelSmallIconForOn\u0018\u000b \u0001(\t\u0012 \n\u0018nextlevelSmallIconForOff\u0018\u000c \u0001(\t\u0012\u0019\n\u0011nextlevelNickIcon\u0018\r \u0001(\t\u0012\u0015\n\rgameCenterUrl\u0018\u000e \u0001(\t\u0012\u000c\n\u0004note\u0018\u000f \u0001(\t\"E\n\u0014SdkCheckLoginShowReq\u0012\u000c\n\u0004fuid\u0018\u0001 \u0002(\u0003\u0012\r\n\u0005token\u0018\u0002 \u0002(\t\u0012\u0010\n\u0008devAppId\u0018\u0003 \u0002(\u0003\"5\n\u0014SdkCheckLoginShowRsp\u0012\u000f\n\u0007retCode\u0018\u0001 \u0002(\u0005\u0012\u000c\n\u0004show\u0018\u0002 \u0001(\u0005\".\n\u000fQueryVipUserReq\u0012\u000c\n\u0004fuid\u0018\u0001 \u0002(\u0004\u0012\r\n\u0005token\u0018\u0002 \u0001(\t\"\u008b\u0001\n\u000fQueryVipUserRsp\u0012\u000f\n\u0007retCode\u0018\u0001 \u0002(\r\u0012\u000c\n\u0004fuid\u0018\u0002 \u0001(\u0004\u0012\u0016\n\u000evalidateStatus\u0018\u0003 \u0001(\r\u0012\u0012\n\nexpireTime\u0018\u0004 \u0001"

    aput-object v1, v0, v6

    const-string v1, "(\u0004\u0012\r\n\u0005vipNo\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006vipUrl\u0018\u0006 \u0001(\t\u0012\u000e\n\u0006remark\u0018\u0007 \u0001(\t*\"\n\u0007AppType\u0012\u0007\n\u0003SDK\u0010\u0001\u0012\u000e\n\nGAMECENTER\u0010\u0002B-\n org.xiaomi.gamecenter.milink.msgB\tVipProtos"

    aput-object v1, v0, v7

    new-instance v1, Lorg/xiaomi/gamecenter/milink/msg/av;

    invoke-direct {v1}, Lorg/xiaomi/gamecenter/milink/msg/av;-><init>()V

    new-array v2, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Fuid"

    aput-object v3, v2, v5

    const-string v3, "Token"

    aput-object v3, v2, v6

    const-string v3, "AppType"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0xf

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "RetCode"

    aput-object v3, v2, v5

    const-string v3, "Level"

    aput-object v3, v2, v6

    const-string v3, "LevelExp"

    aput-object v3, v2, v7

    const-string v3, "LevelBigIcon"

    aput-object v3, v2, v8

    const-string v3, "LevelSmallIconForOn"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "LevelSmallIconForOff"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "LevelNickIcon"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "NextLevel"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "NextLevelExp"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "NextlevelBigIcon"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "NextlevelSmallIconForOn"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "NextlevelSmallIconForOff"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "NextlevelNickIcon"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "GameCenterUrl"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "Note"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Fuid"

    aput-object v3, v2, v5

    const-string v3, "Token"

    aput-object v3, v2, v6

    const-string v3, "DevAppId"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "RetCode"

    aput-object v3, v2, v5

    const-string v3, "Show"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Fuid"

    aput-object v3, v2, v5

    const-string v3, "Token"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "RetCode"

    aput-object v3, v2, v5

    const-string v3, "Fuid"

    aput-object v3, v2, v6

    const-string v3, "ValidateStatus"

    aput-object v3, v2, v7

    const-string v3, "ExpireTime"

    aput-object v3, v2, v8

    const-string v3, "VipNo"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "VipUrl"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Remark"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetUserLevelInfoRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_SdkCheckLoginShowRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6500()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6600()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_QueryVipUserRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
