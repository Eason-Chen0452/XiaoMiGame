.class public final Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;",
        ">;",
        "Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private android_:Ljava/lang/Object;

.field private bitField0_:I

.field private carrier_:Ljava/lang/Object;

.field private cid_:Ljava/lang/Object;

.field private clientVersion_:Ljava/lang/Object;

.field private devAppId_:J

.field private extra_:Ljava/lang/Object;

.field private fuid_:J

.field private imeiMd5_:Ljava/lang/Object;

.field private imeiSha1_:Ljava/lang/Object;

.field private imeiSha2_:Ljava/lang/Object;

.field private lang_:Ljava/lang/Object;

.field private localTime_:Ljava/lang/Object;

.field private macMd5_:Ljava/lang/Object;

.field private network_:Ljava/lang/Object;

.field private os_:Ljava/lang/Object;

.field private protectCid_:Ljava/lang/Object;

.field private region_:Ljava/lang/Object;

.field private sdkJarVersion_:Ljava/lang/Object;

.field private sdkServiceVersion_:Ljava/lang/Object;

.field private sdkType_:I

.field private serverTime_:Ljava/lang/Object;

.field private sessionId_:Ljava/lang/Object;

.field private timezone_:Ljava/lang/Object;

.field private ua_:Ljava/lang/Object;

