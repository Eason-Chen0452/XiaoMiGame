.class public final Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;",
        ">;",
        "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRspOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private force_:Z

.field private guideLink_:Ljava/lang/Object;

.field private guideWord_:Ljava/lang/Object;

.field private md5_:Ljava/lang/Object;

.field private note_:Ljava/lang/Object;

.field private retCode_:I

.field private serviceDownloadUrl_:Ljava/lang/Object;

.field private serviceVersion_:Ljava/lang/Object;

.field private size_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceDownloadUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->md5_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->note_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideLink_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideWord_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceVersion_:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceDownloadUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->md5_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->note_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideLink_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideWord_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceVersion_:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$25100()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto;->access$24800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$25300()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;
    .locals 2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/o;)V

    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_8

    :goto_0
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->retCode_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$25502(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceDownloadUrl_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$25602(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->md5_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$25702(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-wide v4, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->size_:J

    invoke-static {v2, v4, v5}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$25802(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;J)J

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->note_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$25902(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-boolean v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->force_:Z

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$26002(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;Z)Z

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideLink_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$26102(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideWord_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$26202(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceVersion_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$26302(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$26402(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;I)I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onBuilt()V

    return-object v2

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->retCode_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceDownloadUrl_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->md5_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->size_:J

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->note_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    iput-boolean v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->force_:Z

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideLink_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideWord_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceVersion_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearForce()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->force_:Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearGuideLink()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getGuideLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideLink_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearGuideWord()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getGuideWord()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideWord_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMd5()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->md5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNote()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getNote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->note_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearRetCode()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->retCode_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearServiceDownloadUrl()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getServiceDownloadUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceDownloadUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearServiceVersion()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getServiceVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceVersion_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSize()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->size_:J

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

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

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto;->access$24800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getForce()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->force_:Z

    return v0
.end method

.method public final getGuideLink()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideLink_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideLink_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getGuideLinkBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideLink_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideLink_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getGuideWord()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideWord_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideWord_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getGuideWordBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideWord_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideWord_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getMd5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->md5_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->md5_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getMd5Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->md5_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->md5_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getNote()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->note_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->note_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getNoteBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->note_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->note_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getRetCode()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->retCode_:I

    return v0
.end method

.method public final getServiceDownloadUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceDownloadUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceDownloadUrl_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getServiceDownloadUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceDownloadUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceDownloadUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getServiceVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceVersion_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getServiceVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceVersion_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->size_:J

    return-wide v0
.end method

.method public final hasForce()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasGuideLink()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasGuideWord()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasMd5()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

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

.method public final hasNote()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

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

.method public final hasRetCode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasServiceDownloadUrl()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

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

.method public final hasServiceVersion()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSize()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

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

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto;->access$24900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->hasRetCode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;
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

    invoke-virtual {p0, v2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    instance-of v0, p1, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->hasRetCode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getRetCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->setRetCode(I)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    :cond_1
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->hasServiceDownloadUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$25600(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceDownloadUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->hasMd5()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$25700(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->md5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->setSize(J)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    :cond_4
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->hasNote()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$25900(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->note_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->hasForce()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getForce()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->setForce(Z)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;

    :cond_6
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->hasGuideLink()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$26100(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideLink_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    :cond_7
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->hasGuideWord()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$26200(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideWord_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    :cond_8
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->hasServiceVersion()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->access$26300(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceVersion_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    :cond_9
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public final setForce(Z)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    iput-boolean p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->force_:Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setGuideLink(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideLink_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setGuideLinkBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideLink_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setGuideWord(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideWord_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setGuideWordBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->guideWord_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMd5(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->md5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMd5Bytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->md5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNote(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->note_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNoteBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->note_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRetCode(I)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->retCode_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setServiceDownloadUrl(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceDownloadUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setServiceDownloadUrlBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceDownloadUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setServiceVersion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceVersion_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setServiceVersionBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->serviceVersion_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSize(J)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->bitField0_:I

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->size_:J

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp$Builder;->onChanged()V

    return-object p0
.end method
