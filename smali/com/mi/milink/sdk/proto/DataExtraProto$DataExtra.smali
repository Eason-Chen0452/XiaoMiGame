.class public final Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtraOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/proto/DataExtraProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DataExtra"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;
    }
.end annotation


# static fields
.field public static final ENGINECONFIGJSON_FIELD_NUMBER:I = 0x5

.field public static final ENGINERATIO_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private engineConfigJson_:Ljava/lang/Object;

.field private engineratio_:F

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$1;

    invoke-direct {v0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$1;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;-><init>(Z)V

    sput-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->defaultInstance:Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    invoke-direct {v0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->initFields()V

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

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->initFields()V

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

    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v3, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    iput v3, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->engineratio_:F
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

    iput-object v1, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->bitField0_:I

    iput-object v3, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->engineConfigJson_:Ljava/lang/Object;
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

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x2a -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/milink/sdk/proto/DataExtraProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milink/sdk/proto/DataExtraProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;F)F
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->engineratio_:F

    return p1
.end method

.method static synthetic access$800(Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->engineConfigJson_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->engineConfigJson_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$902(Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->defaultInstance:Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->engineratio_:F

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->engineConfigJson_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;->access$300()Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->newBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->defaultInstance:Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    return-object v0
.end method

.method public final getEngineConfigJson()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->engineConfigJson_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->engineConfigJson_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getEngineConfigJsonBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->engineConfigJson_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->engineConfigJson_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getEngineratio()F
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->engineratio_:F

    return v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->engineratio_:F

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->getEngineConfigJsonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasEngineConfigJson()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->bitField0_:I

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

.method public final hasEngineratio()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->bitField0_:I

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

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;

    const-class v2, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->memoizedIsInitialized:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->newBuilderForType()Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->newBuilderForType()Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->newBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;
    .locals 2

    new-instance v0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milink/sdk/proto/DataExtraProto$1;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->toBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->toBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->newBuilder(Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;)Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra$Builder;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->getSerializedSize()I

    iget v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->engineratio_:F

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_0
    iget v0, p0, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->getEngineConfigJsonBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/DataExtraProto$DataExtra;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
