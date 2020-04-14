.class public Lcom/xiaomi/hy/dj/c/b;
.super Ljava/lang/Object;


# static fields
.field private static final c:I = 0x1

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x0

.field private static final g:I = 0x3a98

.field private static volatile i:Lcom/xiaomi/hy/dj/c/b;


# instance fields
.field public a:Lcom/mi/milink/sdk/client/MiLinkChannelClient;

.field b:Lcom/mi/milink/sdk/client/MiLinkObserver;

.field private h:Z

.field private j:J

.field private k:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/hy/dj/c/b;->j:J

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/hy/dj/c/b;->k:[B

    new-instance v0, Lcom/xiaomi/hy/dj/c/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/hy/dj/c/d;-><init>(Lcom/xiaomi/hy/dj/c/b;)V

    iput-object v0, p0, Lcom/xiaomi/hy/dj/c/b;->b:Lcom/mi/milink/sdk/client/MiLinkObserver;

    new-instance v0, Lcom/mi/milink/sdk/client/MiLinkChannelClient;

    invoke-direct {v0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hy/dj/c/b;->a:Lcom/mi/milink/sdk/client/MiLinkChannelClient;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/b;->a:Lcom/mi/milink/sdk/client/MiLinkChannelClient;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/c/b;->b:Lcom/mi/milink/sdk/client/MiLinkObserver;

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->setMilinkStateObserver(Lcom/mi/milink/sdk/client/MiLinkObserver;)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/b;->a:Lcom/mi/milink/sdk/client/MiLinkChannelClient;

    new-instance v1, Lcom/xiaomi/hy/dj/c/c;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/c/c;-><init>(Lcom/xiaomi/hy/dj/c/b;)V

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->setEventListener(Lcom/mi/milink/sdk/client/IEventListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/hy/dj/c/b;->j:J

    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/b;->a:Lcom/mi/milink/sdk/client/MiLinkChannelClient;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->initUseChannelMode()V

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/c/b;->c()Z

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/hy/dj/c/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/hy/dj/c/b;->j:J

    return-wide v0
.end method

.method public static a()Lcom/xiaomi/hy/dj/c/b;
    .locals 2

    sget-object v0, Lcom/xiaomi/hy/dj/c/b;->i:Lcom/xiaomi/hy/dj/c/b;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/hy/dj/c/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/hy/dj/c/b;->i:Lcom/xiaomi/hy/dj/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/hy/dj/c/b;

    invoke-direct {v0}, Lcom/xiaomi/hy/dj/c/b;-><init>()V

    sput-object v0, Lcom/xiaomi/hy/dj/c/b;->i:Lcom/xiaomi/hy/dj/c/b;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/hy/dj/c/b;->i:Lcom/xiaomi/hy/dj/c/b;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/hy/dj/c/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/hy/dj/c/b;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/hy/dj/c/b;)[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/b;->k:[B

    return-object v0
.end method

.method private c()Z
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/hy/dj/c/b;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/hy/dj/c/b;->k:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/b;->k:[B

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v0, p0, Lcom/xiaomi/hy/dj/c/b;->h:Z

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lcom/mi/milink/sdk/aidl/PacketData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v2, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v2}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    invoke-virtual {v2, p1}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessage;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/b;->a:Lcom/mi/milink/sdk/client/MiLinkChannelClient;

    const/16 v3, 0x3a98

    invoke-virtual {v0, v2, v3}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sendDataBySimpleChannel(Lcom/mi/milink/sdk/aidl/PacketData;I)Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/aidl/PacketData;->setNeedCached(Z)V

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->newBuilder()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->setMethod(I)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v5}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->setProtocol(I)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    :goto_0
    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "&"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v1}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->setProtocol(I)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "&"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    invoke-virtual {v2, p1}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;->newBuilder()Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;->setName(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;->setValue(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;->build()Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->addHeaders(Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    goto :goto_3

    :cond_4
    const-string v0, "?"

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->build()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/hy/dj/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/b;->a:Lcom/mi/milink/sdk/client/MiLinkChannelClient;

    const/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sendDataBySimpleChannel(Lcom/mi/milink/sdk/aidl/PacketData;I)Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v2

    invoke-virtual {v1, v5}, Lcom/mi/milink/sdk/aidl/PacketData;->setNeedCached(Z)V

    const/4 v0, 0x0

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;->parseFrom([B)Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;[B)Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->newBuilder()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    invoke-virtual {v2, v1}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->setMethod(I)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v1}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->setProtocol(I)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    :goto_0
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    invoke-static {p3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->setByteArrayEntity(Lcom/google/protobuf/ByteString;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;->newBuilder()Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;->setName(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;->setValue(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;->build()Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->addHeaders(Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->setProtocol(I)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->build()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/hy/dj/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/b;->a:Lcom/mi/milink/sdk/client/MiLinkChannelClient;

    const/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sendDataBySimpleChannel(Lcom/mi/milink/sdk/aidl/PacketData;I)Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;->parseFrom([B)Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->newBuilder()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->setUrl(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    invoke-virtual {v2, v1}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->setMethod(I)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->setProtocol(I)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    :goto_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;->newBuilder()Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;->setName(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;->setValue(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;->build()Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->addParams(Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->setProtocol(I)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;->newBuilder()Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;->setName(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;->setValue(Ljava/lang/String;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair$Builder;->build()Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->addHeaders(Lcom/xiaomi/hy/dj/pb/HttpTransfer$NameValuePair;)Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo$Builder;->build()Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/hy/dj/c/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$RequestInfo;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/c/b;->a:Lcom/mi/milink/sdk/client/MiLinkChannelClient;

    const/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2}, Lcom/mi/milink/sdk/client/MiLinkChannelClient;->sendDataBySimpleChannel(Lcom/mi/milink/sdk/aidl/PacketData;I)Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;->parseFrom([B)Lcom/xiaomi/hy/dj/pb/HttpTransfer$ResponseInfo;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/hy/dj/c/b;->h:Z

    return v0
.end method
