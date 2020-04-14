.class public final Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/AccountProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LoginRsp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;
    }
.end annotation


# static fields
.field public static final HASINNERAVATAR_FIELD_NUMBER:I = 0xa

.field public static final HASINNERNICKNAME_FIELD_NUMBER:I = 0xb

.field public static final HASINNERSEX_FIELD_NUMBER:I = 0xc

.field public static final HEADIMGURL_FIELD_NUMBER:I = 0x7

.field public static final ISSETGUIDE_FIELD_NUMBER:I = 0xd

.field public static final LOGINSTATUS_FIELD_NUMBER:I = 0x9

.field public static final NICKNAME_FIELD_NUMBER:I = 0x6

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;",
            ">;"
        }
    .end annotation
.end field

.field public static final PASSTOKEN_FIELD_NUMBER:I = 0x5

.field public static final RETCODE_FIELD_NUMBER:I = 0x1

.field public static final SECURITYKEY_FIELD_NUMBER:I = 0x4

.field public static final SERVICETOKEN_FIELD_NUMBER:I = 0x3

.field public static final SEX_FIELD_NUMBER:I = 0x8

.field public static final UUID_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private hasInnerAvatar_:Z

.field private hasInnerNickname_:Z

.field private hasInnerSex_:Z

.field private headimgurl_:Ljava/lang/Object;

.field private isSetGuide_:Z

.field private loginStatus_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private nickname_:Ljava/lang/Object;

.field private passToken_:Ljava/lang/Object;

.field private retCode_:I

.field private securityKey_:Ljava/lang/Object;

.field private serviceToken_:Ljava/lang/Object;

.field private sex_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private uuid_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/c;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/c;-><init>()V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;-><init>(Z)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->memoizedSerializedSize:I

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-virtual {p0, p1, v2, p2, v3}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->retCode_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->uuid_:J
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->serviceToken_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->securityKey_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->passToken_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->nickname_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->headimgurl_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_8
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->sex_:I

    goto/16 :goto_0

    :sswitch_9
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->loginStatus_:I

    goto/16 :goto_0

    :sswitch_a
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerAvatar_:Z

    goto/16 :goto_0

    :sswitch_b
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    or-int/lit16 v3, v3, 0x400

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerNickname_:Z

    goto/16 :goto_0

    :sswitch_c
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    or-int/lit16 v3, v3, 0x800

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerSex_:Z

    goto/16 :goto_0

    :sswitch_d
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    iput-boolean v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->isSetGuide_:Z
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/xiaomi/gamecenter/milink/msg/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder",
            "<*>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$2100()Z
    .locals 1

    sget-boolean v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2302(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->retCode_:I

    return p1
.end method

.method static synthetic access$2402(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;J)J
    .locals 1

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->uuid_:J

    return-wide p1
.end method

.method static synthetic access$2500(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->serviceToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2502(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->serviceToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2600(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->securityKey_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2602(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->securityKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2700(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->passToken_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2702(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->passToken_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2800(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->nickname_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2802(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->nickname_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2900(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->headimgurl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2902(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->headimgurl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3002(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->sex_:I

    return p1
.end method

.method static synthetic access$3102(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->loginStatus_:I

    return p1
.end method

.method static synthetic access$3202(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerAvatar_:Z

    return p1
.end method

.method static synthetic access$3302(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerNickname_:Z

    return p1
.end method

.method static synthetic access$3402(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerSex_:Z

    return p1
.end method

.method static synthetic access$3502(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->isSetGuide_:Z

    return p1
.end method

.method static synthetic access$3602(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->access$1600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->retCode_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->uuid_:J

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->serviceToken_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->securityKey_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->passToken_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->nickname_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->headimgurl_:Ljava/lang/Object;

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->sex_:I

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->loginStatus_:I

    iput-boolean v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerAvatar_:Z

    iput-boolean v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerNickname_:Z

    iput-boolean v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerSex_:Z

    iput-boolean v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->isSetGuide_:Z

    return-void
.end method

.method public static newBuilder()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;->access$1900()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    return-object v0
.end method

.method public final getHasInnerAvatar()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerAvatar_:Z

    return v0
.end method

.method public final getHasInnerNickname()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerNickname_:Z

    return v0
.end method

.method public final getHasInnerSex()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerSex_:Z

    return v0
.end method

.method public final getHeadimgurl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->headimgurl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->headimgurl_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getHeadimgurlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->headimgurl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->headimgurl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getIsSetGuide()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->isSetGuide_:Z

    return v0
.end method

.method public final getLoginStatus()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->loginStatus_:I

    return v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->nickname_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->nickname_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->nickname_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->nickname_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getPassToken()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->passToken_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->passToken_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getPassTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->passToken_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->passToken_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getRetCode()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->retCode_:I

    return v0
.end method

.method public final getSecurityKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->securityKey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->securityKey_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getSecurityKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->securityKey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->securityKey_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->retCode_:I

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v4, :cond_2

    iget-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->uuid_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v5, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getServiceTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v6, :cond_4

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getSecurityKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getPassTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getHeadimgurlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->sex_:I

    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    iget v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->loginStatus_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    iget-boolean v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerAvatar_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    iget-boolean v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerNickname_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    const/16 v1, 0xc

    iget-boolean v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerSex_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    const/16 v1, 0xd

    iget-boolean v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->isSetGuide_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public final getServiceToken()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->serviceToken_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->serviceToken_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getServiceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->serviceToken_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->serviceToken_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSex()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->sex_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getUuid()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->uuid_:J

    return-wide v0
.end method

.method public final hasHasInnerAvatar()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasHasInnerNickname()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasHasInnerSex()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasHeadimgurl()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasIsSetGuide()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLoginStatus()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasNickname()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPassToken()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRetCode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSecurityKey()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasServiceToken()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSex()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasUuid()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->access$1700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-byte v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->memoizedIsInitialized:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasRetCode()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_2
    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/a;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;
    .locals 1

    invoke-static {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->newBuilder(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getSerializedSize()I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->retCode_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->uuid_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_1
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getServiceTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getSecurityKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getPassTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_4
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getNicknameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_5
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getHeadimgurlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_6
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->sex_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_7
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->loginStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_8
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    iget-boolean v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerAvatar_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_9
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    iget-boolean v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerNickname_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_a
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    const/16 v0, 0xc

    iget-boolean v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->hasInnerSex_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_b
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    const/16 v0, 0xd

    iget-boolean v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->isSetGuide_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_c
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
