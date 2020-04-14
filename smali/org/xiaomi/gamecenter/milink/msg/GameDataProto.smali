.class public final Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp;,
        Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRspOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReq;,
        Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataReqOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\n\u000eGameData.proto\u0012 org.xiaomi.gamecenter.milink.msg\"\u00b6\u0001\n\u000bRoleDataReq\u0012\u000e\n\u0006roleId\u0018\u0001 \u0001(\t\u0012\u0010\n\u0008roleName\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008serverId\u0018\u0003 \u0001(\t\u0012\u0012\n\nserverName\u0018\u0004 \u0001(\t\u0012\u000e\n\u0006zoneId\u0018\u0005 \u0001(\t\u0012\u0010\n\u0008zoneName\u0018\u0006 \u0001(\t\u0012\r\n\u0005level\u0018\u0007 \u0001(\t\u0012\u0010\n\u0008devAppId\u0018\u0008 \u0001(\t\u0012\u000c\n\u0004fuid\u0018\t \u0001(\u0004\u0012\u000e\n\u0006openId\u0018\n \u0001(\u0004\".\n\u000bRoleDataRsp\u0012\u000f\n\u0007retCode\u0018\u0001 \u0002(\r\u0012\u000e\n\u0006errMsg\u0018\u0002 \u0001(\tB1\n org.xiaomi.gamecenter.milink.msgB\rGameDataProto"

    aput-object v1, v0, v5

    new-instance v1, Lorg/xiaomi/gamecenter/milink/msg/f;

    invoke-direct {v1}, Lorg/xiaomi/gamecenter/milink/msg/f;-><init>()V

    new-array v2, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;->internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;->internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "RoleId"

    aput-object v3, v2, v5

    const-string v3, "RoleName"

    aput-object v3, v2, v6

    const-string v3, "ServerId"

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const-string v4, "ServerName"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "ZoneId"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "ZoneName"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Level"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "DevAppId"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Fuid"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "OpenId"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;->internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;->internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;->internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "RetCode"

    aput-object v3, v2, v5

    const-string v3, "ErrMsg"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;->internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;->internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;->internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;->internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;->internal_static_org_xiaomi_gamecenter_milink_msg_RoleDataRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/GameDataProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
