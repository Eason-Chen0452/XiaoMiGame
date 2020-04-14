.class public final Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;,
        Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRspOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;,
        Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReqOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;,
        Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreenOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\n\u0012SplashScreen.proto\u0012 org.xiaomi.gamecenter.milink.msg\"z\n\u000cSplashScreen\u0012\u0010\n\u0008splashid\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010imagePortraitUrl\u0018\u0002 \u0001(\t\u0012\u0019\n\u0011imageLandscapeUrl\u0018\u0003 \u0001(\t\u0012\u0010\n\u0008duration\u0018\u0004 \u0001(\r\u0012\u0011\n\tactionUrl\u0018\u0005 \u0001(\t\"\u00f9\u0001\n\u0012GetSplashScreenReq\u0012\u0010\n\u0008devAppId\u0018\u0001 \u0001(\u0004\u0012\u0010\n\u0008deviceNo\u0018\u0002 \u0001(\t\u0012\u0017\n\u000fgamePackageName\u0018\u0003 \u0001(\t\u0012\u0017\n\u000fgameVersionCode\u0018\u0004 \u0001(\r\u0012\u0017\n\u000fgameVersionName\u0018\u0005 \u0001(\t\u0012\u000f\n\u0007channel\u0018\u0006 \u0001(\t\u0012\u000f\n\u0007sdkType\u0018\u0007 \u0001(\r\u0012\u0012\n\nsdkVersion\u0018\u0008 \u0001(\t\u0012\u000f\n\u0007unionId\u0018\t \u0001(\t\u0012\r\n\u0005model\u0018\n \u0001(\t\u0012\n"

    aput-object v1, v0, v5

    const-string v1, "\n\u0002ua\u0018\u000b \u0001(\t\u0012\u0012\n\nbusinessId\u0018\u000c \u0001(\r\"k\n\u0012GetSplashScreenRsp\u0012\u000f\n\u0007retCode\u0018\u0001 \u0002(\r\u0012D\n\u000csplashScreen\u0018\u0002 \u0001(\u000b2..org.xiaomi.gamecenter.milink.msg.SplashScreenB5\n org.xiaomi.gamecenter.milink.msgB\u0011SplashScreenProto"

    aput-object v1, v0, v6

    new-instance v1, Lorg/xiaomi/gamecenter/milink/msg/ar;

    invoke-direct {v1}, Lorg/xiaomi/gamecenter/milink/msg/ar;-><init>()V

    new-array v2, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Splashid"

    aput-object v3, v2, v5

    const-string v3, "ImagePortraitUrl"

    aput-object v3, v2, v6

    const-string v3, "ImageLandscapeUrl"

    aput-object v3, v2, v7

    const-string v3, "Duration"

    aput-object v3, v2, v4

    const-string v3, "ActionUrl"

    aput-object v3, v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "DevAppId"

    aput-object v3, v2, v5

    const-string v3, "DeviceNo"

    aput-object v3, v2, v6

    const-string v3, "GamePackageName"

    aput-object v3, v2, v7

    const-string v3, "GameVersionCode"

    aput-object v3, v2, v4

    const-string v3, "GameVersionName"

    aput-object v3, v2, v8

    const/4 v3, 0x5

    const-string v4, "Channel"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "SdkType"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "SdkVersion"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "UnionId"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Model"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Ua"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "BusinessId"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "RetCode"

    aput-object v3, v2, v5

    const-string v3, "SplashScreen"

    aput-object v3, v2, v6

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->internal_static_org_xiaomi_gamecenter_milink_msg_SplashScreen_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->internal_static_org_xiaomi_gamecenter_milink_msg_GetSplashScreenRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
