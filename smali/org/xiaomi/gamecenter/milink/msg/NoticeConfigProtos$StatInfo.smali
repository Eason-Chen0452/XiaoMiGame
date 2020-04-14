.class public final Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StatInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    }
.end annotation


# static fields
.field public static final ANDROID_FIELD_NUMBER:I = 0x7

.field public static final CARRIER_FIELD_NUMBER:I = 0xb

.field public static final CID_FIELD_NUMBER:I = 0x11

.field public static final CLIENTVERSION_FIELD_NUMBER:I = 0xe

.field public static final DEVAPPID_FIELD_NUMBER:I = 0x12

.field public static final EXTRA_FIELD_NUMBER:I = 0x18

.field public static final FUID_FIELD_NUMBER:I = 0xd

.field public static final IMEIMD5_FIELD_NUMBER:I = 0x1

.field public static final IMEISHA1_FIELD_NUMBER:I = 0x2

.field public static final IMEISHA2_FIELD_NUMBER:I = 0x3

.field public static final LANG_FIELD_NUMBER:I = 0xa

.field public static final LOCALTIME_FIELD_NUMBER:I = 0x10

.field public static final MACMD5_FIELD_NUMBER:I = 0x4

.field public static final NETWORK_FIELD_NUMBER:I = 0x6

.field public static final OS_FIELD_NUMBER:I = 0x8

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTECTCID_FIELD_NUMBER:I = 0x19

.field public static final REGION_FIELD_NUMBER:I = 0x9

.field public static final SDKJARVERSION_FIELD_NUMBER:I = 0x14

.field public static final SDKSERVICEVERSION_FIELD_NUMBER:I = 0x15

.field public static final SDKTYPE_FIELD_NUMBER:I = 0x13

.field public static final SERVERTIME_FIELD_NUMBER:I = 0xf

.field public static final SESSIONID_FIELD_NUMBER:I = 0x16

.field public static final TIMEZONE_FIELD_NUMBER:I = 0xc

.field public static final UA_FIELD_NUMBER:I = 0x5

.field public static final UNIONID_FIELD_NUMBER:I = 0x17

.field private static final defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

.field private static final serialVersionUID:J


# instance fields
.field private android_:Ljava/lang/Object;

.field private bitField0_:I

.field private carrier_:Ljava/lang/Object;

.field private cid_:Ljava/lang/Object;

.field private clientVersion_:Ljava/lang/Object;

.field private devAppId_:J

.field private extra_:Ljava/lang/Object;

.field private fuid_:J

.field private imeiMd5_:Ljava/lang/Object;

.field private imeiSha1_:Ljava/lang/Object;

.field private imeiSha2_:Ljava/lang/Object;

.field private lang_:Ljava/lang/Object;

.field private localTime_:Ljava/lang/Object;

.field private macMd5_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private network_:Ljava/lang/Object;

.field private os_:Ljava/lang/Object;

.field private protectCid_:Ljava/lang/Object;

.field private region_:Ljava/lang/Object;

.field private sdkJarVersion_:Ljava/lang/Object;

.field private sdkServiceVersion_:Ljava/lang/Object;

.field private sdkType_:I

.field private serverTime_:Ljava/lang/Object;

.field private sessionId_:Ljava/lang/Object;

.field private timezone_:Ljava/lang/Object;

.field private ua_:Ljava/lang/Object;

