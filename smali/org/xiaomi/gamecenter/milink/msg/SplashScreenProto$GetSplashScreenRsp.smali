.class public final Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetSplashScreenRsp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;",
            ">;"
        }
    .end annotation
.end field

.field public static final RETCODE_FIELD_NUMBER:I = 0x1

.field public static final SPLASHSCREEN_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private retCode_:I

.field private splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/at;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/at;-><init>()V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;-><init>(Z)V

    sput-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->initFields()V

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

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->memoizedSerializedSize:I

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->initFields()V

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

    invoke-virtual {p0, p1, v4, p2, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v3

    goto :goto_0

    :sswitch_0
    move v2, v3

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->retCode_:I
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

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->makeExtensionsImmutable()V

    throw v0

    :sswitch_2
    const/4 v0, 0x0

    :try_start_2
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    const/4 v5, 0x2

    if-ne v1, v5, :cond_3

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    move-object v1, v0

    :goto_1
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    :cond_1
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->bitField0_:I
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

    :cond_2
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->makeExtensionsImmutable()V

    return-void

    :cond_3
    move-object v1, v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/xiaomi/gamecenter/milink/msg/ar;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/ar;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->memoizedIsInitialized:B

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$3800()Z
    .locals 1

    sget-boolean v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4002(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->retCode_:I

    return p1
.end method

.method static synthetic access$4102(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;
    .locals 0

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    return-object p1
.end method

.method static synthetic access$4202(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;I)I
    .locals 0

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->access$3300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->retCode_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    return-void
.end method

.method public static newBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->access$3600()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    .locals 1

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->defaultInstance:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getRetCode()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->retCode_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->retCode_:I

    invoke-static {v2, v0}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :cond_1
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->memoizedSerializedSize:I

    goto :goto_0
.end method

.method public final getSplashScreen()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    return-object v0
.end method

.method public final getSplashScreenOrBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreenOrBuilder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final hasRetCode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSplashScreen()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->bitField0_:I

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->access$3400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-byte v2, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->memoizedIsInitialized:B

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->hasRetCode()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->memoizedIsInitialized:B

    move v0, v1

    goto :goto_0

    :cond_2
    iput-byte v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->memoizedIsInitialized:B

    goto :goto_0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 2

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/ar;)V

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->toBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 1

    invoke-static {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->newBuilder(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

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

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->getSerializedSize()I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->retCode_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_1
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
