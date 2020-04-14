.class public final Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigResp;,
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigRespOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq;,
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReqOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;,
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfoOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfig;,
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeSchemaConfigOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;,
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfigOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfig;,
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeTextConfigOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfig;,
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfigOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeConfigType;,
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$SdkType;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigResp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigResp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "\n\u0018NoticeConfigProtos.proto\u0012 org.xiaomi.gamecenter.milink.msg\"K\n\u000cNoticeConfig\u0012\u0011\n\tnotice_id\u0018\u0001 \u0002(\t\u0012\u0018\n\u0010noticeConfigType\u0018\u0002 \u0001(\r\u0012\u000e\n\u0006config\u0018\u0003 \u0001(\u000c\"2\n\u0010NoticeTextConfig\u0012\r\n\u0005title\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007content\u0018\u0002 \u0001(\t\"\u00d4\u0001\n\u0011NoticeImageConfig\u0012\u0018\n\u0010imagePortraitUrl\u0018\u0001 \u0001(\t\u0012\u0015\n\rportraitWidth\u0018\u0002 \u0001(\r\u0012\u0016\n\u000eportraitHeight\u0018\u0003 \u0001(\r\u0012\u0019\n\u0011imageLandscapeUrl\u0018\u0004 \u0001(\t\u0012\u0016\n\u000elandscapeWidth\u0018\u0005 \u0001(\r\u0012\u0017\n\u000flandscapeHeight\u0018\u0006 \u0001(\r\u0012\u0011\n\tactionUrl\u0018\u0007 \u0001(\t\u0012\u0017\n\u000fbackupActionUrl\u0018\u0008"

    aput-object v1, v0, v5

    const-string v1, " \u0001(\t\"t\n\u0012NoticeSchemaConfig\u0012\r\n\u0005title\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007content\u0018\u0002 \u0001(\t\u0012\u0012\n\nbuttonText\u0018\u0003 \u0001(\t\u0012\u0011\n\tactionUrl\u0018\u0004 \u0001(\t\u0012\u0017\n\u000fbackupActionUrl\u0018\u0005 \u0001(\t\"\u00bf\u0003\n\u0008StatInfo\u0012\u000f\n\u0007imeiMd5\u0018\u0001 \u0001(\t\u0012\u0010\n\u0008imeiSha1\u0018\u0002 \u0001(\t\u0012\u0010\n\u0008imeiSha2\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006macMd5\u0018\u0004 \u0001(\t\u0012\n\n\u0002ua\u0018\u0005 \u0001(\t\u0012\u000f\n\u0007network\u0018\u0006 \u0001(\t\u0012\u000f\n\u0007android\u0018\u0007 \u0001(\t\u0012\n\n\u0002os\u0018\u0008 \u0001(\t\u0012\u000e\n\u0006region\u0018\t \u0001(\t\u0012\u000c\n\u0004lang\u0018\n \u0001(\t\u0012\u000f\n\u0007carrier\u0018\u000b \u0001(\t\u0012\u0010\n\u0008timezone\u0018\u000c \u0001(\t\u0012\u000c\n\u0004fuid\u0018\r \u0001(\u0004\u0012\u0015\n\rclientVersion\u0018\u000e \u0001(\t\u0012\u0012\n\nserverTime\u0018\u000f \u0001(\t\u0012\u0011\n\tlocalTime\u0018\u0010 "

    aput-object v1, v0, v6

    const-string v1, "\u0001(\t\u0012\u000b\n\u0003cid\u0018\u0011 \u0001(\t\u0012\u0010\n\u0008devAppId\u0018\u0012 \u0001(\u0004\u0012\u000f\n\u0007sdkType\u0018\u0013 \u0001(\r\u0012\u0015\n\rsdkJarVersion\u0018\u0014 \u0001(\t\u0012\u0019\n\u0011sdkServiceVersion\u0018\u0015 \u0001(\t\u0012\u0011\n\tsessionId\u0018\u0016 \u0001(\t\u0012\u000f\n\u0007unionId\u0018\u0017 \u0001(\t\u0012\r\n\u0005extra\u0018\u0018 \u0001(\t\u0012\u0012\n\nprotectCid\u0018\u0019 \u0001(\t\"\u00b1\u0002\n\u0012GetNoticeConfigReq\u0012\u0010\n\u0008devAppId\u0018\u0001 \u0001(\u0004\u0012\u0010\n\u0008deviceNo\u0018\u0002 \u0001(\t\u0012\u0017\n\u000fgamePackageName\u0018\u0003 \u0001(\t\u0012\u0017\n\u000fgameVersionCode\u0018\u0004 \u0001(\r\u0012\u0017\n\u000fgameVersionName\u0018\u0005 \u0001(\t\u0012\u000f\n\u0007channel\u0018\u0006 \u0001(\t\u0012\u000c\n\u0004fuid\u0018\u0007 \u0001(\u0004\u0012\u000f\n\u0007sdkType\u0018\u0008 \u0001(\r\u0012\u0012\n\nsdkVersion\u0018\t \u0001(\t\u0012\u000f\n\u0007unionId\u0018\n \u0001(\t\u0012\r\n\u0005model"

    aput-object v1, v0, v7

    const-string v1, "\u0018\u000b \u0001(\t\u0012\n\n\u0002ua\u0018\u000c \u0001(\t\u0012<\n\u0008statInfo\u0018\r \u0001(\u000b2*.org.xiaomi.gamecenter.milink.msg.StatInfo\"l\n\u0013GetNoticeConfigResp\u0012\u000f\n\u0007retCode\u0018\u0001 \u0002(\r\u0012D\n\u000cnoticeConfig\u0018\u0002 \u0003(\u000b2..org.xiaomi.gamecenter.milink.msg.NoticeConfig*/\n\u0007SdkType\u0012\u000b\n\u0007OFFLINE\u0010\u0001\u0012\n\n\u0006MIGAME\u0010\u0002\u0012\u000b\n\u0007SERVICE\u0010\u0003*3\n\u0010NoticeConfigType\u0012\u0008\n\u0004TEXT\u0010\u0000\u0012\t\n\u0005IMAGE\u0010\u0001\u0012\n\n\u0006SCHEMA\u0010\u0002B\u0014B\u0012NoticeConfigProtos"

    aput-object v1, v0, v8

    new-instance v1, Lorg/xiaomi/gamecenter/milink/msg/ah;

    invoke-direct {v1}, Lorg/xiaomi/gamecenter/milink/msg/ah;-><init>()V

    new-array v2, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "NoticeId"

    aput-object v3, v2, v5

    const-string v3, "NoticeConfigType"

    aput-object v3, v2, v6

    const-string v3, "Config"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Title"

    aput-object v3, v2, v5

    const-string v3, "Content"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ImagePortraitUrl"

    aput-object v3, v2, v5

    const-string v3, "PortraitWidth"

    aput-object v3, v2, v6

    const-string v3, "PortraitHeight"

    aput-object v3, v2, v7

    const-string v3, "ImageLandscapeUrl"

    aput-object v3, v2, v8

    const-string v3, "LandscapeWidth"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "LandscapeHeight"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ActionUrl"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "BackupActionUrl"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Title"

    aput-object v3, v2, v5

    const-string v3, "Content"

    aput-object v3, v2, v6

    const-string v3, "ButtonText"

    aput-object v3, v2, v7

    const-string v3, "ActionUrl"

    aput-object v3, v2, v8

    const-string v3, "BackupActionUrl"

    aput-object v3, v2, v9

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0x19

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ImeiMd5"

    aput-object v3, v2, v5

    const-string v3, "ImeiSha1"

    aput-object v3, v2, v6

    const-string v3, "ImeiSha2"

    aput-object v3, v2, v7

    const-string v3, "MacMd5"

    aput-object v3, v2, v8

    const-string v3, "Ua"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Network"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Android"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Os"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Region"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Lang"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Carrier"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Timezone"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "Fuid"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "ClientVersion"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "ServerTime"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "LocalTime"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "Cid"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "DevAppId"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "SdkType"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "SdkJarVersion"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "SdkServiceVersion"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "SessionId"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "UnionId"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "Extra"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "ProtectCid"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DevAppId"

    aput-object v3, v2, v5

    const-string v3, "DeviceNo"

    aput-object v3, v2, v6

    const-string v3, "GamePackageName"

    aput-object v3, v2, v7

    const-string v3, "GameVersionCode"

    aput-object v3, v2, v8

    const-string v3, "GameVersionName"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Channel"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Fuid"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "SdkType"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "SdkVersion"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "UnionId"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Model"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Ua"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "StatInfo"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigResp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigResp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "RetCode"

    aput-object v3, v2, v5

    const-string v3, "NoticeConfig"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigResp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeConfig_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$10400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigResp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$10500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigResp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$11502(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeTextConfig_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeImageConfig_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_NoticeSchemaConfig_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_StatInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$8300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$8400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->internal_static_org_xiaomi_gamecenter_milink_msg_GetNoticeConfigReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
