.class public final Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetSplashScreenReq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;
    }
.end annotation


# static fields
.field public static final BUSINESSID_FIELD_NUMBER:I = 0xc

.field public static final CHANNEL_FIELD_NUMBER:I = 0x6

.field public static final DEVAPPID_FIELD_NUMBER:I = 0x1

.field public static final DEVICENO_FIELD_NUMBER:I = 0x2

.field public static final GAMEPACKAGENAME_FIELD_NUMBER:I = 0x3

.field public static final GAMEVERSIONCODE_FIELD_NUMBER:I = 0x4

.field public static final GAMEVERSIONNAME_FIELD_NUMBER:I = 0x5

.field public static final MODEL_FIELD_NUMBER:I = 0xa

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDKTYPE_FIELD_NUMBER:I = 0x7

.field public static final SDKVERSION_FIELD_NUMBER:I = 0x8

.field public static final UA_FIELD_NUMBER:I = 0xb

.field public static final UNIONID_FIELD_NUMBER:I = 0x9

.field private static final defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private businessId_:I

.field private channel_:Ljava/lang/Object;

.field private devAppId_:J

.field private deviceNo_:Ljava/lang/Object;

.field private gamePackageName_:Ljava/lang/Object;

.field private gameVersionCode_:I

.field private gameVersionName_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private model_:Ljava/lang/Object;

.field private sdkType_:I

.field private sdkVersion_:Ljava/lang/Object;

.field private ua_:Ljava/lang/Object;

.field private unionId_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/as;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/as;-><init>()V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;-><init>(Z)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->initFields()V

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

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->memoizedSerializedSize:I

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->initFields()V

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

    invoke-virtual {p0, p1, v2, p2, v3}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->devAppId_:J
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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->deviceNo_:Ljava/lang/Object;
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

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gamePackageName_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gameVersionCode_:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gameVersionName_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->channel_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_7
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->sdkType_:I

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->sdkVersion_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->unionId_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->model_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->ua_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_c
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    or-int/lit16 v3, v3, 0x800

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->businessId_:I
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/xiaomi/gamecenter/milink/msg/ar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/ar;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2002(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;J)J
    .locals 1

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->devAppId_:J

    return-wide p1
.end method

.method static synthetic access$2100(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->deviceNo_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2102(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->deviceNo_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2200(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gamePackageName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2202(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gamePackageName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gameVersionCode_:I

    return p1
.end method

.method static synthetic access$2400(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gameVersionName_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2402(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gameVersionName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2500(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->channel_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2502(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->channel_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2602(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->sdkType_:I

    return p1
.end method

.method static synthetic access$2700(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->sdkVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2702(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->sdkVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2800(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->unionId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2802(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->unionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2900(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->model_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2902(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->model_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3000(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->ua_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3002(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->ua_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3102(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->businessId_:I

    return p1
.end method

.method static synthetic access$3202(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->devAppId_:J

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->deviceNo_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gamePackageName_:Ljava/lang/Object;

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gameVersionCode_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gameVersionName_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->channel_:Ljava/lang/Object;

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->sdkType_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->sdkVersion_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->unionId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->model_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->ua_:Ljava/lang/Object;

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->businessId_:I

    return-void
.end method

.method public static newBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;->access$1600()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    return-object v0
.end method


# virtual methods
.method public final getBusinessId()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->businessId_:I

    return v0
.end method

.method public final getChannel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->channel_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->channel_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getChannelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->channel_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->channel_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    return-object v0
.end method

.method public final getDevAppId()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->devAppId_:J

    return-wide v0
.end method

.method public final getDeviceNo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->deviceNo_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->deviceNo_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getDeviceNoBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->deviceNo_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->deviceNo_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getGamePackageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gamePackageName_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gamePackageName_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getGamePackageNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gamePackageName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gamePackageName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getGameVersionCode()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gameVersionCode_:I

    return v0
.end method

.method public final getGameVersionName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gameVersionName_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gameVersionName_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getGameVersionNameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gameVersionName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gameVersionName_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getModel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->model_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->model_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getModelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->model_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->model_:Ljava/lang/Object;

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
            "Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSdkType()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->sdkType_:I

    return v0
.end method

.method public final getSdkVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->sdkVersion_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->sdkVersion_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getSdkVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->sdkVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->sdkVersion_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->devAppId_:J

    invoke-static {v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getDeviceNoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getGamePackageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gameVersionCode_:I

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getGameVersionNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getChannelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    iget v2, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->sdkType_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getSdkVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getUnionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getUaBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    const/16 v1, 0xc

    iget v2, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->businessId_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public final getUa()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->ua_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->ua_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getUaBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->ua_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->ua_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getUnionId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->unionId_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->unionId_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getUnionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->unionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->unionId_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasBusinessId()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

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

.method public final hasChannel()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

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

.method public final hasDevAppId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasDeviceNo()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

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

.method public final hasGamePackageName()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

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

.method public final hasGameVersionCode()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

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

.method public final hasGameVersionName()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

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

.method public final hasModel()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

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

.method public final hasSdkType()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

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

.method public final hasSdkVersion()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

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

.method public final hasUa()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

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

.method public final hasUnionId()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

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

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->access$1400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->memoizedIsInitialized:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/ar;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;
    .locals 1

    invoke-static {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->newBuilder(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getSerializedSize()I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->devAppId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getDeviceNoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getGamePackageNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v5, :cond_3

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->gameVersionCode_:I

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_3
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getGameVersionNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_4
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getChannelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_5
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->sdkType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_6
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getSdkVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_7
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getUnionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_8
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getModelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_9
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getUaBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_a
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    const/16 v0, 0xc

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->businessId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_b
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