.field private unionId_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/aq;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/aq;-><init>()V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;-><init>(Z)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->initFields()V

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

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->memoizedSerializedSize:I

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->initFields()V

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

    invoke-virtual {p0, p1, v2, p2, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiMd5_:Ljava/lang/Object;
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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiSha1_:Ljava/lang/Object;
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

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiSha2_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->macMd5_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->ua_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x20

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->network_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->android_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->os_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    or-int/lit16 v4, v4, 0x100

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->region_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    or-int/lit16 v4, v4, 0x200

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->lang_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->carrier_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->timezone_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_d
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    or-int/lit16 v3, v3, 0x1000

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->fuid_:J

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->clientVersion_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->serverTime_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const v5, 0x8000

    or-int/2addr v4, v5

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->localTime_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v5, 0x10000

    or-int/2addr v4, v5

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->cid_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_12
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->devAppId_:J

    goto/16 :goto_0

    :sswitch_13
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v4, 0x40000

    or-int/2addr v3, v4

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkType_:I

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkJarVersion_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v5, 0x100000

    or-int/2addr v4, v5

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkServiceVersion_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v5, 0x200000

    or-int/2addr v4, v5

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sessionId_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v5, 0x400000

    or-int/2addr v4, v5

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->unionId_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_18
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v5, 0x800000

    or-int/2addr v4, v5

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->extra_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v5, 0x1000000

    or-int/2addr v4, v5

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->protectCid_:Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x90 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa2 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb2 -> :sswitch_16
        0xba -> :sswitch_17
        0xc2 -> :sswitch_18
        0xca -> :sswitch_19
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/xiaomi/gamecenter/milink/msg/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/ah;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$5500()Z
    .locals 1

    sget-boolean v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5700(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiMd5_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5702(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiMd5_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5800(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiSha1_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5802(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiSha1_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5900(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiSha2_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5902(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiSha2_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6000(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->macMd5_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6002(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->macMd5_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6100(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->ua_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6102(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->ua_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6200(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->network_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6202(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->network_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6300(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->android_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6302(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->android_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6400(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->os_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6402(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->os_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6500(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->region_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6502(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->region_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6600(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->lang_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6602(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->lang_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6700(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->carrier_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6702(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->carrier_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6800(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->timezone_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6802(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->timezone_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6902(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;J)J
    .locals 1

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->fuid_:J

    return-wide p1
.end method

.method static synthetic access$7000(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->clientVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7002(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->clientVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7100(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->serverTime_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7102(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->serverTime_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7200(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->localTime_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7202(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->localTime_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7300(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->cid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7302(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->cid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7402(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;J)J
    .locals 1

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->devAppId_:J

    return-wide p1
.end method

.method static synthetic access$7502(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkType_:I

    return p1
.end method

.method static synthetic access$7600(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkJarVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7602(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkJarVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7700(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkServiceVersion_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7702(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkServiceVersion_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7800(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sessionId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7802(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sessionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7900(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->unionId_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7902(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->unionId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8000(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->extra_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8002(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->extra_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8100(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->protectCid_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8102(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->protectCid_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8202(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->access$5000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 4

    const-wide/16 v2, 0x0

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiMd5_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiSha1_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiSha2_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->macMd5_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->ua_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->network_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->android_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->os_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->region_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->lang_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->carrier_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->timezone_:Ljava/lang/Object;

    iput-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->fuid_:J

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->clientVersion_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->serverTime_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->localTime_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->cid_:Ljava/lang/Object;

    iput-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->devAppId_:J

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkType_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkJarVersion_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkServiceVersion_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sessionId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->unionId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->extra_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->protectCid_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->access$5300()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    return-object v0
.end method


# virtual methods
.method public final getAndroid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->android_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->android_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getAndroidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->android_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->android_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getCarrier()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->carrier_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->carrier_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getCarrierBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->carrier_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->carrier_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getCid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->cid_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->cid_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->cid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->cid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getClientVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->clientVersion_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->clientVersion_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getClientVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->clientVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->clientVersion_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    return-object v0
.end method

.method public final getDevAppId()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->devAppId_:J

    return-wide v0
.end method

.method public final getExtra()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->extra_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->extra_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getExtraBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->extra_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->extra_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getFuid()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->fuid_:J

    return-wide v0
.end method

.method public final getImeiMd5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiMd5_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiMd5_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getImeiMd5Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiMd5_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiMd5_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getImeiSha1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiSha1_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiSha1_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getImeiSha1Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiSha1_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiSha1_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getImeiSha2()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiSha2_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiSha2_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getImeiSha2Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiSha2_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->imeiSha2_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->lang_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->lang_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getLangBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->lang_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->lang_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getLocalTime()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->localTime_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->localTime_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getLocalTimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->localTime_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->localTime_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getMacMd5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->macMd5_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->macMd5_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getMacMd5Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->macMd5_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->macMd5_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getNetwork()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->network_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->network_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getNetworkBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->network_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->network_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getOs()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->os_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->os_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getOsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->os_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->os_:Ljava/lang/Object;

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
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getProtectCid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->protectCid_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->protectCid_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getProtectCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->protectCid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->protectCid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->region_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->region_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getRegionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->region_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->region_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSdkJarVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkJarVersion_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkJarVersion_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getSdkJarVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkJarVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkJarVersion_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSdkServiceVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkServiceVersion_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkServiceVersion_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getSdkServiceVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkServiceVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkServiceVersion_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSdkType()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkType_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 7

    const/16 v6, 0x10

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getImeiMd5Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getImeiSha1Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getImeiSha2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getMacMd5Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-ne v1, v6, :cond_5

    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getUaBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getNetworkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getAndroidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getOsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getRegionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getLangBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x400

    const/16 v2, 0x400

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getCarrierBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x800

    const/16 v2, 0x800

    if-ne v1, v2, :cond_c

    const/16 v1, 0xc

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getTimezoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_d

    const/16 v1, 0xd

    iget-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->fuid_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x2000

    const/16 v2, 0x2000

    if-ne v1, v2, :cond_e

    const/16 v1, 0xe

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getClientVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_f

    const/16 v1, 0xf

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getServerTimeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    const v2, 0x8000

    if-ne v1, v2, :cond_10

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getLocalTimeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    const/high16 v2, 0x10000

    if-ne v1, v2, :cond_11

    const/16 v1, 0x11

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getCidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_12

    const/16 v1, 0x12

    iget-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->devAppId_:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_13

    const/16 v1, 0x13

    iget v2, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkType_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    const/high16 v2, 0x80000

    if-ne v1, v2, :cond_14

    const/16 v1, 0x14

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getSdkJarVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    const/high16 v2, 0x100000

    if-ne v1, v2, :cond_15

    const/16 v1, 0x15

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getSdkServiceVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    const/high16 v2, 0x200000

    if-ne v1, v2, :cond_16

    const/16 v1, 0x16

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    const/high16 v2, 0x400000

    if-ne v1, v2, :cond_17

    const/16 v1, 0x17

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getUnionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_17
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    const/high16 v2, 0x800000

    if-ne v1, v2, :cond_18

    const/16 v1, 0x18

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getExtraBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_18
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    const/high16 v2, 0x1000000

    if-ne v1, v2, :cond_19

    const/16 v1, 0x19

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getProtectCidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_19
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public final getServerTime()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->serverTime_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->serverTime_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getServerTimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->serverTime_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->serverTime_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sessionId_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sessionId_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sessionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sessionId_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getTimezone()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->timezone_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->timezone_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getTimezoneBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->timezone_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->timezone_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getUa()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->ua_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->ua_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getUaBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->ua_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->ua_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getUnionId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->unionId_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->unionId_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getUnionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->unionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->unionId_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasAndroid()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

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

.method public final hasCarrier()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

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

.method public final hasCid()Z
    .locals 2

    const/high16 v1, 0x10000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasClientVersion()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

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

    const/high16 v1, 0x20000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasExtra()Z
    .locals 2

    const/high16 v1, 0x800000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasFuid()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

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

.method public final hasImeiMd5()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasImeiSha1()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

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

.method public final hasImeiSha2()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

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

.method public final hasLang()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

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

.method public final hasLocalTime()Z
    .locals 2

    const v1, 0x8000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasMacMd5()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

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

.method public final hasNetwork()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

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

.method public final hasOs()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

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

.method public final hasProtectCid()Z
    .locals 2

    const/high16 v1, 0x1000000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRegion()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

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

.method public final hasSdkJarVersion()Z
    .locals 2

    const/high16 v1, 0x80000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSdkServiceVersion()Z
    .locals 2

    const/high16 v1, 0x100000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/2addr v0, v1

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

    const/high16 v1, 0x40000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasServerTime()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSessionId()Z
    .locals 2

    const/high16 v1, 0x200000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasTimezone()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

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

.method public final hasUa()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

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

.method public final hasUnionId()Z
    .locals 2

    const/high16 v1, 0x400000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/2addr v0, v1

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->access$5100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->memoizedIsInitialized:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/ah;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    invoke-static {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->newBuilder(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

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

    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getSerializedSize()I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getImeiMd5Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getImeiSha1Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getImeiSha2Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getMacMd5Bytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-ne v0, v5, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getUaBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_4
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getNetworkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_5
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getAndroidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_6
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getOsBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_7
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getRegionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_8
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getLangBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_9
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getCarrierBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_a
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_b

    const/16 v0, 0xc

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getTimezoneBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_b
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_c

    const/16 v0, 0xd

    iget-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->fuid_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_c
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_d

    const/16 v0, 0xe

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getClientVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_d
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_e

    const/16 v0, 0xf

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getServerTimeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_e
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    const v1, 0x8000

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getLocalTimeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_f
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_10

    const/16 v0, 0x11

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getCidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_10
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_11

    const/16 v0, 0x12

    iget-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->devAppId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_11
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    const/high16 v1, 0x40000

    if-ne v0, v1, :cond_12

    const/16 v0, 0x13

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->sdkType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_12
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_13

    const/16 v0, 0x14

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getSdkJarVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_13
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    const/high16 v1, 0x100000

    if-ne v0, v1, :cond_14

    const/16 v0, 0x15

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getSdkServiceVersionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_14
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    const/high16 v1, 0x200000

    if-ne v0, v1, :cond_15

    const/16 v0, 0x16

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_15
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/high16 v1, 0x400000

    if-ne v0, v1, :cond_16

    const/16 v0, 0x17

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getUnionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_16
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    const/high16 v1, 0x800000

    if-ne v0, v1, :cond_17

    const/16 v0, 0x18

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getExtraBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_17
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_18

    const/16 v0, 0x19

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getProtectCidBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_18
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
