.class public final Lorg/xiaomi/gamecenter/milink/msg/AccountProto;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;,
        Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRspOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReq;,
        Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginReqOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;,
        Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRspOrBuilder;,
        Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;,
        Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReqOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_LoginReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_LoginReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_LoginRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_LoginRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "\n\rAccount.proto\u0012 org.xiaomi.gamecenter.milink.msg\"\u00a4\u0001\n\u0008LoginReq\u0012\u0013\n\u000baccountType\u0018\u0001 \u0002(\r\u0012\u000c\n\u0004code\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006openid\u0018\u0003 \u0001(\t\u0012\u0013\n\u000baccessToken\u0018\u0004 \u0001(\t\u0012\u0012\n\nexpires_in\u0018\u0005 \u0001(\r\u0012\u0014\n\u000crefreshToken\u0018\u0006 \u0001(\t\u0012\u0010\n\u0008isSaveSt\u0018\u0007 \u0001(\u0008\u0012\u0014\n\u0005appid\u0018\u0008 \u0001(\u0005:\u000520002\"\u0091\u0002\n\u0008LoginRsp\u0012\u000f\n\u0007retCode\u0018\u0001 \u0002(\r\u0012\u000c\n\u0004uuid\u0018\u0002 \u0001(\u0004\u0012\u0014\n\u000cserviceToken\u0018\u0003 \u0001(\t\u0012\u0013\n\u000bsecurityKey\u0018\u0004 \u0001(\t\u0012\u0011\n\tpassToken\u0018\u0005 \u0001(\t\u0012\u0010\n\u0008nickname\u0018\u0006 \u0001(\t\u0012\u0012\n\nheadimgurl\u0018\u0007 \u0001(\t\u0012\u000b\n\u0003sex\u0018\u0008 \u0001(\r\u0012\u0013\n\u000bloginStatus\u0018\t \u0001(\r\u0012\u0016\n\u000eha"

    aput-object v1, v0, v5

    const-string v1, "sInnerAvatar\u0018\n \u0001(\u0008\u0012\u0018\n\u0010hasInnerNickname\u0018\u000b \u0001(\u0008\u0012\u0013\n\u000bhasInnerSex\u0018\u000c \u0001(\u0008\u0012\u0019\n\nisSetGuide\u0018\r \u0001(\u0008:\u0005false\"L\n\rMiSsoLoginReq\u0012\u0016\n\u000baccountType\u0018\u0001 \u0002(\r:\u00014\u0012\u000b\n\u0003mid\u0018\u0002 \u0002(\u0004\u0012\u0016\n\u000emiservicetoken\u0018\u0003 \u0002(\t\"\u00a6\u0002\n\rMiSsoLoginRsp\u0012\u000f\n\u0007retCode\u0018\u0001 \u0002(\r\u0012\u000c\n\u0004uuid\u0018\u0002 \u0001(\u0004\u0012\u0014\n\u000cserviceToken\u0018\u0003 \u0001(\t\u0012\u0013\n\u000bsecurityKey\u0018\u0004 \u0001(\t\u0012\u0011\n\tpassToken\u0018\u0005 \u0001(\t\u0012\u0010\n\u0008nickname\u0018\u0006 \u0001(\t\u0012\u0012\n\nheadimgurl\u0018\u0007 \u0001(\t\u0012\u000b\n\u0003sex\u0018\u0008 \u0001(\r\u0012\u0013\n\u000bloginStatus\u0018\t \u0001(\r\u0012\u0016\n\u000ehasInnerAvatar\u0018\n \u0001(\u0008\u0012\u0018\n\u0010hasInnerNickname\u0018\u000b "

    aput-object v1, v0, v6

    const-string v1, "\u0001(\u0008\u0012\u0013\n\u000bhasInnerSex\u0018\u000c \u0001(\u0008\u0012\u0019\n\nisSetGuide\u0018\r \u0001(\u0008:\u0005false\u0012\u000e\n\u0006errMsg\u0018\u000e \u0001(\tB0\n org.xiaomi.gamecenter.milink.msgB\u000cAccountProto"

    aput-object v1, v0, v7

    new-instance v1, Lorg/xiaomi/gamecenter/milink/msg/a;

    invoke-direct {v1}, Lorg/xiaomi/gamecenter/milink/msg/a;-><init>()V

    new-array v2, v5, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {v0, v2, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_LoginReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_LoginReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "AccountType"

    aput-object v3, v2, v5

    const-string v3, "Code"

    aput-object v3, v2, v6

    const-string v3, "Openid"

    aput-object v3, v2, v7

    const-string v3, "AccessToken"

    aput-object v3, v2, v8

    const-string v3, "ExpiresIn"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "RefreshToken"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "IsSaveSt"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Appid"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_LoginReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_LoginRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_LoginRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0xd

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "RetCode"

    aput-object v3, v2, v5

    const-string v3, "Uuid"

    aput-object v3, v2, v6

    const-string v3, "ServiceToken"

    aput-object v3, v2, v7

    const-string v3, "SecurityKey"

    aput-object v3, v2, v8

    const-string v3, "PassToken"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Nickname"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Headimgurl"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Sex"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "LoginStatus"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "HasInnerAvatar"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "HasInnerNickname"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "HasInnerSex"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "IsSetGuide"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_LoginRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "AccountType"

    aput-object v3, v2, v5

    const-string v3, "Mid"

    aput-object v3, v2, v6

    const-string v3, "Miservicetoken"

    aput-object v3, v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance v0, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    sget-object v1, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "RetCode"

    aput-object v3, v2, v5

    const-string v3, "Uuid"

    aput-object v3, v2, v6

    const-string v3, "ServiceToken"

    aput-object v3, v2, v7

    const-string v3, "SecurityKey"

    aput-object v3, v2, v8

    const-string v3, "PassToken"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Nickname"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Headimgurl"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Sex"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "LoginStatus"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "HasInnerAvatar"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "HasInnerNickname"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "HasInnerSex"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "IsSetGuide"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "ErrMsg"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_LoginReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_LoginReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_LoginRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_LoginRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginReq_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$3800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginReq_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4800()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginRsp_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->internal_static_org_xiaomi_gamecenter_milink_msg_MiSsoLoginRsp_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    sput-object p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method
