.class public final Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponse;,
        Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportResponseOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;,
        Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequestOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;,
        Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfoOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;,
        Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePairOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;,
        Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfoOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_HttpReportRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_HttpReportRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_HttpReportResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_HttpReportResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_NameValuePair_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_NameValuePair_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_RequestInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_RequestInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_ResponseInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_ResponseInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\n\u0012HttpTransfer.proto\u0012 org.xiaomi.gamecenter.milink.msg\"\u00d8\u0001\n\u000bRequestInfo\u0012\u000e\n\u0006method\u0018\u0001 \u0002(\r\u0012\u000b\n\u0003url\u0018\u0002 \u0002(\t\u0012@\n\u0007headers\u0018\u0003 \u0003(\u000b2/.org.xiaomi.gamecenter.milink.msg.NameValuePair\u0012?\n\u0006params\u0018\u0004 \u0003(\u000b2/.org.xiaomi.gamecenter.milink.msg.NameValuePair\u0012\u0010\n\u0008protocol\u0018\u0005 \u0001(\r\u0012\u0017\n\u000fbyteArrayEntity\u0018\u0006 \u0001(\u000c\",\n\rNameValuePair\u0012\u000c\n\u0004name\u0018\u0001 \u0002(\t\u0012\r\n\u0005value\u0018\u0002 \u0002(\t\"l\n\u000cResponseInfo\u0012\u000c\n\u0004code\u0018\u0001 \u0002(\u0005\u0012@\n\u0007headers\u0018\u0002 \u0003(\u000b2/.org.xiaomi.gamecenter.milink.ms"

    aput-object v1, v0, v5

    const-string v1, "g.NameValuePair\u0012\u000c\n\u0004body\u0018\u0003 \u0001(\t\"\u00f1\u0001\n\u0011HttpReportRequest\u0012\u000e\n\u0006userId\u0018\u0001 \u0002(\u0004\u0012\u000c\n\u0004code\u0018\u0002 \u0002(\u0005\u0012\u0010\n\u0008costTime\u0018\u0003 \u0002(\u0004\u0012\u0010\n\u0008clientIp\u0018\u0004 \u0002(\u0005\u0012\u0010\n\u0008serverIp\u0018\u0005 \u0002(\u0005\u0012B\n\u000brequestInfo\u0018\u0006 \u0002(\u000b2-.org.xiaomi.gamecenter.milink.msg.RequestInfo\u0012D\n\u000cresponseInfo\u0018\u0007 \u0001(\u000b2..org.xiaomi.gamecenter.milink.msg.ResponseInfo\"\"\n\u0012HttpReportResponse\u0012\u000c\n\u0004code\u0018\u0001 \u0002(\u0005"

    aput-object v1, v0, v6

    new-instance v1, Lorg/xiaomi/gamecenter/milink/msg/i;

    invoke-direct {v1}, Lorg/xiaomi/gamecenter/milink/msg/i;-><init>()V

    new-array v2, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_RequestInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_RequestInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Method"

    aput-object v3, v2, v5

    const-string v3, "Url"

    aput-object v3, v2, v6

    const-string v3, "Headers"

    aput-object v3, v2, v7

    const-string v3, "Params"

    aput-object v3, v2, v8

    const-string v3, "Protocol"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ByteArrayEntity"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_RequestInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_NameValuePair_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_NameValuePair_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "Name"

    aput-object v3, v2, v5

    const-string v3, "Value"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_NameValuePair_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_ResponseInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_ResponseInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Code"

    aput-object v3, v2, v5

    const-string v3, "Headers"

    aput-object v3, v2, v6

    const-string v3, "Body"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_ResponseInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_HttpReportRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_HttpReportRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "UserId"

    aput-object v3, v2, v5

    const-string v3, "Code"

    aput-object v3, v2, v6

    const-string v3, "CostTime"

    aput-object v3, v2, v7

    const-string v3, "ClientIp"

    aput-object v3, v2, v8

    const-string v3, "ServerIp"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "RequestInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ResponseInfo"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_HttpReportRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_HttpReportResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_HttpReportResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "Code"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_HttpReportResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_RequestInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_RequestInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_NameValuePair_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_NameValuePair_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_ResponseInfo_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_ResponseInfo_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_HttpReportRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_HttpReportRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_HttpReportResponse_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->internal_static_org_xiaomi_gamecenter_milink_msg_HttpReportResponse_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
