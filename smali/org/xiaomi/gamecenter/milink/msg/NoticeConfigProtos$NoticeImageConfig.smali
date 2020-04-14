.class public final Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoticeImageConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    }
.end annotation


# static fields
.field public static final ACTIONURL_FIELD_NUMBER:I = 0x7

.field public static final BACKUPACTIONURL_FIELD_NUMBER:I = 0x8

.field public static final IMAGELANDSCAPEURL_FIELD_NUMBER:I = 0x4

.field public static final IMAGEPORTRAITURL_FIELD_NUMBER:I = 0x1

.field public static final LANDSCAPEHEIGHT_FIELD_NUMBER:I = 0x6

.field public static final LANDSCAPEWIDTH_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORTRAITHEIGHT_FIELD_NUMBER:I = 0x3

.field public static final PORTRAITWIDTH_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

.field private static final serialVersionUID:J


# instance fields
.field private actionUrl_:Ljava/lang/Object;

.field private backupActionUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private imageLandscapeUrl_:Ljava/lang/Object;

.field private imagePortraitUrl_:Ljava/lang/Object;

.field private landscapeHeight_:I

.field private landscapeWidth_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private portraitHeight_:I

.field private portraitWidth_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/am;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/am;-><init>()V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;-><init>(Z)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->memoizedSerializedSize:I

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->initFields()V

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

    invoke-virtual {p0, p1, v2, p2, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

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

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->imagePortraitUrl_:Ljava/lang/Object;
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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->portraitWidth_:I
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
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->portraitHeight_:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->imageLandscapeUrl_:Ljava/lang/Object;

    goto :goto_0

    :sswitch_5
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->landscapeWidth_:I

    goto :goto_0

    :sswitch_6
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->landscapeHeight_:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    or-int/lit8 v4, v4, 0x40

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->actionUrl_:Ljava/lang/Object;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    or-int/lit16 v4, v4, 0x80

    iput v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    iput-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->backupActionUrl_:Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/xiaomi/gamecenter/milink/msg/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/ah;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$2600()Z
    .locals 1

    sget-boolean v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2800(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->imagePortraitUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2802(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->imagePortraitUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2902(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->portraitWidth_:I

    return p1
.end method

.method static synthetic access$3002(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->portraitHeight_:I

    return p1
.end method

.method static synthetic access$3100(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->imageLandscapeUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3102(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->imageLandscapeUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3202(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->landscapeWidth_:I

    return p1
.end method

.method static synthetic access$3302(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->landscapeHeight_:I

    return p1
.end method

.method static synthetic access$3400(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->actionUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3402(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->actionUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3500(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->backupActionUrl_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3502(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->backupActionUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3602(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->imagePortraitUrl_:Ljava/lang/Object;

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->portraitWidth_:I

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->portraitHeight_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->imageLandscapeUrl_:Ljava/lang/Object;

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->landscapeWidth_:I

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->landscapeHeight_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->actionUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->backupActionUrl_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->access$2400()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    return-object v0
.end method


# virtual methods
.method public final getActionUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->actionUrl_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->actionUrl_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getActionUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->actionUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->actionUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getBackupActionUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->backupActionUrl_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->backupActionUrl_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getBackupActionUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->backupActionUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->backupActionUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    return-object v0
.end method

.method public final getImageLandscapeUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->imageLandscapeUrl_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->imageLandscapeUrl_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getImageLandscapeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->imageLandscapeUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->imageLandscapeUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getImagePortraitUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->imagePortraitUrl_:Ljava/lang/Object;

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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->imagePortraitUrl_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getImagePortraitUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->imagePortraitUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->imagePortraitUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getLandscapeHeight()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->landscapeHeight_:I

    return v0
.end method

.method public final getLandscapeWidth()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->landscapeWidth_:I

    return v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getPortraitHeight()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->portraitHeight_:I

    return v0
.end method

.method public final getPortraitWidth()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->portraitWidth_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getImagePortraitUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->portraitWidth_:I

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    iget v2, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->portraitHeight_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v5, :cond_4

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getImageLandscapeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget v2, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->landscapeWidth_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    iget v2, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->landscapeHeight_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getActionUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_8

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getBackupActionUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->memoizedSerializedSize:I

    goto/16 :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasActionUrl()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

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

.method public final hasBackupActionUrl()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

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

.method public final hasImageLandscapeUrl()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

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

.method public final hasImagePortraitUrl()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLandscapeHeight()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

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

.method public final hasLandscapeWidth()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

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

.method public final hasPortraitHeight()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

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

.method public final hasPortraitWidth()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->memoizedIsInitialized:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/ah;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    invoke-static {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->newBuilder(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

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

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getSerializedSize()I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getImagePortraitUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->portraitWidth_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_1
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->portraitHeight_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_2
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getImageLandscapeUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->landscapeWidth_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_4
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->landscapeHeight_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_5
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getActionUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_6
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getBackupActionUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_7
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
