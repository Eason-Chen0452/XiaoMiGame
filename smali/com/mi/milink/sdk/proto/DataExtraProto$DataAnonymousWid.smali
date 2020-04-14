.class public final Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWidOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/proto/DataExtraProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataAnonymousWid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;",
            ">;"
        }
    .end annotation
.end field

.field public static final WID_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private wid_:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$1;

    invoke-direct {v0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$1;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;-><init>(Z)V

    sput-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->defaultInstance:Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    invoke-direct {v0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->initFields()V

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

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->initFields()V

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

    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v3, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->wid_:J
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

    iput-object v1, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->makeExtensionsImmutable()V

    throw v0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->makeExtensionsImmutable()V

    return-void

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/milink/sdk/proto/DataExtraProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milink/sdk/proto/DataExtraProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$2500()Z
    .locals 1

    sget-boolean v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;J)J
    .locals 1

    iput-wide p1, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->wid_:J

    return-wide p1
.end method

.method static synthetic access$2802(Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->defaultInstance:Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto;->access$2000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->wid_:J

    return-void
.end method

.method public static newBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;->access$2300()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->newBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->defaultInstance:Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget-wide v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->wid_:J

    invoke-static {v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getWid()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->wid_:J

    return-wide v0
.end method

.method public final hasWid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->bitField0_:I

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

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto;->access$2100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;

    const-class v2, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->memoizedIsInitialized:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->newBuilderForType()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->newBuilderForType()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->newBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;
    .locals 2

    new-instance v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milink/sdk/proto/DataExtraProto$1;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->toBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->toBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->newBuilder(Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid$Builder;

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->getSerializedSize()I

    iget v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-wide v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->wid_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataAnonymousWid;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
