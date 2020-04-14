.class public Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager$ReportHandler;
    }
.end annotation


# static fields
.field private static final GET:I = 0x0

.field private static final HTTP:I = 0x0

.field private static final HTTPS:I = 0x1

.field public static final MILINK_APPID:I = 0x4e22

.field private static final MSG_EVENT_GETSERVICETOKEN:I = 0x2710

.field private static final MSG_EVENT_INVALIDPACKET:I = 0x2713

.field private static final MSG_EVENT_KICKEDBYSERVER:I = 0x2714

.field private static final MSG_EVENT_SERVICETOKENEXPIRED:I = 0x2711

.field private static final MSG_EVENT_SHOULDCHECKUPDATE:I = 0x2712

.field private static final MSG_OBSERVER_INTERNALERROR:I = 0x2716

.field private static final MSG_OBSERVER_SERVERSTATEUPDATE:I = 0x2718

.field private static final MSG_OBSERVER_SERVICECONNECTED:I = 0x2717

.field private static final MSG_OBSERVER_SUICIDETIME:I = 0x2715

.field private static final POST:I = 0x1

.field private static final TIME_OUT:I = 0x3a98

.field private static volatile mInstance:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

.field public static needOnlyUseHttp:Z


# instance fields
.field private firstLogined:Z

.field private isMilinkLogined:Z

.field private mHandler:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager$ReportHandler;

.field private mLock:[B

.field public miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

.field mob:Lcom/mi/milink/sdk/client/MiLinkObserver;

.field private reportTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->needOnlyUseHttp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->firstLogined:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->reportTime:J

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->mLock:[B

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/milink/e;-><init>(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->mob:Lcom/mi/milink/sdk/client/MiLinkObserver;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager$ReportHandler;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager$ReportHandler;-><init>(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->mHandler:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager$ReportHandler;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->mob:Lcom/mi/milink/sdk/client/MiLinkObserver;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;->setMilinkStateObserver(Lcom/mi/milink/sdk/client/MiLinkObserver;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/milink/d;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/milink/d;-><init>(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;->setEventListener(Lcom/mi/milink/sdk/client/IEventListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->reportTime:J

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;->initUseChannelMode()V

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->ensureMilinkLogined()Z

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;JII)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->sendReportMsg(JII)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->reportTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->firstLogined:Z

    return v0
.end method

.method static synthetic access$202(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->firstLogined:Z

    return p1
.end method

.method static synthetic access$302(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->isMilinkLogined:Z

    return p1
.end method

.method static synthetic access$400(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;)[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->mLock:[B

    return-object v0
.end method

.method private ensureMilinkLogined()Z
    .locals 4

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->isMilinkLogined:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->mLock:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->mLock:[B

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

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->isMilinkLogined:Z

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

.method public static getInstance()Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->mInstance:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->mInstance:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->mInstance:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->mInstance:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendReportMsg(JII)V
    .locals 0

    return-void
.end method


# virtual methods
.method public isMilinkLogined()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->isMilinkLogined:Z

    return v0
.end method

.method public sendDataByChannel(Lcom/mi/milink/sdk/aidl/PacketData;)Lcom/mi/milink/sdk/aidl/PacketData;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    const/16 v1, 0x3a98

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;->sendDataBySimpleChannel(Lcom/mi/milink/sdk/aidl/PacketData;I)Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v0

    return-object v0
.end method

.method public sendMilinkRequest(Ljava/lang/String;Lcom/google/protobuf/GeneratedMessage;)Lcom/mi/milink/sdk/aidl/PacketData;
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

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    const/16 v3, 0x3a98

    invoke-virtual {v0, v2, v3}, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;->sendDataBySimpleChannel(Lcom/mi/milink/sdk/aidl/PacketData;I)Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/aidl/PacketData;->setNeedCached(Z)V

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0
.end method

.method public sendSyncGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/mi/milink/sdk/aidl/PacketData;
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
            "Lcom/mi/milink/sdk/aidl/PacketData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->setMethod(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v5}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->setProtocol(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

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
    invoke-virtual {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->setProtocol(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

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
    invoke-virtual {v2, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->setUrl(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->setName(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->setValue(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->addHeaders(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    goto :goto_3

    :cond_4
    const-string v0, "?"

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    const/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;->sendDataBySimpleChannel(Lcom/mi/milink/sdk/aidl/PacketData;I)Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v0

    invoke-virtual {v1, v5}, Lcom/mi/milink/sdk/aidl/PacketData;->setNeedCached(Z)V

    return-object v0
.end method

.method public sendSyncHttpTransfer(Ljava/lang/String;Lcn/com/wali/basetool/io/QHttpRequest;Z)Lcom/mi/milink/sdk/aidl/PacketData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcn/com/wali/basetool/io/QHttpRequest;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/com/wali/basetool/utils/Pair;

    invoke-virtual {v0}, Lcn/com/wali/basetool/utils/Pair;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcn/com/wali/basetool/utils/Pair;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcn/com/wali/basetool/utils/Pair;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0}, Lcn/com/wali/basetool/utils/Pair;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "Content-Encoding"

    const-string v1, "gzip"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p2}, Lcn/com/wali/basetool/io/QHttpRequest;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Content-Type"

    invoke-virtual {p2}, Lcn/com/wali/basetool/io/QHttpRequest;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {p2}, Lcn/com/wali/basetool/io/QHttpRequest;->a()[B

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcn/com/wali/basetool/io/QHttpRequest;->a()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_4

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->getInstance()Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    move-result-object v0

    invoke-virtual {p2}, Lcn/com/wali/basetool/io/QHttpRequest;->a()[B

    move-result-object v1

    invoke-virtual {v0, p1, v2, v1}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->sendSyncPostBytes(Ljava/lang/String;Ljava/util/Map;[B)Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_4
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->getInstance()Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->sendSyncGet(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v0

    goto :goto_1
.end method

.method public sendSyncPost(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;
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
            "Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->setUrl(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    invoke-virtual {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->setMethod(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->setProtocol(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->setName(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->setValue(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->addParams(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->setProtocol(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->setName(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->setValue(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->addHeaders(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    const/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;->sendDataBySimpleChannel(Lcom/mi/milink/sdk/aidl/PacketData;I)Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mi/milink/sdk/aidl/PacketData;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$ResponseInfo;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public sendSyncPostBytes(Ljava/lang/String;Ljava/util/Map;[B)Lcom/mi/milink/sdk/aidl/PacketData;
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
            "Lcom/mi/milink/sdk/aidl/PacketData;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->setUrl(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    invoke-virtual {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->setMethod(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->setProtocol(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    :goto_0
    if-eqz p3, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    invoke-static {p3}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->setByteArrayEntity(Lcom/google/protobuf/ByteString;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

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

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->setName(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->setValue(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->addHeaders(Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$NameValuePair;)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->setProtocol(I)Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-direct {v1}, Lcom/mi/milink/sdk/aidl/PacketData;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkCommand;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mi/milink/sdk/aidl/PacketData;->setCommand(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/HttpTransfer$RequestInfo;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/aidl/PacketData;->setData([B)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    const/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;->sendDataBySimpleChannel(Lcom/mi/milink/sdk/aidl/PacketData;I)Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized uploadMilinkLog()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;->miLinkChannelClient:Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/CustomMiLinkChannelClient;->uploadMilinkLog(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