.field private unionId_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiMd5_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha1_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha2_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->macMd5_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->ua_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->network_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->android_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->os_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->region_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->lang_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->carrier_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->timezone_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clientVersion_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->serverTime_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->localTime_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->cid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkJarVersion_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkServiceVersion_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sessionId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->unionId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->extra_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->protectCid_:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiMd5_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha1_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha2_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->macMd5_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->ua_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->network_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->android_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->os_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->region_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->lang_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->carrier_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->timezone_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clientVersion_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->serverTime_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->localTime_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->cid_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkJarVersion_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkServiceVersion_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sessionId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->unionId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->extra_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->protectCid_:Ljava/lang/Object;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/ah;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$5300()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->access$5000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$5500()Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
    .locals 2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
    .locals 11

    const/high16 v10, 0x80000

    const/high16 v9, 0x40000

    const/high16 v8, 0x20000

    const/high16 v7, 0x10000

    const v6, 0x8000

    new-instance v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/ah;)V

    iget v2, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiMd5_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$5702(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha1_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$5802(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha2_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$5902(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->macMd5_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6002(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    or-int/lit8 v0, v0, 0x10

    :cond_4
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->ua_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6102(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    or-int/lit8 v0, v0, 0x20

    :cond_5
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->network_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6202(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v3, v2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    or-int/lit8 v0, v0, 0x40

    :cond_6
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->android_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6302(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v2, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    or-int/lit16 v0, v0, 0x80

    :cond_7
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->os_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6402(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v2, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    or-int/lit16 v0, v0, 0x100

    :cond_8
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->region_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6502(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v2, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    or-int/lit16 v0, v0, 0x200

    :cond_9
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->lang_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6602(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v2, 0x400

    const/16 v4, 0x400

    if-ne v3, v4, :cond_a

    or-int/lit16 v0, v0, 0x400

    :cond_a
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->carrier_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6702(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v2, 0x800

    const/16 v4, 0x800

    if-ne v3, v4, :cond_b

    or-int/lit16 v0, v0, 0x800

    :cond_b
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->timezone_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6802(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v2, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_c

    or-int/lit16 v0, v0, 0x1000

    :cond_c
    iget-wide v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->fuid_:J

    invoke-static {v1, v4, v5}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6902(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;J)J

    and-int/lit16 v3, v2, 0x2000

    const/16 v4, 0x2000

    if-ne v3, v4, :cond_d

    or-int/lit16 v0, v0, 0x2000

    :cond_d
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clientVersion_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7002(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v3, v2, 0x4000

    const/16 v4, 0x4000

    if-ne v3, v4, :cond_e

    or-int/lit16 v0, v0, 0x4000

    :cond_e
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->serverTime_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7102(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int v3, v2, v6

    if-ne v3, v6, :cond_f

    or-int/2addr v0, v6

    :cond_f
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->localTime_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7202(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int v3, v2, v7

    if-ne v3, v7, :cond_10

    or-int/2addr v0, v7

    :cond_10
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->cid_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7302(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    and-int v3, v2, v8

    if-ne v3, v8, :cond_11

    or-int/2addr v0, v8

    :cond_11
    iget-wide v4, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->devAppId_:J

    invoke-static {v1, v4, v5}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7402(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;J)J

    and-int v3, v2, v9

    if-ne v3, v9, :cond_12

    or-int/2addr v0, v9

    :cond_12
    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkType_:I

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7502(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;I)I

    and-int v3, v2, v10

    if-ne v3, v10, :cond_13

    or-int/2addr v0, v10

    :cond_13
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkJarVersion_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7602(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x100000

    and-int/2addr v3, v2

    const/high16 v4, 0x100000

    if-ne v3, v4, :cond_14

    const/high16 v3, 0x100000

    or-int/2addr v0, v3

    :cond_14
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkServiceVersion_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7702(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x200000

    and-int/2addr v3, v2

    const/high16 v4, 0x200000

    if-ne v3, v4, :cond_15

    const/high16 v3, 0x200000

    or-int/2addr v0, v3

    :cond_15
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sessionId_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7802(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x400000

    and-int/2addr v3, v2

    const/high16 v4, 0x400000

    if-ne v3, v4, :cond_16

    const/high16 v3, 0x400000

    or-int/2addr v0, v3

    :cond_16
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->unionId_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7902(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x800000

    and-int/2addr v3, v2

    const/high16 v4, 0x800000

    if-ne v3, v4, :cond_17

    const/high16 v3, 0x800000

    or-int/2addr v0, v3

    :cond_17
    iget-object v3, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->extra_:Ljava/lang/Object;

    invoke-static {v1, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$8002(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v3, 0x1000000

    and-int/2addr v2, v3

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_18

    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    :cond_18
    iget-object v2, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->protectCid_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$8102(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$8202(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;I)I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onBuilt()V

    return-object v1
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 4

    const-wide/16 v2, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiMd5_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha1_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha2_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->macMd5_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->ua_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->network_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->android_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->os_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->region_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->lang_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->carrier_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->timezone_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->fuid_:J

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clientVersion_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->serverTime_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->localTime_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->cid_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->devAppId_:J

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkType_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkJarVersion_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkServiceVersion_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sessionId_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->unionId_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->extra_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->protectCid_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    return-object p0
.end method

.method public final clearAndroid()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getAndroid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->android_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCarrier()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getCarrier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->carrier_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCid()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x10001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->cid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearClientVersion()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getClientVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clientVersion_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearDevAppId()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->devAppId_:J

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearExtra()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x800001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getExtra()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->extra_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearFuid()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->fuid_:J

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearImeiMd5()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getImeiMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiMd5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearImeiSha1()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getImeiSha1()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha1_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearImeiSha2()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getImeiSha2()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha2_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLang()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getLang()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->lang_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearLocalTime()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getLocalTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->localTime_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearMacMd5()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getMacMd5()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->macMd5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearNetwork()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getNetwork()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->network_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearOs()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getOs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->os_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearProtectCid()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x1000001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getProtectCid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->protectCid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearRegion()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getRegion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->region_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSdkJarVersion()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getSdkJarVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkJarVersion_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSdkServiceVersion()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getSdkServiceVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkServiceVersion_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSdkType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkType_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearServerTime()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getServerTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->serverTime_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearSessionId()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getSessionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sessionId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearTimezone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getTimezone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->timezone_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUa()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getUa()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->ua_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUnionId()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, -0x400001

    and-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getUnionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->unionId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

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

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getAndroid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->android_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->android_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getAndroidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->android_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->android_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getCarrier()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->carrier_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->carrier_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getCarrierBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->carrier_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->carrier_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getCid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->cid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->cid_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->cid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->cid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getClientVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clientVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clientVersion_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getClientVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clientVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clientVersion_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->access$5000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getDevAppId()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->devAppId_:J

    return-wide v0
.end method

.method public final getExtra()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->extra_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->extra_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getExtraBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->extra_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->extra_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getFuid()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->fuid_:J

    return-wide v0
.end method

.method public final getImeiMd5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiMd5_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiMd5_:Ljava/lang/Object;

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

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiMd5_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiMd5_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getImeiSha1()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha1_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha1_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getImeiSha1Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha1_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha1_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getImeiSha2()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha2_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha2_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getImeiSha2Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha2_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha2_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->lang_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->lang_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getLangBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->lang_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->lang_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getLocalTime()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->localTime_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->localTime_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getLocalTimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->localTime_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->localTime_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getMacMd5()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->macMd5_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->macMd5_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getMacMd5Bytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->macMd5_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->macMd5_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getNetwork()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->network_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->network_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getNetworkBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->network_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->network_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getOs()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->os_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->os_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getOsBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->os_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->os_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getProtectCid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->protectCid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->protectCid_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getProtectCidBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->protectCid_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->protectCid_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->region_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->region_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getRegionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->region_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->region_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSdkJarVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkJarVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkJarVersion_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getSdkJarVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkJarVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkJarVersion_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSdkServiceVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkServiceVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkServiceVersion_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getSdkServiceVersionBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkServiceVersion_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkServiceVersion_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSdkType()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkType_:I

    return v0
.end method

.method public final getServerTime()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->serverTime_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->serverTime_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getServerTimeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->serverTime_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->serverTime_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sessionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sessionId_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sessionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sessionId_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getTimezone()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->timezone_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->timezone_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getTimezoneBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->timezone_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->timezone_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getUa()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->ua_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->ua_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getUaBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->ua_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->ua_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final getUnionId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->unionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->unionId_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getUnionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->unionId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->unionId_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final hasAndroid()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

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

.method public final hasCarrier()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

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

.method public final hasCid()Z
    .locals 2

    const/high16 v1, 0x10000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasClientVersion()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

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

.method public final hasDevAppId()Z
    .locals 2

    const/high16 v1, 0x20000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasExtra()Z
    .locals 2

    const/high16 v1, 0x800000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

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

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

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

.method public final hasImeiMd5()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasImeiSha1()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

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

.method public final hasImeiSha2()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

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

.method public final hasLang()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

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

.method public final hasLocalTime()Z
    .locals 2

    const v1, 0x8000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasMacMd5()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

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

.method public final hasNetwork()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

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

.method public final hasOs()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

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

.method public final hasProtectCid()Z
    .locals 2

    const/high16 v1, 0x1000000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasRegion()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

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

.method public final hasSdkJarVersion()Z
    .locals 2

    const/high16 v1, 0x80000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSdkServiceVersion()Z
    .locals 2

    const/high16 v1, 0x100000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSdkType()Z
    .locals 2

    const/high16 v1, 0x40000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasServerTime()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

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

.method public final hasSessionId()Z
    .locals 2

    const/high16 v1, 0x200000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasTimezone()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

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

.method public final hasUa()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

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

.method public final hasUnionId()Z
    .locals 2

    const/high16 v1, 0x400000

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    and-int/2addr v0, v1

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos;->access$5100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;
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

    invoke-virtual {p0, v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    instance-of v0, p1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasImeiMd5()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$5700(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiMd5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_1
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasImeiSha1()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$5800(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha1_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_2
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasImeiSha2()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$5900(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha2_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_3
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasMacMd5()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6000(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->macMd5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_4
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasUa()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6100(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->ua_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_5
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasNetwork()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6200(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->network_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_6
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasAndroid()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6300(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->android_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_7
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasOs()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6400(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->os_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_8
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6500(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->region_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_9
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasLang()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6600(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->lang_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_a
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasCarrier()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6700(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->carrier_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_b
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasTimezone()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$6800(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->timezone_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_c
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasFuid()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getFuid()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setFuid(J)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    :cond_d
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasClientVersion()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7000(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clientVersion_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_e
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasServerTime()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7100(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->serverTime_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_f
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasLocalTime()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7200(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->localTime_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_10
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasCid()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7300(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->cid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_11
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasDevAppId()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getDevAppId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setDevAppId(J)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    :cond_12
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasSdkType()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getSdkType()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setSdkType(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    :cond_13
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasSdkJarVersion()Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7600(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkJarVersion_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_14
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasSdkServiceVersion()Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7700(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkServiceVersion_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_15
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasSessionId()Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7800(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sessionId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_16
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasUnionId()Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$7900(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->unionId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_17
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasExtra()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$8000(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->extra_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_18
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->hasProtectCid()Z

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->access$8100(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->protectCid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    :cond_19
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0
.end method

.method public final setAndroid(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->android_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setAndroidBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->android_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCarrier(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->carrier_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCarrierBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->carrier_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCid(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->cid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCidBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->cid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setClientVersion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clientVersion_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setClientVersionBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->clientVersion_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setDevAppId(J)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 3

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->devAppId_:J

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExtra(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->extra_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setExtraBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x800000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->extra_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setFuid(J)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->fuid_:J

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImeiMd5(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiMd5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImeiMd5Bytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiMd5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImeiSha1(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha1_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImeiSha1Bytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha1_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImeiSha2(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha2_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setImeiSha2Bytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->imeiSha2_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLang(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->lang_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLangBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->lang_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLocalTime(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->localTime_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setLocalTimeBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->localTime_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMacMd5(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->macMd5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setMacMd5Bytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->macMd5_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNetwork(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->network_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setNetworkBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->network_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOs(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->os_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setOsBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->os_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setProtectCid(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->protectCid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setProtectCidBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->protectCid_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRegion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->region_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRegionBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->region_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkJarVersion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkJarVersion_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkJarVersionBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkJarVersion_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkServiceVersion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkServiceVersion_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkServiceVersionBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkServiceVersion_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSdkType(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sdkType_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setServerTime(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->serverTime_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setServerTimeBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->serverTime_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSessionId(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sessionId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setSessionIdBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->sessionId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTimezone(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->timezone_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setTimezoneBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->timezone_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUa(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->ua_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUaBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->ua_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnionId(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->unionId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnionIdBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    const/high16 v1, 0x400000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->unionId_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->onChanged()V

    return-object p0
.end method
