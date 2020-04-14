.class public final Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;",
        ">;",
        "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRspOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private gameConfig_:I

.field private loginType_:Lcom/google/protobuf/LazyStringList;

.field private payType_:Lcom/google/protobuf/LazyStringList;

.field private retCode_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$21200()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;-><init>()V

    return-object v0
.end method

.method private ensureLoginTypeIsMutable()V
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensurePayTypeIsMutable()V
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/google/protobuf/LazyStringArrayList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto;->access$20900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->access$21400()Z

    return-void
.end method


# virtual methods
.method public final addAllLoginType(Ljava/lang/Iterable;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->ensureLoginTypeIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final addAllPayType(Ljava/lang/Iterable;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->ensurePayTypeIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final addLoginType(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->ensureLoginTypeIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final addLoginTypeBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->ensureLoginTypeIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final addPayType(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->ensurePayTypeIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final addPayTypeBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->ensurePayTypeIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    .locals 2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/o;)V

    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_3

    :goto_0
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->retCode_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->access$21602(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->gameConfig_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->access$21702(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;I)I

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    :cond_1
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->access$21802(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    :cond_2
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->access$21902(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->access$22002(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;I)I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onBuilt()V

    return-object v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->retCode_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->gameConfig_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearGameConfig()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->gameConfig_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLoginType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPayType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    sget-object v0, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearRetCode()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->retCode_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto;->access$20900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getGameConfig()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->gameConfig_:I

    return v0
.end method

.method public final getLoginType(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getLoginTypeBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final getLoginTypeCount()I
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getLoginTypeList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getPayType(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getPayTypeBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public final getPayTypeCount()I
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getPayTypeList()Lcom/google/protobuf/ProtocolStringList;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->getUnmodifiableView()Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public final getRetCode()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->retCode_:I

    return v0
.end method

.method public final hasGameConfig()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

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

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

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
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->hasRetCode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->hasGameConfig()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    instance-of v0, p1, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->hasRetCode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->getRetCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->setRetCode(I)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    :cond_1
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->hasGameConfig()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->getGameConfig()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->setGameConfig(I)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;

    :cond_2
    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->access$21800(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->access$21800(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    :goto_1
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onChanged()V

    :cond_3
    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->access$21900(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->access$21900(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lcom/google/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    :goto_2
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->ensureLoginTypeIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->access$21800(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->ensurePayTypeIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;->access$21900(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp;)Lcom/google/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public final setGameConfig(I)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->gameConfig_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLoginType(ILjava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->ensureLoginTypeIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->loginType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPayType(ILjava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->ensurePayTypeIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->payType_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRetCode(I)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->retCode_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$GetSdkConfigRsp$Builder;->onChanged()V

    return-object p0
.end method
