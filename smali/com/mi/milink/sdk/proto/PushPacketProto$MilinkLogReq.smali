.class public final Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/proto/PushPacketProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MilinkLogReq"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    }
.end annotation


# static fields
.field public static final IP_FIELD_NUMBER:I = 0x2

.field public static final LOGLEVEL_FIELD_NUMBER:I = 0x5

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;",
            ">;"
        }
    .end annotation
.end field

.field public static final TIME_FIELD_NUMBER:I = 0x1

.field public static final TYPE_FIELD_NUMBER:I = 0x4

.field public static final URGENTLEVEL_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private ip_:Ljava/lang/Object;

.field private logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private time_:I

.field private type_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private urgentLevel_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$1;

    invoke-direct {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$1;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;-><init>(Z)V

    sput-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->defaultInstance:Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    invoke-direct {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    const/4 v0, 0x0

    move v2, v0

    :cond_0
    :goto_0
    if-nez v2, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_0
    move v2, v3

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->time_:I
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

    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    iput-object v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iget v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->ip_:Ljava/lang/Object;
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
    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->urgentLevel_:I

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->type_:I

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v5, 0x10

    if-ne v1, v5, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;->toBuilder()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;

    move-result-object v0

    move-object v1, v0

    :goto_1
    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;)Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel$Builder;->buildPartial()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    :cond_1
    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->makeExtensionsImmutable()V

    return-void

    :cond_3
    move-object v1, v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/milink/sdk/proto/PushPacketProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milink/sdk/proto/PushPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$2900()Z
    .locals 1

    sget-boolean v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->time_:I

    return p1
.end method

.method static synthetic access$3200(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->ip_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->ip_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->urgentLevel_:I

    return p1
.end method

.method static synthetic access$3402(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->type_:I

    return p1
.end method

.method static synthetic access$3502(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;)Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->defaultInstance:Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto;->access$2400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->time_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->ip_:Ljava/lang/Object;

    iput v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->urgentLevel_:I

    iput v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->type_:I

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;->getDefaultInstance()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    return-void
.end method

.method public static newBuilder()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->access$2700()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->newBuilder()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->defaultInstance:Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->ip_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->ip_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getIpBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->ip_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->ip_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getLogLevel()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    return-object v0
.end method

.method public final getLogLevelOrBuilder()Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevelOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->time_:I

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getIpBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-ne v1, v4, :cond_3

    const/4 v1, 0x3

    iget v2, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->urgentLevel_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->type_:I

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final getTime()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->time_:I

    return v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->type_:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getUrgentLevel()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->urgentLevel_:I

    return v0
.end method

.method public final hasIp()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

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

.method public final hasLogLevel()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

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

.method public final hasTime()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasType()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

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

.method public final hasUrgentLevel()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

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

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto;->access$2500()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;

    const-class v2, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->memoizedIsInitialized:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->newBuilderForType()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->newBuilderForType()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->newBuilder()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 2

    new-instance v0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milink/sdk/proto/PushPacketProto$1;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->toBuilder()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->toBuilder()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->newBuilder(Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;)Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq$Builder;

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

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getSerializedSize()I

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->time_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getIpBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    const/4 v0, 0x3

    iget v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->urgentLevel_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_2
    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->type_:I

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_3
    iget v0, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->logLevel_:Lcom/mi/milink/sdk/proto/PushPacketProto$PushLogLevel;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_4
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/PushPacketProto$MilinkLogReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
