.class public final Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRspOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;",
        ">;",
        "Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRspOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private errMsg_:Ljava/lang/Object;

.field private hasInnerAvatar_:Z

.field private hasInnerNickname_:Z

.field private hasInnerSex_:Z

.field private headimgurl_:Ljava/lang/Object;

.field private isSetGuide_:Z

.field private loginStatus_:I

.field private nickname_:Ljava/lang/Object;

.field private passToken_:Ljava/lang/Object;

.field private retCode_:I

.field private securityKey_:Ljava/lang/Object;

.field private serviceToken_:Ljava/lang/Object;

.field private sex_:I

.field private uuid_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->serviceToken_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->securityKey_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->passToken_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->nickname_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->headimgurl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->errMsg_:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->serviceToken_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->securityKey_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->passToken_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->nickname_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->headimgurl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->errMsg_:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$5100()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->access$4800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$5300()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;
    .locals 2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/a;)V

    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_d

    :goto_0
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->retCode_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$5502(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-wide v4, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->uuid_:J

    invoke-static {v2, v4, v5}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$5602(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;J)J

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->serviceToken_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$5702(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->securityKey_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$5802(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->passToken_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$5902(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->nickname_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$6002(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->headimgurl_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$6102(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->sex_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$6202(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;I)I

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->loginStatus_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$6302(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;I)I

    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    iget-boolean v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->hasInnerAvatar_:Z

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$6402(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;Z)Z

    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    or-int/lit16 v0, v0, 0x400

    :cond_9
    iget-boolean v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->hasInnerNickname_:Z

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$6502(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;Z)Z

    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    or-int/lit16 v0, v0, 0x800

    :cond_a
    iget-boolean v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->hasInnerSex_:Z

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$6602(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;Z)Z

    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    or-int/lit16 v0, v0, 0x1000

    :cond_b
    iget-boolean v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->isSetGuide_:Z

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$6702(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;Z)Z

    and-int/lit16 v1, v3, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_c

    or-int/lit16 v0, v0, 0x2000

    :cond_c
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->errMsg_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$6802(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$6902(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;I)I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onBuilt()V

    return-object v2

    :cond_d
    move v0, v1

    goto/16 :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->retCode_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->uuid_:J

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->serviceToken_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->securityKey_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->passToken_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->nickname_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->headimgurl_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->sex_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->loginStatus_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-boolean v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->hasInnerAvatar_:Z

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-boolean v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->hasInnerNickname_:Z

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-boolean v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->hasInnerSex_:Z

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-boolean v2, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->isSetGuide_:Z

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->errMsg_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearErrMsg()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->errMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearHasInnerAvatar()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->hasInnerAvatar_:Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearHasInnerNickname()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->hasInnerNickname_:Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearHasInnerSex()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->hasInnerSex_:Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearHeadimgurl()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getHeadimgurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->headimgurl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearIsSetGuide()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->isSetGuide_:Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLoginStatus()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->loginStatus_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNickname()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->nickname_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearPassToken()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getPassToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->passToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearRetCode()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->retCode_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSecurityKey()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getSecurityKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->securityKey_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearServiceToken()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getServiceToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->serviceToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSex()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->sex_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUuid()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->uuid_:J

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

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

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->access$4800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getErrMsg()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->errMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->errMsg_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getErrMsgBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->errMsg_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->errMsg_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getHasInnerAvatar()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->hasInnerAvatar_:Z

    return v0
.end method

.method public final getHasInnerNickname()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->hasInnerNickname_:Z

    return v0
.end method

.method public final getHasInnerSex()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->hasInnerSex_:Z

    return v0
.end method

.method public final getHeadimgurl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->headimgurl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->headimgurl_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getHeadimgurlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->headimgurl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->headimgurl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getIsSetGuide()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->isSetGuide_:Z

    return v0
.end method

.method public final getLoginStatus()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->loginStatus_:I

    return v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->nickname_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->nickname_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getNicknameBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->nickname_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->nickname_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getPassToken()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->passToken_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->passToken_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getPassTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->passToken_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->passToken_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getRetCode()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->retCode_:I

    return v0
.end method

.method public final getSecurityKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->securityKey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->securityKey_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getSecurityKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->securityKey_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->securityKey_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getServiceToken()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->serviceToken_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->serviceToken_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getServiceTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->serviceToken_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->serviceToken_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSex()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->sex_:I

    return v0
.end method

.method public final getUuid()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->uuid_:J

    return-wide v0
.end method

.method public final hasErrMsg()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

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

.method public final hasHasInnerAvatar()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

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

.method public final hasHasInnerNickname()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

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

.method public final hasHasInnerSex()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

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

.method public final hasHeadimgurl()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

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

.method public final hasIsSetGuide()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

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

.method public final hasLoginStatus()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

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

.method public final hasNickname()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

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

.method public final hasPassToken()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

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

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSecurityKey()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

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

.method public final hasServiceToken()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

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

.method public final hasSex()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

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

.method public final hasUuid()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->access$4900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->hasRetCode()Z

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;
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

    invoke-virtual {p0, v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    instance-of v0, p1, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->hasRetCode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getRetCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->setRetCode(I)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    :cond_1
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->hasUuid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getUuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->setUuid(J)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    :cond_2
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->hasServiceToken()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$5700(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->serviceToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->hasSecurityKey()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$5800(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->securityKey_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->hasPassToken()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$5900(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->passToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->hasNickname()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$6000(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->nickname_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->hasHeadimgurl()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$6100(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->headimgurl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    :cond_7
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->hasSex()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getSex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->setSex(I)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    :cond_8
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->hasLoginStatus()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getLoginStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->setLoginStatus(I)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    :cond_9
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->hasHasInnerAvatar()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getHasInnerAvatar()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->setHasInnerAvatar(Z)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    :cond_a
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->hasHasInnerNickname()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getHasInnerNickname()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->setHasInnerNickname(Z)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    :cond_b
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->hasHasInnerSex()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getHasInnerSex()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->setHasInnerSex(Z)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    :cond_c
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->hasIsSetGuide()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getIsSetGuide()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->setIsSetGuide(Z)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;

    :cond_d
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->hasErrMsg()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->access$6800(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->errMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    :cond_e
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public final setErrMsg(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->errMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setErrMsgBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->errMsg_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setHasInnerAvatar(Z)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-boolean p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->hasInnerAvatar_:Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setHasInnerNickname(Z)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-boolean p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->hasInnerNickname_:Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setHasInnerSex(Z)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-boolean p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->hasInnerSex_:Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setHeadimgurl(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->headimgurl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setHeadimgurlBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->headimgurl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIsSetGuide(Z)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-boolean p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->isSetGuide_:Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLoginStatus(I)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->loginStatus_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNickname(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->nickname_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNicknameBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->nickname_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPassToken(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->passToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setPassTokenBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->passToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRetCode(I)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->retCode_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSecurityKey(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->securityKey_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSecurityKeyBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->securityKey_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setServiceToken(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->serviceToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setServiceTokenBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->serviceToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSex(I)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->sex_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUuid(J)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->bitField0_:I

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->uuid_:J

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$MiSsoLoginRsp$Builder;->onChanged()V

    return-object p0
.end method
