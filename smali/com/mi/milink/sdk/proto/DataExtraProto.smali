.class public final Lcom/mi/milink/sdk/proto/DataExtraProto;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/proto/DataExtraProto$DataLoglevel;,
        Lcom/mi/milink/sdk/proto/DataExtraProto$DataLoglevelOrBuilder;,
        Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;,
        Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWidOrBuilder;,
        Lcom/mi/milink/sdk/proto/DataExtraProto$DataClientIp;,
        Lcom/mi/milink/sdk/proto/DataExtraProto$DataClientIpOrBuilder;,
        Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;,
        Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtraOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_mi_milink_sdk_proto_DataAnonymousWid_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milink_sdk_proto_DataAnonymousWid_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milink_sdk_proto_DataClientIp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milink_sdk_proto_DataClientIp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milink_sdk_proto_DataExtra_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milink_sdk_proto_DataExtra_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_mi_milink_sdk_proto_DataLoglevel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_mi_milink_sdk_proto_DataLoglevel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\n\u0013mns_dataextra.proto\u0012\u0017com.mi.milink.sdk.proto\":\n\tDataExtra\u0012\u0013\n\u000bengineratio\u0018\u0001 \u0001(\u0002\u0012\u0018\n\u0010engineConfigJson\u0018\u0005 \u0001(\t\"5\n\u000cDataClientIp\u0012\u0010\n\u0008clientIp\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bclientIpIsp\u0018\u0002 \u0001(\t\"\u001f\n\u0010DataAnonymousWid\u0012\u000b\n\u0003wid\u0018\u0001 \u0001(\u0004\"2\n\u000cDataLoglevel\u0012\u0010\n\u0008loglevel\u0018\u0001 \u0001(\r\u0012\u0010\n\u0008timeLong\u0018\u0002 \u0001(\rB)\n\u0017com.mi.milink.sdk.protoB\u000eDataExtraProto"

    aput-object v1, v0, v4

    new-instance v1, Lcom/mi/milink/sdk/proto/DataExtraProto$1;

    invoke-direct {v1}, Lcom/mi/milink/sdk/proto/DataExtraProto$1;-><init>()V

    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataExtra_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataExtra_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Engineratio"

    aput-object v3, v2, v4

    const-string v3, "EngineConfigJson"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataExtra_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataClientIp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataClientIp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "ClientIp"

    aput-object v3, v2, v4

    const-string v3, "ClientIpIsp"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataClientIp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataAnonymousWid_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataAnonymousWid_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "Wid"

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataAnonymousWid_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataLoglevel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataLoglevel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Loglevel"

    aput-object v3, v2, v4

    const-string v3, "TimeLong"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataLoglevel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataExtra_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataExtra_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataClientIp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataClientIp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataAnonymousWid_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataAnonymousWid_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataLoglevel_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->internal_static_com_mi_milink_sdk_proto_DataLoglevel_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/mi/milink/sdk/proto/DataExtraProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
