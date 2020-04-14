.class public final Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/LoginProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetAppAccountsRsp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;
    }
.end annotation


# static fields
.field public static final ACCOUNTS_FIELD_NUMBER:I = 0x3

.field public static final DEFAULTACCOUNTID_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETCODE_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

.field private static final serialVersionUID:J


# instance fields
.field private accounts_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private defaultAccountId_:J

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private retCode_:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/u;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/u;-><init>()V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;-><init>(Z)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v8, 0x4

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->memoizedSerializedSize:I

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->initFields()V

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

    invoke-virtual {p0, p1, v4, p2, v2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_0
    move v1, v3

    goto :goto_0

    :sswitch_1
    iget v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->retCode_:I
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

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v8, :cond_1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    :cond_1
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->makeExtensionsImmutable()V

    throw v1

    :sswitch_2
    :try_start_2
    iget v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->defaultAccountId_:J
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    new-instance v2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :sswitch_3
    and-int/lit8 v2, v0, 0x4

    if-eq v2, v8, :cond_2

    :try_start_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    or-int/lit8 v0, v0, 0x4

    :cond_2
    iget-object v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    sget-object v5, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, 0x4

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    :cond_4
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/xiaomi/gamecenter/milink/msg/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$13100()Z
    .locals 1

    sget-boolean v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$13302(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->retCode_:I

    return p1
.end method

.method static synthetic access$13402(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;J)J
    .locals 1

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->defaultAccountId_:J

    return-wide p1
.end method

.method static synthetic access$13500(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13502(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$13602(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->bitField0_:I

    return p1
.end method

.method static synthetic access$13700()Z
    .locals 1

    sget-boolean v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto;->access$12600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->retCode_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->defaultAccountId_:J

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;->access$12900()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    return-object v0
.end method


# virtual methods
.method public final getAccounts(I)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo;

    return-object v0
.end method

.method public final getAccountsCount()I
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getAccountsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    return-object v0
.end method

.method public final getAccountsOrBuilder(I)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVoOrBuilder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVoOrBuilder;

    return-object v0
.end method

.method public final getAccountsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    return-object v0
.end method

.method public final getDefaultAccountId()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->defaultAccountId_:J

    return-wide v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getRetCode()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->retCode_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_3

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->retCode_:I

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_1
    iget v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_1

    iget-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->defaultAccountId_:J

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    move v2, v0

    :goto_2
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v3, 0x3

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v0}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->memoizedSerializedSize:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasDefaultAccountId()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->bitField0_:I

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

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->bitField0_:I

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto;->access$12700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->memoizedIsInitialized:B

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->hasRetCode()Z

    move-result v0

    if-nez v0, :cond_2

    iput-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->memoizedIsInitialized:B

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->hasDefaultAccountId()Z

    move-result v0

    if-nez v0, :cond_3

    iput-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->memoizedIsInitialized:B

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->getAccountsCount()I

    move-result v3

    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->getAccounts(I)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$AppAccountVo;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_4

    iput-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->memoizedIsInitialized:B

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iput-byte v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->memoizedIsInitialized:B

    move v1, v2

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/o;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;
    .locals 1

    invoke-static {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->newBuilder(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp$Builder;

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

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->getSerializedSize()I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->retCode_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->defaultAccountId_:J

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    const/4 v2, 0x3

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->accounts_:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetAppAccountsRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
