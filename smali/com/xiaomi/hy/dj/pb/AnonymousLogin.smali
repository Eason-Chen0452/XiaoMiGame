.class public final Lcom/xiaomi/hy/dj/pb/AnonymousLogin;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRsp;,
        Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginRspOrBuilder;,
        Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;,
        Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReqOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\n\u0014AnonymousLogin.proto\u0012\u0013com.xiaomi.hy.dj.pb\"H\n\u0011AnonymousLoginReq\u0012\u0010\n\u0008devAppId\u0018\u0001 \u0002(\u0004\u0012\u0010\n\u0008deviceNo\u0018\u0002 \u0002(\t\u0012\u000f\n\u0007channel\u0018\u0003 \u0001(\t\"E\n\u0011AnonymousLoginRsp\u0012\u000f\n\u0007retCode\u0018\u0001 \u0002(\r\u0012\u000e\n\u0006openId\u0018\u0002 \u0001(\u0004\u0012\u000f\n\u0007session\u0018\u0003 \u0001(\t"

    aput-object v1, v0, v4

    new-instance v1, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$1;

    invoke-direct {v1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$1;-><init>()V

    new-array v2, v4, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "DevAppId"

    aput-object v3, v2, v4

    const-string v3, "DeviceNo"

    aput-object v3, v2, v5

    const-string v3, "Channel"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "RetCode"

    aput-object v3, v2, v4

    const-string v3, "OpenId"

    aput-object v3, v2, v5

    const-string v3, "Session"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->internal_static_com_xiaomi_hy_dj_pb_AnonymousLoginRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
