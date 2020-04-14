.class public final Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;",
        ">;",
        "Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRspOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private gameCenterUrl_:Ljava/lang/Object;

.field private levelBigIcon_:Ljava/lang/Object;

.field private levelExp_:I

.field private levelNickIcon_:Ljava/lang/Object;

.field private levelSmallIconForOff_:Ljava/lang/Object;

.field private levelSmallIconForOn_:Ljava/lang/Object;

.field private level_:I

.field private nextLevelExp_:I

.field private nextLevel_:I

.field private nextlevelBigIcon_:Ljava/lang/Object;

.field private nextlevelNickIcon_:Ljava/lang/Object;

.field private nextlevelSmallIconForOff_:Ljava/lang/Object;

.field private nextlevelSmallIconForOn_:Ljava/lang/Object;

.field private note_:Ljava/lang/Object;

.field private retCode_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelBigIcon_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOn_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOff_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelNickIcon_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelBigIcon_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOn_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOff_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelNickIcon_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->gameCenterUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->note_:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelBigIcon_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOn_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOff_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelNickIcon_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelBigIcon_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOn_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOff_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelNickIcon_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->gameCenterUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->note_:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/av;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$1400()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$1600()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;
    .locals 2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/av;)V

    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_e

    :goto_0
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->retCode_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$1802(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->level_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$1902(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelExp_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2002(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;I)I

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelBigIcon_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2102(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOn_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2202(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOff_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2302(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelNickIcon_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2402(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextLevel_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2502(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;I)I

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextLevelExp_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2602(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;I)I

    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelBigIcon_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2702(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    or-int/lit16 v0, v0, 0x400

    :cond_9
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOn_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2802(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    or-int/lit16 v0, v0, 0x800

    :cond_a
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOff_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2902(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    or-int/lit16 v0, v0, 0x1000

    :cond_b
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelNickIcon_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$3002(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v1, v4, :cond_c

    or-int/lit16 v0, v0, 0x2000

    :cond_c
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->gameCenterUrl_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$3102(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x4000

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_d

    or-int/lit16 v0, v0, 0x4000

    :cond_d
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->note_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$3202(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$3302(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;I)I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onBuilt()V

    return-object v2

    :cond_e
    move v0, v1

    goto/16 :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->retCode_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->level_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelExp_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelBigIcon_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOn_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOff_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelNickIcon_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextLevel_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextLevelExp_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelBigIcon_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOn_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOff_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelNickIcon_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->gameCenterUrl_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->note_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearGameCenterUrl()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getGameCenterUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->gameCenterUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLevel()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->level_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLevelBigIcon()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getLevelBigIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelBigIcon_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLevelExp()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelExp_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLevelNickIcon()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getLevelNickIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelNickIcon_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLevelSmallIconForOff()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getLevelSmallIconForOff()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOff_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLevelSmallIconForOn()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getLevelSmallIconForOn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOn_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNextLevel()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextLevel_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNextLevelExp()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextLevelExp_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNextlevelBigIcon()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getNextlevelBigIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelBigIcon_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNextlevelNickIcon()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getNextlevelNickIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelNickIcon_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNextlevelSmallIconForOff()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getNextlevelSmallIconForOff()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOff_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNextlevelSmallIconForOn()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getNextlevelSmallIconForOn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOn_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNote()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getNote()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->note_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearRetCode()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->retCode_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

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

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->access$1100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getGameCenterUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->gameCenterUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->gameCenterUrl_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getGameCenterUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->gameCenterUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->gameCenterUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getLevel()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->level_:I

    return v0
.end method

.method public final getLevelBigIcon()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelBigIcon_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelBigIcon_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getLevelBigIconBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelBigIcon_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelBigIcon_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getLevelExp()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelExp_:I

    return v0
.end method

.method public final getLevelNickIcon()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelNickIcon_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelNickIcon_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getLevelNickIconBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelNickIcon_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelNickIcon_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getLevelSmallIconForOff()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOff_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOff_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getLevelSmallIconForOffBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOff_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOff_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getLevelSmallIconForOn()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOn_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOn_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getLevelSmallIconForOnBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOn_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOn_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getNextLevel()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextLevel_:I

    return v0
.end method

.method public final getNextLevelExp()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextLevelExp_:I

    return v0
.end method

.method public final getNextlevelBigIcon()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelBigIcon_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelBigIcon_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getNextlevelBigIconBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelBigIcon_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelBigIcon_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getNextlevelNickIcon()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelNickIcon_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelNickIcon_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getNextlevelNickIconBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelNickIcon_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelNickIcon_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getNextlevelSmallIconForOff()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOff_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOff_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getNextlevelSmallIconForOffBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOff_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOff_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getNextlevelSmallIconForOn()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOn_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOn_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getNextlevelSmallIconForOnBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOn_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOn_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getNote()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->note_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->note_:Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->note_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->note_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getRetCode()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->retCode_:I

    return v0
.end method

.method public final hasGameCenterUrl()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLevel()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

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

.method public final hasLevelBigIcon()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

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

.method public final hasLevelExp()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

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

.method public final hasLevelNickIcon()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

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

.method public final hasLevelSmallIconForOff()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

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

.method public final hasLevelSmallIconForOn()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

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

.method public final hasNextLevel()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

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

.method public final hasNextLevelExp()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

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

.method public final hasNextlevelBigIcon()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasNextlevelNickIcon()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasNextlevelSmallIconForOff()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasNextlevelSmallIconForOn()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

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

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

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

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos;->access$1200()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->hasRetCode()Z

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;
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

    invoke-virtual {p0, v2}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    instance-of v0, p1, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->hasRetCode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getRetCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->setRetCode(I)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    :cond_1
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->hasLevel()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->setLevel(I)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    :cond_2
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->hasLevelExp()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getLevelExp()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->setLevelExp(I)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    :cond_3
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->hasLevelBigIcon()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2100(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelBigIcon_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->hasLevelSmallIconForOn()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2200(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOn_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->hasLevelSmallIconForOff()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2300(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOff_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->hasLevelNickIcon()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2400(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelNickIcon_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    :cond_7
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->hasNextLevel()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getNextLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->setNextLevel(I)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    :cond_8
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->hasNextLevelExp()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getNextLevelExp()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->setNextLevelExp(I)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;

    :cond_9
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->hasNextlevelBigIcon()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2700(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelBigIcon_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    :cond_a
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->hasNextlevelSmallIconForOn()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2800(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOn_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    :cond_b
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->hasNextlevelSmallIconForOff()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$2900(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOff_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    :cond_c
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->hasNextlevelNickIcon()Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$3000(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelNickIcon_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    :cond_d
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->hasGameCenterUrl()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$3100(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->gameCenterUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    :cond_e
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->hasNote()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->access$3200(Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->note_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    :cond_f
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public final setGameCenterUrl(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->gameCenterUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setGameCenterUrlBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->gameCenterUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLevel(I)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->level_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLevelBigIcon(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelBigIcon_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLevelBigIconBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelBigIcon_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLevelExp(I)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelExp_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLevelNickIcon(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelNickIcon_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLevelNickIconBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelNickIcon_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLevelSmallIconForOff(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOff_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLevelSmallIconForOffBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOff_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLevelSmallIconForOn(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOn_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLevelSmallIconForOnBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->levelSmallIconForOn_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNextLevel(I)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextLevel_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNextLevelExp(I)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextLevelExp_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNextlevelBigIcon(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelBigIcon_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNextlevelBigIconBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelBigIcon_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNextlevelNickIcon(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelNickIcon_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNextlevelNickIconBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelNickIcon_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNextlevelSmallIconForOff(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOff_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNextlevelSmallIconForOffBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOff_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNextlevelSmallIconForOn(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOn_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNextlevelSmallIconForOnBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->nextlevelSmallIconForOn_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNote(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->note_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNoteBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->note_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRetCode(I)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->retCode_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp$Builder;->onChanged()V

    return-object p0
.end method
