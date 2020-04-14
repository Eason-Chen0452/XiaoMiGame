.class public final Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfigOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;",
        ">;",
        "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfigOrBuilder;"
    }
.end annotation


# instance fields
.field private actionUrl_:Ljava/lang/Object;

.field private backupActionUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private imageLandscapeUrl_:Ljava/lang/Object;

.field private imagePortraitUrl_:Ljava/lang/Object;

.field private landscapeHeight_:I

.field private landscapeWidth_:I

.field private portraitHeight_:I

.field private portraitWidth_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->actionUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->backupActionUrl_:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->actionUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->backupActionUrl_:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/ah;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2400()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->access$2600()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
    .locals 2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/ah;)V

    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    :goto_0
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->access$2802(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->portraitWidth_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->access$2902(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->portraitHeight_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->access$3002(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->access$3102(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->landscapeWidth_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->access$3202(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->landscapeHeight_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->access$3302(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;I)I

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->actionUrl_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->access$3402(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->backupActionUrl_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->access$3502(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->access$3602(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;I)I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onBuilt()V

    return-object v2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->portraitWidth_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->portraitHeight_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->landscapeWidth_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->landscapeHeight_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->actionUrl_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->backupActionUrl_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearActionUrl()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->actionUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearBackupActionUrl()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getBackupActionUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->backupActionUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearImageLandscapeUrl()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getImageLandscapeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearImagePortraitUrl()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getImagePortraitUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLandscapeHeight()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->landscapeHeight_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLandscapeWidth()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->landscapeWidth_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPortraitHeight()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->portraitHeight_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPortraitWidth()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->portraitWidth_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

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

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getActionUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->actionUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->actionUrl_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getActionUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->actionUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->actionUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getBackupActionUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->backupActionUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->backupActionUrl_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getBackupActionUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->backupActionUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->backupActionUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->access$2100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getImageLandscapeUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getImageLandscapeUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getImagePortraitUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getImagePortraitUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getLandscapeHeight()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->landscapeHeight_:I

    return v0
.end method

.method public final getLandscapeWidth()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->landscapeWidth_:I

    return v0
.end method

.method public final getPortraitHeight()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->portraitHeight_:I

    return v0
.end method

.method public final getPortraitWidth()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->portraitWidth_:I

    return v0
.end method

.method public final hasActionUrl()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

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

.method public final hasBackupActionUrl()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

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

.method public final hasImageLandscapeUrl()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

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

.method public final hasImagePortraitUrl()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLandscapeHeight()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

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

.method public final hasLandscapeWidth()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

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

.method public final hasPortraitHeight()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

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

.method public final hasPortraitWidth()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->access$2200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;
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

    invoke-virtual {p0, v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    instance-of v0, p1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->hasImagePortraitUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->access$2800(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->hasPortraitWidth()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getPortraitWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->setPortraitWidth(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    :cond_2
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->hasPortraitHeight()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getPortraitHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->setPortraitHeight(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    :cond_3
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->hasImageLandscapeUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->access$3100(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->hasLandscapeWidth()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getLandscapeWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->setLandscapeWidth(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    :cond_5
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->hasLandscapeHeight()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getLandscapeHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->setLandscapeHeight(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;

    :cond_6
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->hasActionUrl()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->access$3400(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->actionUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    :cond_7
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->hasBackupActionUrl()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->access$3500(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->backupActionUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    :cond_8
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public final setActionUrl(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->actionUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final setActionUrlBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->actionUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBackupActionUrl(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->backupActionUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final setBackupActionUrlBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->backupActionUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImageLandscapeUrl(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImageLandscapeUrlBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImagePortraitUrl(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImagePortraitUrlBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLandscapeHeight(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->landscapeHeight_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLandscapeWidth(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->landscapeWidth_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPortraitHeight(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->portraitHeight_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPortraitWidth(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->portraitWidth_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$NoticeImageConfig$Builder;->onChanged()V

    return-object p0
.end method
