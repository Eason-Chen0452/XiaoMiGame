.class public final Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;",
        ">;",
        "Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReqOrBuilder;"
    }
.end annotation


# instance fields
.field private appType_:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

.field private bitField0_:I

.field private fuid_:J

.field private token_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->token_:Ljava/lang/Object;

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->SDK:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->appType_:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->token_:Ljava/lang/Object;

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->SDK:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->appType_:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/av;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
    .locals 1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->access$500()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;
    .locals 2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/av;)V

    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget-wide v4, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->fuid_:J

    invoke-static {v2, v4, v5}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->access$702(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->token_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->access$802(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->appType_:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->access$902(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->access$1002(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;I)I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->onBuilt()V

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
    .locals 2

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->fuid_:J

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->token_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->SDK:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->appType_:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearAppType()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;->SDK:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->appType_:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearFuid()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->fuid_:J

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearToken()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->token_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

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

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAppType()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->appType_:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getFuid()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->fuid_:J

    return-wide v0
.end method

.method public final getToken()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->token_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->token_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->token_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->token_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final hasAppType()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

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

.method public final hasFuid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasToken()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->hasFuid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->hasToken()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->hasAppType()Z

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;
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

    invoke-virtual {p0, v2}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
    .locals 1

    instance-of v0, p1, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->hasFuid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->getFuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->setFuid(J)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    :cond_1
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->hasToken()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->access$800(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->token_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->hasAppType()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->getAppType()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->setAppType(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;

    :cond_3
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public final setAppType(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->appType_:Lorg/xiaomi/gamecenter/milink/msg/VipProtos$AppType;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFuid(J)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->fuid_:J

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setToken(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->token_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTokenBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->token_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoReq$Builder;->onChanged()V

    return-object p0
.end method
