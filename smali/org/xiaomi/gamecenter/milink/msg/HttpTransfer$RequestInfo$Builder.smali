.class public final Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;

# interfaces
.implements Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder",
        "<",
        "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;",
        ">;",
        "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfoOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private byteArrayEntity_:Lcom/google/protobuf/ByteString;

.field private headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePairOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private headers_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private method_:I

.field private paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePairOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private params_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private protocol_:I

.field private url_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->url_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->byteArrayEntity_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->url_:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->byteArrayEntity_:Lcom/google/protobuf/ByteString;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/xiaomi/gamecenter/milink/msg/i;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$300()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    new-instance v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    invoke-direct {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;-><init>()V

    return-object v0
.end method

.method private ensureHeadersIsMutable()V
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureParamsIsMutable()V
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private getHeadersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePairOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getParamsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/RepeatedFieldBuilder",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePairOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    new-instance v1, Lcom/google/protobuf/RepeatedFieldBuilder;

    iget-object v2, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getParentForChildren()Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    move-result-object v3

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->isClean()Z

    move-result v4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/protobuf/RepeatedFieldBuilder;-><init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getHeadersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getParamsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public final addAllHeaders(Ljava/lang/Iterable;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;",
            ">;)",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureHeadersIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addAllParams(Ljava/lang/Iterable;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;",
            ">;)",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureParamsIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addHeaders(ILorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureHeadersIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addHeaders(ILorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureHeadersIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addHeaders(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureHeadersIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addHeaders(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureHeadersIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addHeadersBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;
    .locals 2

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getHeadersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    return-object v0
.end method

.method public final addHeadersBuilder(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;
    .locals 2

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getHeadersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    return-object v0
.end method

.method public final addParams(ILorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureParamsIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addParams(ILorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureParamsIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addParams(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureParamsIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addParams(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureParamsIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final addParamsBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;
    .locals 2

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getParamsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    return-object v0
.end method

.method public final addParamsBuilder(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;
    .locals 2

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getParamsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public final build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;
    .locals 2

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public final buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/xiaomi/gamecenter/milink/msg/i;)V

    iget v3, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_7

    :goto_0
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->method_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$702(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->url_:Ljava/lang/Object;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$802(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_5

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    :cond_1
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$902(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;Ljava/util/List;)Ljava/util/List;

    :goto_1
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v1, :cond_6

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    :cond_2
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$1002(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;Ljava/util/List;)Ljava/util/List;

    :goto_2
    and-int/lit8 v1, v3, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_3
    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->protocol_:I

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$1102(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;I)I

    and-int/lit8 v1, v3, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_4

    or-int/lit8 v0, v0, 0x8

    :cond_4
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->byteArrayEntity_:Lcom/google/protobuf/ByteString;

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$1202(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    invoke-static {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$1302(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;I)I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onBuilt()V

    return-object v2

    :cond_5
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$902(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;Ljava/util/List;)Ljava/util/List;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$1002(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->clear()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clear()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->method_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    const-string v0, ""

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->url_:Ljava/lang/Object;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    :goto_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    :goto_1
    iput v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->protocol_:I

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->byteArrayEntity_:Lcom/google/protobuf/ByteString;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_1
.end method

.method public final clearByteArrayEntity()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->getByteArrayEntity()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->byteArrayEntity_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearHeaders()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public final clearMethod()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->method_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearParams()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->clear()V

    goto :goto_0
.end method

.method public final clearProtocol()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->protocol_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final clearUrl()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->url_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

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

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 2

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->create()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->buildPartial()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getByteArrayEntity()Lcom/google/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->byteArrayEntity_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaders(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    goto :goto_0
.end method

.method public final getHeadersBuilder(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;
    .locals 1

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getHeadersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    return-object v0
.end method

.method public final getHeadersBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getHeadersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getHeadersCount()I
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public final getHeadersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getHeadersOrBuilder(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePairOrBuilder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePairOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePairOrBuilder;

    goto :goto_0
.end method

.method public final getHeadersOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePairOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getMethod()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->method_:I

    return v0
.end method

.method public final getParams(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(I)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    goto :goto_0
.end method

.method public final getParamsBuilder(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;
    .locals 1

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getParamsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    return-object v0
.end method

.method public final getParamsBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getParamsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getParamsCount()I
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public final getParamsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getParamsOrBuilder(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePairOrBuilder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePairOrBuilder;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePairOrBuilder;

    goto :goto_0
.end method

.method public final getParamsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePairOrBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final getProtocol()I
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->protocol_:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->url_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->url_:Ljava/lang/Object;

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->url_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->url_:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    goto :goto_0
.end method

.method public final hasByteArrayEntity()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

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

.method public final hasMethod()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasProtocol()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

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

.method public final hasUrl()Z
    .locals 2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    const-class v2, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->hasMethod()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getHeadersCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getHeaders(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getParamsCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getParams(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

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

    invoke-virtual {p0, p1, p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;
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

    invoke-virtual {p0, v2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    :cond_1
    throw v1

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/Message;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    instance-of v0, p1, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    invoke-virtual {p0, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    goto :goto_0
.end method

.method public final mergeFrom(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->getDefaultInstance()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->hasMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->getMethod()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->setMethod(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    :cond_1
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$800(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->url_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :cond_2
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_8

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$900(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$900(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    :goto_1
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :cond_3
    :goto_2
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_c

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$1000(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$1000(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    :goto_3
    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :cond_4
    :goto_4
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->hasProtocol()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->getProtocol()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->setProtocol(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    :cond_5
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->hasByteArrayEntity()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->getByteArrayEntity()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->setByteArrayEntity(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    :cond_6
    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureHeadersIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$900(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_8
    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$900(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$900(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getHeadersFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    :cond_9
    move-object v0, v1

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$900(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_2

    :cond_b
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureParamsIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$1000(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_c
    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$1000(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->dispose()V

    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$1000(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$1500()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->getParamsFieldBuilder()Lcom/google/protobuf/RepeatedFieldBuilder;

    move-result-object v1

    :cond_d
    iput-object v1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4

    :cond_e
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->access$1000(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto/16 :goto_4
.end method

.method public final removeHeaders(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureHeadersIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public final removeParams(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureParamsIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->remove(I)V

    goto :goto_0
.end method

.method public final setByteArrayEntity(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->byteArrayEntity_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setHeaders(ILorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureHeadersIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final setHeaders(ILorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureHeadersIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headers_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->headersBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final setMethod(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->method_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setParams(ILorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 2

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureParamsIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-virtual {p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {p2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final setParams(ILorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->ensureParamsIsMutable()V

    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->params_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->paramsBuilder_:Lcom/google/protobuf/RepeatedFieldBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/RepeatedFieldBuilder;->setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_0
.end method

.method public final setProtocol(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    iput p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->protocol_:I

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUrl(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->url_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUrlBytes(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->bitField0_:I

    iput-object p1, p0, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->url_:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->onChanged()V

    return-object p0
.end method
