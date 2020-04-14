.class public final Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/proto/SystemPacketProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PublicKeyInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;
    }
.end annotation


# static fields
.field public static final KEYID_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLICKEY_FIELD_NUMBER:I = 0x3

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private keyId_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private publicKey_:Lcom/google/protobuf/ByteString;

.field private signature_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$1;

    invoke-direct {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$1;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;-><init>(Z)V

    sput-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->defaultInstance:Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    invoke-direct {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->initFields()V

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

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->initFields()V

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

    invoke-virtual {p0, p1, v2, p2, v3}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v3, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    iput v3, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->keyId_:I
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

    iput-object v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iget v4, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->bitField0_:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->bitField0_:I

    iput-object v3, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->signature_:Ljava/lang/Object;
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
    iget v3, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->publicKey_:Lcom/google/protobuf/ByteString;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->makeExtensionsImmutable()V

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

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/milink/sdk/proto/SystemPacketProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milink/sdk/proto/SystemPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$24200()Z
    .locals 1

    sget-boolean v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$24402(Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->keyId_:I

    return p1
.end method

.method static synthetic access$24500(Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->signature_:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$24502(Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->signature_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$24602(Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->publicKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$24702(Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;I)I
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->defaultInstance:Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto;->access$23700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->keyId_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->signature_:Ljava/lang/Object;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->publicKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;->access$24000()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->newBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->defaultInstance:Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    return-object v0
.end method

.method public final getKeyId()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->keyId_:I

    return v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getPublicKey()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->publicKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->keyId_:I

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->getSignatureBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->publicKey_:Lcom/google/protobuf/ByteString;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->signature_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->signature_:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public final getSignatureBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->signature_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->signature_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasKeyId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasPublicKey()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->bitField0_:I

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

.method public final hasSignature()Z
    .locals 2

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->bitField0_:I

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

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto;->access$23800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    const-class v2, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->memoizedIsInitialized:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->newBuilderForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->newBuilderForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->newBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;
    .locals 2

    new-instance v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milink/sdk/proto/SystemPacketProto$1;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->toBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->toBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->newBuilder(Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo$Builder;

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

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->getSerializedSize()I

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->keyId_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->getSignatureBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1
    iget v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->publicKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
