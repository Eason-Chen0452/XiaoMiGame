.class public final Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;",
        ">;",
        "Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReqOrBuilder;"
    }
.end annotation


# instance fields
.field private autoLogin_:Z

.field private avatarUrl_:Ljava/lang/Object;

.field private bitField0_:I

.field private currentChannel_:Ljava/lang/Object;

.field private firstChannel_:Ljava/lang/Object;

.field private fuid_:J

.field private imeiMd5_:Ljava/lang/Object;

.field private imei_:Ljava/lang/Object;

.field private nickname_:Ljava/lang/Object;

.field private sex_:I

.field private toke_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->toke_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->nickname_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imei_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->avatarUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->currentChannel_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imeiMd5_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->firstChannel_:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->toke_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->nickname_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imei_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->avatarUrl_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->currentChannel_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imeiMd5_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->firstChannel_:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$17000()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto;->access$16700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$17200()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;
    .locals 2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/o;)V

    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_9

    :goto_0
    iget-wide v4, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->fuid_:J

    invoke-static {v2, v4, v5}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$17402(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->toke_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$17502(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->nickname_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$17602(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->sex_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$17702(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imei_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$17802(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->avatarUrl_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$17902(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-boolean v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->autoLogin_:Z

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$18002(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;Z)Z

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->currentChannel_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$18102(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit16 v0, v0, 0x100

    :cond_7
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imeiMd5_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$18202(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->firstChannel_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$18302(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$18402(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;I)I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onBuilt()V

    return-object v2

    :cond_9
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->fuid_:J

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->toke_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->nickname_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->sex_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imei_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->avatarUrl_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-boolean v2, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->autoLogin_:Z

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->currentChannel_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imeiMd5_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->firstChannel_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearAutoLogin()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->autoLogin_:Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearAvatarUrl()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->avatarUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCurrentChannel()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getCurrentChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->currentChannel_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearFirstChannel()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getFirstChannel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->firstChannel_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearFuid()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->fuid_:J

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearImei()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getImei()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imei_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearImeiMd5()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getImeiMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imeiMd5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNickname()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getNickname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->nickname_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSex()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->sex_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearToke()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getToke()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->toke_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

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

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAutoLogin()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->autoLogin_:Z

    return v0
.end method

.method public final getAvatarUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->avatarUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->avatarUrl_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getAvatarUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->avatarUrl_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->avatarUrl_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getCurrentChannel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->currentChannel_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->currentChannel_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getCurrentChannelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->currentChannel_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->currentChannel_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto;->access$16700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getFirstChannel()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->firstChannel_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->firstChannel_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getFirstChannelBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->firstChannel_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->firstChannel_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getFuid()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->fuid_:J

    return-wide v0
.end method

.method public final getImei()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imei_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imei_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getImeiBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imei_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imei_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getImeiMd5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imeiMd5_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imeiMd5_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getImeiMd5Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imeiMd5_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imeiMd5_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->nickname_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->nickname_:Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->nickname_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->nickname_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSex()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->sex_:I

    return v0
.end method

.method public final getToke()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->toke_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->toke_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getTokeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->toke_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->toke_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final hasAutoLogin()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

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

.method public final hasAvatarUrl()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

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

.method public final hasCurrentChannel()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

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

.method public final hasFirstChannel()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

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

.method public final hasFuid()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasImei()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

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

.method public final hasImeiMd5()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

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

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

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

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

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

.method public final hasToke()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto;->access$16800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->hasFuid()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->hasToke()Z

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;
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

    invoke-virtual {p0, v2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    instance-of v0, p1, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->hasFuid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getFuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->setFuid(J)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    :cond_1
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->hasToke()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$17500(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->toke_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->hasNickname()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$17600(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->nickname_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->hasSex()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getSex()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->setSex(I)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    :cond_4
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->hasImei()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$17800(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imei_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->hasAvatarUrl()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$17900(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->avatarUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->hasAutoLogin()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getAutoLogin()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->setAutoLogin(Z)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;

    :cond_7
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->hasCurrentChannel()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$18100(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->currentChannel_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    :cond_8
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->hasImeiMd5()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$18200(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imeiMd5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    :cond_9
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->hasFirstChannel()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->access$18300(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->firstChannel_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    :cond_a
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public final setAutoLogin(Z)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-boolean p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->autoLogin_:Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAvatarUrl(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->avatarUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAvatarUrlBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->avatarUrl_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCurrentChannel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->currentChannel_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCurrentChannelBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->currentChannel_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFirstChannel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->firstChannel_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFirstChannelBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->firstChannel_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFuid(J)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->fuid_:J

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImei(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imei_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImeiBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imei_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImeiMd5(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imeiMd5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImeiMd5Bytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->imeiMd5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNickname(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->nickname_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNicknameBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->nickname_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSex(I)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->sex_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setToke(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->toke_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTokeBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->toke_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$SetUserInfoToGameCenterReq$Builder;->onChanged()V

    return-object p0
.end method
