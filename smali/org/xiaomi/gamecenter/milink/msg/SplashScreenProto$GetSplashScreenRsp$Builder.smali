.class public final Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;",
        ">;",
        "Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRspOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private retCode_:I

.field private splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;",
            "Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;",
            "Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreenOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/ar;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$3600()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->access$3300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getSplashScreenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;",
            "Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;",
            "Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreenOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->getSplashScreen()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->access$3800()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->getSplashScreenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    .locals 2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/ar;)V

    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->retCode_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->access$4002(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x2

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->access$4102(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    :goto_2
    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->access$4202(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;I)I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->onBuilt()V

    return-object v2

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->access$4102(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    goto :goto_2

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 1

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->retCode_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    :goto_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final clearRetCode()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->retCode_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSplashScreen()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

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

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto;->access$3300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getRetCode()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->retCode_:I

    return v0
.end method

.method public final getSplashScreen()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    goto :goto_0
.end method

.method public final getSplashScreenBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->onChanged()V

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->getSplashScreenFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    return-object v0
.end method

.method public final getSplashScreenOrBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreenOrBuilder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreenOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    goto :goto_0
.end method

.method public final hasRetCode()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

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

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

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
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->hasRetCode()Z

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;
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

    invoke-virtual {p0, v2}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 1

    instance-of v0, p1, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->hasRetCode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->getRetCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->setRetCode(I)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    :cond_1
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->hasSplashScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->getSplashScreen()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->mergeSplashScreen(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;

    :cond_2
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public final mergeSplashScreen(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->newBuilder(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    :goto_0
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public final setRetCode(I)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->retCode_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSplashScreen(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final setSplashScreen(Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreen_:Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp$Builder;->splashScreenBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method
