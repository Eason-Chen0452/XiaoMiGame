.class public final Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;",
        ">;",
        "Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReqOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private channel_:Ljava/lang/Object;

.field private devAppId_:J

.field private deviceNo_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->deviceNo_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->channel_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->deviceNo_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->channel_:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/xiaomi/hy/dj/pb/AnonymousLogin$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 1

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->create()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 1

    new-instance v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    invoke-direct {v0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->access$500()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->build()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->build()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->buildPartial()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->buildPartial()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->buildPartial()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/xiaomi/hy/dj/pb/AnonymousLogin$1;)V

    iget v3, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget-wide v4, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->devAppId_:J

    invoke-static {v2, v4, v5}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->access$702(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->deviceNo_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->access$802(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->channel_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->access$902(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->access$1002(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;I)I

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->onBuilt()V

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->clear()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->clear()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->clear()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->clear()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->devAppId_:J

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->deviceNo_:Ljava/lang/Object;

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->channel_:Ljava/lang/Object;

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearChannel()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 1

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getDefaultInstance()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->channel_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDevAppId()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 2

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->devAppId_:J

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDeviceNo()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 1

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getDefaultInstance()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getDeviceNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->deviceNo_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->clone()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->clone()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->clone()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->clone()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->clone()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 2

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->create()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->buildPartial()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->mergeFrom(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

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

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->clone()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getChannel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->channel_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->channel_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getChannelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->channel_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->channel_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->getDefaultInstanceForType()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->getDefaultInstanceForType()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
    .locals 1

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getDefaultInstance()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getDevAppId()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->devAppId_:J

    return-wide v0
.end method

.method public final getDeviceNo()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->deviceNo_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->deviceNo_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getDeviceNoBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->deviceNo_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->deviceNo_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final hasChannel()Z
    .locals 2

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

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

    iget v1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

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

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

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
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->hasDevAppId()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->hasDeviceNo()Z

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

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->mergeFrom(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;
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

    invoke-virtual {p0, v2}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->mergeFrom(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 1

    instance-of v0, p1, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    invoke-virtual {p0, p1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->mergeFrom(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 2

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getDefaultInstance()Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->hasDevAppId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getDevAppId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->setDevAppId(J)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->hasDeviceNo()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->access$800(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->deviceNo_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->hasChannel()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    invoke-static {p1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->access$900(Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->channel_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public final setChannel(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->channel_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setChannelBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->channel_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDevAppId(J)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 1

    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    iput-wide p1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->devAppId_:J

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeviceNo(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->deviceNo_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDeviceNoBytes(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->bitField0_:I

    iput-object p1, p0, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->deviceNo_:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/pb/AnonymousLogin$AnonymousLoginReq$Builder;->onChanged()V

    return-object p0
.end method
