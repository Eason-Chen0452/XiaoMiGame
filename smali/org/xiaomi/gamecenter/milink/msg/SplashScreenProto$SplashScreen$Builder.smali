.class public final Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;",
        ">;",
        "Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreenOrBuilder;"
    }
.end annotation


# instance fields
.field private actionUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private duration_:I

.field private imageLandscapeUrl_:Ljava/lang/Object;

.field private imagePortraitUrl_:Ljava/lang/Object;

.field private splashid_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->splashid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->actionUrl_:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->splashid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->actionUrl_:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/ar;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->access$500()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;
    .locals 2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/ar;)V

    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_4

    :goto_0
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->splashid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->access$702(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->access$802(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->access$902(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->duration_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->access$1002(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->actionUrl_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->access$1102(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->access$1202(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;I)I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onBuilt()V

    return-object v2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->splashid_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->duration_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->actionUrl_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearActionUrl()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getActionUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->actionUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDuration()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->duration_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearImageLandscapeUrl()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getImageLandscapeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearImagePortraitUrl()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getImagePortraitUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSplashid()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getSplashid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->splashid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

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

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getActionUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->actionUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->actionUrl_:Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->actionUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->actionUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getDuration()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->duration_:I

    return v0
.end method

.method public final getImageLandscapeUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getImagePortraitUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imagePortraitUrl_:Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSplashid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->splashid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->splashid_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getSplashidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->splashid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->splashid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final hasActionUrl()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

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

.method public final hasDuration()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

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

.method public final hasImageLandscapeUrl()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

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

.method public final hasImagePortraitUrl()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

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

.method public final hasSplashid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;
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

    invoke-virtual {p0, v2}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    instance-of v0, p1, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->hasSplashid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->access$700(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->splashid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->hasImagePortraitUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->access$800(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->hasImageLandscapeUrl()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->access$900(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->hasDuration()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->setDuration(I)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    :cond_4
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->hasActionUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->access$1100(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->actionUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public final setActionUrl(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->actionUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    return-object p0
.end method

.method public final setActionUrlBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->actionUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDuration(I)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->duration_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImageLandscapeUrl(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImageLandscapeUrlBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imageLandscapeUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImagePortraitUrl(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImagePortraitUrlBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->imagePortraitUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSplashid(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->splashid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSplashidBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->splashid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->onChanged()V

    return-object p0
.end method
