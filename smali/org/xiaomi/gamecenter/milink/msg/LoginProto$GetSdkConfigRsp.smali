.class public final Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/LoginProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetSdkConfigRsp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    }
.end annotation


# static fields
.field public static final GAMECONFIG_FIELD_NUMBER:I = 0x2

.field public static final LOGINTYPE_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYTYPE_FIELD_NUMBER:I = 0x4

.field public static final RETCODE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private gameConfig_:I

.field private loginType_:Lcom/google/protobuf/LazyStringList;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private payType_:Lcom/google/protobuf/LazyStringList;

.field private retCode_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/y;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/y;-><init>()V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;-><init>(Z)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/16 v7, 0x8

    const/4 v6, 0x4

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->memoizedSerializedSize:I

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    move v1, v2

    move v0, v2

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_0
    move v1, v3

    goto :goto_0

    :sswitch_1
    iget v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->retCode_:I
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move v2, v0

    :goto_1
    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :goto_2
    and-int/lit8 v0, v2, 0x4

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;

    :cond_1
    and-int/lit8 v0, v2, 0x8

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    :cond_2
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->makeExtensionsImmutable()V

    throw v1

    :sswitch_2
    :try_start_2
    iget v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->gameConfig_:I
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v1

    move v2, v0

    :goto_3
    :try_start_3
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :sswitch_3
    :try_start_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    and-int/lit8 v2, v0, 0x4

    if-eq v2, v6, :cond_7

    new-instance v2, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v2}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    or-int/lit8 v2, v0, 0x4

    :goto_4
    :try_start_5
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, v5}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v0, v2

    goto :goto_0

    :sswitch_4
    :try_start_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    and-int/lit8 v5, v0, 0x8

    if-eq v5, v7, :cond_3

    new-instance v5, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v0, v0, 0x8

    :cond_3
    iget-object v5, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v2}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V
    :try_end_6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    move v2, v0

    goto :goto_2

    :cond_4
    and-int/lit8 v1, v0, 0x4

    if-ne v1, v6, :cond_5

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;

    :cond_5
    and-int/lit8 v0, v0, 0x8

    if-ne v0, v7, :cond_6

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    :cond_6
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->makeExtensionsImmutable()V

    return-void

    :catch_2
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v1, v0

    goto/16 :goto_1

    :cond_7
    move v2, v0

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/xiaomi/gamecenter/milink/msg/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$21400()Z
    .locals 1

    sget-boolean v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$21602(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->retCode_:I

    return p1
.end method

.method static synthetic access$21702(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->gameConfig_:I

    return p1
.end method

.method static synthetic access$21800(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lcom/google/protobuf/LazyStringList;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$21802(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$21900(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lcom/google/protobuf/LazyStringList;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method static synthetic access$21902(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$22002(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto;->access$20900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->retCode_:I

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->gameConfig_:I

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    return-void
.end method

.method public static newBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->access$21200()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    return-object v0
.end method

.method public final getGameConfig()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->gameConfig_:I

    return v0
.end method

.method public final getLoginType(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLoginTypeBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final getLoginTypeCount()I
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getLoginTypeList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getPayType(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPayTypeBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final getPayTypeCount()I
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getPayTypeList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public final getRetCode()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->retCode_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->retCode_:I

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    iget v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    iget v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->gameConfig_:I

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    move v2, v1

    move v3, v1

    :goto_2
    iget-object v4, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v2}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->getLoginTypeList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int v3, v0, v2

    move v0, v1

    move v2, v1

    :goto_3
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/lit8 v1, v0, 0x1

    move v0, v1

    goto :goto_3

    :cond_3
    add-int v0, v3, v2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->getPayTypeList()Lcom/google/protobuf/ProtocolStringList;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/protobuf/ProtocolStringList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->memoizedSerializedSize:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasGameConfig()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->bitField0_:I

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

.method public final hasRetCode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto;->access$21000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->memoizedIsInitialized:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->hasRetCode()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->hasGameConfig()Z

    move-result v2

    if-nez v2, :cond_3

    iput-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_3
    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/o;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    invoke-static {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->newBuilder(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->getSerializedSize()I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->retCode_:I

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->gameConfig_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    const/4 v0, 0x4

    iget-object v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
