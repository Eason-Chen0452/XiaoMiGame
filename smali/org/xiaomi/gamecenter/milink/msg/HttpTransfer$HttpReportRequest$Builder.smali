.class public final Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;",
        ">;",
        "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientIp_:I

.field private code_:I

.field private costTime_:J

.field private requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

.field private responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo$Builder;",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfoOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

.field private serverIp_:I

.field private userId_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$4100()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->access$3800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getRequestInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->getRequestInfo()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private getResponseInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/SingleFieldBuilder",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo$Builder;",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfoOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->getResponseInfo()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    move-result-object v1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->getRequestInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->getResponseInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
    .locals 2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/i;)V

    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_8

    :goto_0
    iget-wide v4, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->userId_:J

    invoke-static {v2, v4, v5}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->access$4502(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;J)J

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->code_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->access$4602(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-wide v4, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->costTime_:J

    invoke-static {v2, v4, v5}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->access$4702(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;J)J

    and-int/lit8 v1, v3, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    or-int/lit8 v0, v0, 0x8

    :cond_2
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->clientIp_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->access$4802(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;I)I

    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x10

    :cond_3
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->serverIp_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->access$4902(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_7

    or-int/lit8 v0, v0, 0x20

    move v1, v0

    :goto_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->access$5002(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    :goto_2
    and-int/lit8 v0, v3, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_4

    or-int/lit8 v1, v1, 0x40

    :cond_4
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->access$5102(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    :goto_3
    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->access$5202(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;I)I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onBuilt()V

    return-object v2

    :cond_5
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->access$5002(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->access$5102(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    goto :goto_3

    :cond_7
    move v1, v0

    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->userId_:J

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->code_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    iput-wide v2, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->costTime_:J

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->clientIp_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->serverIp_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    :goto_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    :goto_1
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public final clearClientIp()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->clientIp_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCode()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->code_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearCostTime()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->costTime_:J

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearRequestInfo()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final clearResponseInfo()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->clear()Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final clearServerIp()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->serverIp_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUserId()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->userId_:J

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

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

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getClientIp()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->clientIp_:I

    return v0
.end method

.method public final getCode()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->code_:I

    return v0
.end method

.method public final getCostTime()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->costTime_:J

    return-wide v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->access$3800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestInfo()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    goto :goto_0
.end method

.method public final getRequestInfoBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->getRequestInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    return-object v0
.end method

.method public final getRequestInfoOrBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfoOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    goto :goto_0
.end method

.method public final getResponseInfo()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    goto :goto_0
.end method

.method public final getResponseInfoBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->getResponseInfoFieldBuilder()Lcom/google/protobuf/SingleFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo$Builder;

    return-object v0
.end method

.method public final getResponseInfoOrBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfoOrBuilder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfoOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    goto :goto_0
.end method

.method public final getServerIp()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->serverIp_:I

    return v0
.end method

.method public final getUserId()J
    .locals 2

    iget-wide v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->userId_:J

    return-wide v0
.end method

.method public final hasClientIp()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

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

.method public final hasCode()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

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

.method public final hasCostTime()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

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

.method public final hasRequestInfo()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

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

.method public final hasResponseInfo()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

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

.method public final hasServerIp()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

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

.method public final hasUserId()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->access$3900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->hasUserId()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->hasCode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->hasCostTime()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->hasClientIp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->hasServerIp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->hasRequestInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->getRequestInfo()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->hasResponseInfo()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->getResponseInfo()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;
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

    invoke-virtual {p0, v2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    instance-of v0, p1, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getUserId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->setUserId(J)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    :cond_1
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->setCode(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    :cond_2
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->hasCostTime()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getCostTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->setCostTime(J)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    :cond_3
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->hasClientIp()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getClientIp()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->setClientIp(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    :cond_4
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->hasServerIp()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getServerIp()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->setServerIp(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    :cond_5
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->hasRequestInfo()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getRequestInfo()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->mergeRequestInfo(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    :cond_6
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->hasResponseInfo()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getResponseInfo()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->mergeResponseInfo(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;

    :cond_7
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto :goto_0
.end method

.method public final mergeRequestInfo(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->newBuilder(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    :goto_0
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public final mergeResponseInfo(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;->newBuilder(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    :goto_0
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    :goto_1
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->mergeFrom(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_1
.end method

.method public final setClientIp(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->clientIp_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCode(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->code_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setCostTime(J)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->costTime_:J

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setRequestInfo(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final setRequestInfo(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->requestInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final setResponseInfo(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo$Builder;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final setResponseInfo(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfo_:Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    :goto_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->responseInfoBuilder_:Lcom/google/protobuf/SingleFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/SingleFieldBuilder;->setMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/SingleFieldBuilder;

    goto :goto_0
.end method

.method public final setServerIp(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->serverIp_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUserId(J)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->bitField0_:I

    iput-wide p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->userId_:J

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$HttpReportRequest$Builder;->onChanged()V

    return-object p0
.end method
