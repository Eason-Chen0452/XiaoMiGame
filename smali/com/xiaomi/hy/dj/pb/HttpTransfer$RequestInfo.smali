.class public final Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/hy/dj/pb/HttpTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;
    }
.end annotation


# static fields
.field public static final BYTEARRAYENTITY_FIELD_NUMBER:I = 0x6

.field public static final HEADERS_FIELD_NUMBER:I = 0x3

.field public static final METHOD_FIELD_NUMBER:I = 0x1

.field public static final PARAMS_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROTOCOL_FIELD_NUMBER:I = 0x5

.field public static final URL_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private byteArrayEntity_:Lcom/google/protobuf/ByteString;

.field private headers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private method_:I

.field private params_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private protocol_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private url_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$1;

    invoke-direct {v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$1;-><init>()V

    sput-object v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->defaultInstance:Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    invoke-direct {v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->initFields()V

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

    iput-byte v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->memoizedIsInitialized:B

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    move v0, v2

    move v1, v2

    :cond_0
    :goto_0
    if-nez v0, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_0
    move v0, v3

    goto :goto_0

    :sswitch_1
    iget v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->method_:I
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

    and-int/lit8 v2, v1, 0x4

    if-ne v2, v6, :cond_1

    iget-object v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    :cond_1
    and-int/lit8 v1, v1, 0x8

    if-ne v1, v7, :cond_2

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    :cond_2
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iget v5, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    iput-object v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->url_:Ljava/lang/Object;
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :sswitch_3
    and-int/lit8 v2, v1, 0x4

    if-eq v2, v6, :cond_3

    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x4

    :cond_3
    iget-object v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    sget-object v5, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    and-int/lit8 v2, v1, 0x8

    if-eq v2, v7, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    or-int/lit8 v1, v1, 0x8

    :cond_4
    iget-object v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    sget-object v5, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :sswitch_5
    iget v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->protocol_:I

    goto/16 :goto_0

    :sswitch_6
    iget v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->byteArrayEntity_:Lcom/google/protobuf/ByteString;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_5
    and-int/lit8 v0, v1, 0x4

    if-ne v0, v6, :cond_6

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    :cond_6
    and-int/lit8 v0, v1, 0x8

    if-ne v0, v7, :cond_7

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    :cond_7
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/xiaomi/hy/dj/pb/HttpTransfer$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->memoizedIsInitialized:B

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/xiaomi/hy/dj/pb/HttpTransfer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->memoizedIsInitialized:B

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->protocol_:I

    return p1
.end method

.method static synthetic access$1202(Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->byteArrayEntity_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    return p1
.end method

.method static synthetic access$1400()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->method_:I

    return p1
.end method

.method static synthetic access$800(Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->url_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$900(Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    return-object p1
.end method

.method public static getDefaultInstance()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
    .locals 1

    sget-object v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->defaultInstance:Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/HttpTransfer;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->method_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->url_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    iput v1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->protocol_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->byteArrayEntity_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->access$300()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->newBuilder()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->mergeFrom(Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    return-object v0
.end method


# virtual methods
.method public final getByteArrayEntity()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->byteArrayEntity_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->getDefaultInstanceForType()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->getDefaultInstanceForType()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;
    .locals 1

    sget-object v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->defaultInstance:Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    return-object v0
.end method

.method public final getHeaders(I)Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;

    return-object v0
.end method

.method public final getHeadersCount()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getHeadersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    return-object v0
.end method

.method public final getHeadersOrBuilder(I)Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePairOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePairOrBuilder;

    return-object v0
.end method

.method public final getHeadersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePairOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    return-object v0
.end method

.method public final getMethod()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->method_:I

    return v0
.end method

.method public final getParams(I)Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;

    return-object v0
.end method

.method public final getParamsCount()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    return-object v0
.end method

.method public final getParamsOrBuilder(I)Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePairOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePairOrBuilder;

    return-object v0
.end method

.method public final getParamsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePairOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getProtocol()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->protocol_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->method_:I

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    iget v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    move v2, v1

    move v3, v0

    :goto_2
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v4, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v5, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v5, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->protocol_:I

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v3, v0

    :cond_4
    iget v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->byteArrayEntity_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v3, v0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v3

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->memoizedSerializedSize:I

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->url_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->url_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->url_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->url_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final hasByteArrayEntity()Z
    .locals 2

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

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

.method public final hasMethod()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasProtocol()Z
    .locals 2

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

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

.method public final hasUrl()Z
    .locals 2

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

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

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/HttpTransfer;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    const-class v2, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->memoizedIsInitialized:B

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->hasMethod()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->memoizedIsInitialized:B

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->hasUrl()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->memoizedIsInitialized:B

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->getHeadersCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->getHeaders(I)Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->memoizedIsInitialized:B

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->getParamsCount()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-virtual {p0, v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->getParams(I)Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_6

    iput-byte v1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->memoizedIsInitialized:B

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    iput-byte v2, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->memoizedIsInitialized:B

    move v1, v2

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->newBuilderForType()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->newBuilderForType()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->newBuilder()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;
    .locals 2

    new-instance v0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/xiaomi/hy/dj/pb/HttpTransfer$1;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->toBuilder()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->toBuilder()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->newBuilder(Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

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

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->getSerializedSize()I

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->method_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->headers_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->params_:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v4, :cond_4

    const/4 v0, 0x5

    iget v1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->protocol_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_4
    iget v0, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->byteArrayEntity_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
