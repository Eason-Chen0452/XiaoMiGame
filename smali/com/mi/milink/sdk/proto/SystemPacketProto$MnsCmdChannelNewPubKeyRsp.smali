.class public final Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/proto/SystemPacketProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MnsCmdChannelNewPubKeyRsp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBINFO_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private pubInfo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$1;

    invoke-direct {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$1;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;-><init>(Z)V

    sput-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->defaultInstance:Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    invoke-direct {v0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    move v1, v2

    move v0, v2

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_0
    move v1, v3

    goto :goto_0

    :sswitch_1
    and-int/lit8 v2, v0, 0x1

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    or-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v2, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    sget-object v5, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    :cond_2
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->makeExtensionsImmutable()V

    throw v1

    :cond_3
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    :cond_4
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->makeExtensionsImmutable()V

    return-void

    :catch_1
    move-exception v1

    :try_start_2
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/mi/milink/sdk/proto/SystemPacketProto$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/mi/milink/sdk/proto/SystemPacketProto$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->memoizedIsInitialized:B

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$25300()Z
    .locals 1

    sget-boolean v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$25500(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$25502(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$25600()Z
    .locals 1

    sget-boolean v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->defaultInstance:Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto;->access$24800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->access$25100()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->newBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;->mergeFrom(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->defaultInstance:Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getPubInfo(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;

    return-object v0
.end method

.method public final getPubInfoCount()I
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getPubInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    return-object v0
.end method

.method public final getPubInfoOrBuilder(I)Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfoOrBuilder;

    return-object v0
.end method

.method public final getPubInfoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mi/milink/sdk/proto/SystemPacketProto$PublicKeyInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v1, v0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto;->access$24900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;

    const-class v2, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->memoizedIsInitialized:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->newBuilderForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->newBuilderForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->newBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 2

    new-instance v0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/mi/milink/sdk/proto/SystemPacketProto$1;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->toBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->toBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;
    .locals 1

    invoke-static {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->newBuilder(Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;)Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp$Builder;

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

    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->getSerializedSize()I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->pubInfo_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/proto/SystemPacketProto$MnsCmdChannelNewPubKeyRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
