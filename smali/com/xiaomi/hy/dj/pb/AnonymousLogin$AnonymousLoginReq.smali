.class public final Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/hy/dj/pb/AnonymousLogin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnonymousLoginReq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    }
.end annotation


# static fields
.field public static final CHANNEL_FIELD_NUMBER:I = 0x3

.field public static final DEVAPPID_FIELD_NUMBER:I = 0x1

.field public static final DEVICENO_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private channel_:Ljava/lang/Object;

.field private devAppId_:J

.field private deviceNo_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$1;

    invoke-direct {v0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$1;-><init>()V

    sput-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->defaultInstance:Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    invoke-direct {v0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->initFields()V

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

    iput-byte v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->memoizedIsInitialized:B

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->initFields()V

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

    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v3, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->devAppId_:J
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

    iput-object v1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->bitField0_:I

    iput-object v3, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->deviceNo_:Ljava/lang/Object;
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

    iget v4, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->bitField0_:I

    iput-object v3, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->channel_:Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/xiaomi/hy/dj/pb/AnonymousLogin$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->memoizedIsInitialized:B

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/xiaomi/hy/dj/pb/AnonymousLogin$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->memoizedIsInitialized:B

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;J)J
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->devAppId_:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->deviceNo_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->deviceNo_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->channel_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$902(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->channel_:Ljava/lang/Object;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
    .locals 1

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->defaultInstance:Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->devAppId_:J

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->deviceNo_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->channel_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 1

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->access$300()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 1

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->newBuilder()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->mergeFrom(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    return-object v0
.end method


# virtual methods
.method public final getChannel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->channel_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->channel_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getChannelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->channel_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->channel_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getDefaultInstanceForType()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getDefaultInstanceForType()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
    .locals 1

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->defaultInstance:Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    return-object v0
.end method

.method public final getDevAppId()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->devAppId_:J

    return-wide v0
.end method

.method public final getDeviceNo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->deviceNo_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->deviceNo_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getDeviceNoBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->deviceNo_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->deviceNo_:Ljava/lang/Object;

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
            "Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget-wide v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->devAppId_:J

    invoke-static {v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getDeviceNoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getChannelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasChannel()Z
    .locals 2

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->bitField0_:I

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

.method public final hasDevAppId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->bitField0_:I

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

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->bitField0_:I

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

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    const-class v2, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->memoizedIsInitialized:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->hasDevAppId()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->hasDeviceNo()Z

    move-result v2

    if-nez v2, :cond_3

    iput-byte v1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_3
    iput-byte v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->newBuilderForType()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->newBuilderForType()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 1

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->newBuilder()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 2

    new-instance v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/xiaomi/hy/dj/pb/AnonymousLogin$1;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->toBuilder()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->toBuilder()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->newBuilder(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

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

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getSerializedSize()I

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->devAppId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getDeviceNoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getChannelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
