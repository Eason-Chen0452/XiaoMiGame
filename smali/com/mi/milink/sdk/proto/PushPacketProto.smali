.class public final Lcom/mi/milink/sdk/proto/PushPacketProto;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;,
        Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevelOrBuilder;,
        Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;,
        Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReqOrBuilder;,
        Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessage;,
        Lcom/mi/milink/sdk/proto/PushPacketProto$KickMessageOrBuilder;,
        Lcom/mi/milink/sdk/proto/PushPacketProto$SimplePushData;,
        Lcom/mi/milink/sdk/proto/PushPacketProto$SimplePushDataOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_mi_milink_sdk_proto_KickMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milink_sdk_proto_KickMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milink_sdk_proto_MilinkLogReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milink_sdk_proto_MilinkLogReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milink_sdk_proto_PushLogLevel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milink_sdk_proto_PushLogLevel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milink_sdk_proto_SimplePushData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milink_sdk_proto_SimplePushData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\n\u000emns_push.proto\u0012\u0017com.mi.milink.sdk.proto\"b\n\u000eSimplePushData\u0012\u000f\n\u0007tomiUid\u0018\u0001 \u0002(\t\u0012\r\n\u0005appid\u0018\u0002 \u0002(\r\u0012\u0011\n\tfrommiUid\u0018\u0003 \u0001(\t\u0012\u000b\n\u0003cmd\u0018\u0004 \u0001(\t\u0012\u0010\n\u0008pushdata\u0018\u0005 \u0001(\u000c\"9\n\u000bKickMessage\u0012\u000c\n\u0004type\u0018\u0001 \u0001(\r\u0012\u000c\n\u0004time\u0018\u0002 \u0001(\r\u0012\u000e\n\u0006device\u0018\u0003 \u0001(\t\"\u0084\u0001\n\u000cMilinkLogReq\u0012\u000c\n\u0004time\u0018\u0001 \u0001(\u0005\u0012\n\n\u0002ip\u0018\u0002 \u0001(\t\u0012\u0013\n\u000burgentLevel\u0018\u0003 \u0001(\r\u0012\u000c\n\u0004type\u0018\u0004 \u0001(\r\u00127\n\u0008logLevel\u0018\u0005 \u0001(\u000b2%.com.mi.milink.sdk.proto.PushLogLevel\"2\n\u000cPushLogLevel\u0012\u0010\n\u0008loglevel\u0018\u0001 \u0001(\r\u0012\u0010\n\u0008timeLong\u0018\u0002 \u0001(\rB*\n\u0017com.mi.mi"

    aput-object v1, v0, v4

    const-string v1, "link.sdk.protoB\u000fPushPacketProto"

    aput-object v1, v0, v5

    new-instance v1, Lcom/mi/milink/sdk/proto/PushPacketProto$1;

    invoke-direct {v1}, Lcom/mi/milink/sdk/proto/PushPacketProto$1;-><init>()V

    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_SimplePushData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_SimplePushData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "TomiUid"

    aput-object v3, v2, v4

    const-string v3, "Appid"

    aput-object v3, v2, v5

    const-string v3, "FrommiUid"

    aput-object v3, v2, v6

    const-string v3, "Cmd"

    aput-object v3, v2, v7

    const-string v3, "Pushdata"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_SimplePushData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_KickMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_KickMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Type"

    aput-object v3, v2, v4

    const-string v3, "Time"

    aput-object v3, v2, v5

    const-string v3, "Device"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_KickMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_MilinkLogReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_MilinkLogReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Time"

    aput-object v3, v2, v4

    const-string v3, "Ip"

    aput-object v3, v2, v5

    const-string v3, "UrgentLevel"

    aput-object v3, v2, v6

    const-string v3, "Type"

    aput-object v3, v2, v7

    const-string v3, "LogLevel"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_MilinkLogReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_PushLogLevel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_PushLogLevel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Loglevel"

    aput-object v3, v2, v4

    const-string v3, "TimeLong"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_PushLogLevel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_SimplePushData_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_SimplePushData_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_KickMessage_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_KickMessage_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2400()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_MilinkLogReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_MilinkLogReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_PushLogLevel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->internal_static_com_mi_milink_sdk_proto_PushLogLevel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/mi/milink/sdk/proto/PushPacketProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
