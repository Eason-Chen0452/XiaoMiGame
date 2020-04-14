.class public final Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReqOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;",
        ">;",
        "Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReqOrBuilder;"
    }
.end annotation


# instance fields
.field private accessToken_:Ljava/lang/Object;

.field private accountType_:I

.field private appid_:I

.field private bitField0_:I

.field private code_:Ljava/lang/Object;

.field private expiresIn_:I

.field private isSaveSt_:Z

.field private openid_:Ljava/lang/Object;

.field private refreshToken_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->code_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->openid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accessToken_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->refreshToken_:Ljava/lang/Object;

    const/16 v0, 0x4e22

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->appid_:I

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->code_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->openid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accessToken_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->refreshToken_:Ljava/lang/Object;

    const/16 v0, 0x4e22

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->appid_:I

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->access$500()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;
    .locals 2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/a;)V

    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    :goto_0
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accountType_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->access$702(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->code_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->access$802(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->openid_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->access$902(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accessToken_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->access$1002(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->expiresIn_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->access$1102(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x20

    :cond_4
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->refreshToken_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->access$1202(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x40

    :cond_5
    iget-boolean v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->isSaveSt_:Z

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->access$1302(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;Z)Z

    and-int/lit16 v1, v3, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_6

    or-int/lit16 v0, v0, 0x80

    :cond_6
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->appid_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->access$1402(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;I)I

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->access$1502(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;I)I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onBuilt()V

    return-object v2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accountType_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->code_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->openid_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accessToken_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->expiresIn_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->refreshToken_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    iput-boolean v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->isSaveSt_:Z

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    const/16 v0, 0x4e22

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->appid_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearAccessToken()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accessToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearAccountType()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accountType_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearAppid()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    const/16 v0, 0x4e22

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->appid_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCode()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->code_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExpiresIn()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->expiresIn_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearIsSaveSt()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->isSaveSt_:Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearOpenid()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->getOpenid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->openid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearRefreshToken()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->getRefreshToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->refreshToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

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

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accessToken_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accessToken_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getAccessTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accessToken_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accessToken_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getAccountType()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accountType_:I

    return v0
.end method

.method public final getAppid()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->appid_:I

    return v0
.end method

.method public final getCode()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->code_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->code_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->code_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->code_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getExpiresIn()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->expiresIn_:I

    return v0
.end method

.method public final getIsSaveSt()Z
    .locals 1

    iget-boolean v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->isSaveSt_:Z

    return v0
.end method

.method public final getOpenid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->openid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->openid_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getOpenidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->openid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->openid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getRefreshToken()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->refreshToken_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->refreshToken_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getRefreshTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->refreshToken_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->refreshToken_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final hasAccessToken()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

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

.method public final hasAccountType()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasAppid()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

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

.method public final hasCode()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

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

.method public final hasExpiresIn()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

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

.method public final hasIsSaveSt()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

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

.method public final hasOpenid()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

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

.method public final hasRefreshToken()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

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

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->hasAccountType()Z

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;
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

    invoke-virtual {p0, v2}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    instance-of v0, p1, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->hasAccountType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->getAccountType()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->setAccountType(I)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    :cond_1
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->access$800(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->code_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->hasOpenid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->access$900(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->openid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->hasAccessToken()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->access$1000(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accessToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->hasExpiresIn()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->getExpiresIn()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->setExpiresIn(I)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    :cond_5
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->hasRefreshToken()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->access$1200(Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->refreshToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->hasIsSaveSt()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->getIsSaveSt()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->setIsSaveSt(Z)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    :cond_7
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->hasAppid()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->getAppid()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->setAppid(I)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;

    :cond_8
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public final setAccessToken(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accessToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAccessTokenBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accessToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAccountType(I)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->accountType_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAppid(I)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->appid_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCode(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->code_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCodeBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->code_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExpiresIn(I)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->expiresIn_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setIsSaveSt(Z)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    iput-boolean p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->isSaveSt_:Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOpenid(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->openid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOpenidBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->openid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRefreshToken(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->refreshToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRefreshTokenBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->refreshToken_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/AccountProto$LoginReq$Builder;->onChanged()V

    return-object p0
.end method
