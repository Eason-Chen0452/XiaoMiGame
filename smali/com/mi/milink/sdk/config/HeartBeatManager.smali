.class public Lcom/mi/milink/sdk/config/HeartBeatManager;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;,
        Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;,
        Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HeartBeatManager"

.field private static final heartBeatTimeFileName:Ljava/lang/String; = "apnhearttime"

.field private static final incIntervalTime:I = 0x61a8

.field private static maxHeartBeatInterval:I = 0x0

.field private static final maxListElemet:I = 0x2

.field private static minHeartBeatInterval:I

.field private static sIntance:Lcom/mi/milink/sdk/config/HeartBeatManager;


# instance fields
.field private apnsHeartBeatTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private appId:I

.field private currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

.field private heartBeatInterval:I

.field private lastHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

.field private lastPacketSendTime:J

.field private lastReviveTimeoutHbTime:J

.field private modle:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

.field packetList:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;",
            ">;"
        }
    .end annotation
.end field

.field probeFailedPoint:Z

.field private probeIsStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x2bf20

    sput v0, Lcom/mi/milink/sdk/config/HeartBeatManager;->minHeartBeatInterval:I

    const v0, 0xafc80

    sput v0, Lcom/mi/milink/sdk/config/HeartBeatManager;->maxHeartBeatInterval:I

    new-instance v0, Lcom/mi/milink/sdk/config/HeartBeatManager;

    invoke-direct {v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/config/HeartBeatManager;->sIntance:Lcom/mi/milink/sdk/config/HeartBeatManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/mi/milink/sdk/config/HeartBeatManager;->minHeartBeatInterval:I

    iput v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    iput-wide v4, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastPacketSendTime:J

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->packetList:Ljava/util/Queue;

    iput-wide v4, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastReviveTimeoutHbTime:J

    iput-boolean v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeIsStop:Z

    iput-boolean v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeFailedPoint:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->apnsHeartBeatTimeMap:Ljava/util/Map;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->appId:I

    const-string v0, "HeartBeatManager"

    const-string v1, "HeartBeatManager start()"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->clearPacketList()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->clearHeartBeatManagerInfo(Z)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->registerAlarmClock()V

    sget-object v0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;->INC:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    iput-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->modle:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->loadConfig()V

    iput-boolean v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeIsStop:Z

    iget v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->appId:I

    const/16 v1, 0x2717

    if-ne v0, v1, :cond_0

    const v0, 0x3a980

    sput v0, Lcom/mi/milink/sdk/config/HeartBeatManager;->maxHeartBeatInterval:I

    :cond_0
    const-string v0, "HeartBeatManager"

    const-string v1, "HeartBeatManager end()"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/mi/milink/sdk/config/HeartBeatManager;->minHeartBeatInterval:I

    iput v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    iput-wide v4, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastPacketSendTime:J

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->packetList:Ljava/util/Queue;

    iput-wide v4, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastReviveTimeoutHbTime:J

    iput-boolean v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeIsStop:Z

    iput-boolean v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeFailedPoint:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->apnsHeartBeatTimeMap:Ljava/util/Map;

    const-string v0, "HeartBeatManager"

    const-string v1, "HeartBeatManager start()"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->clearPacketList()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->clearHeartBeatManagerInfo(Z)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->registerAlarmClock()V

    sget-object v0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;->INC:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    iput-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->modle:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->loadConfig()V

    iput-boolean v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeIsStop:Z

    const/16 v0, 0x2717

    if-ne p1, v0, :cond_0

    const v0, 0x3a980

    sput v0, Lcom/mi/milink/sdk/config/HeartBeatManager;->maxHeartBeatInterval:I

    :cond_0
    const-string v0, "HeartBeatManager"

    const-string v1, "HeartBeatManager end()"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearHeartBeatManagerInfo(Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    iput-object v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastReviveTimeoutHbTime:J

    const-string v0, "HeartBeatManager"

    const-string v1, "clearHeartBeatManagerInfo"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearPacketList()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->packetList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public static getInstance()Lcom/mi/milink/sdk/config/HeartBeatManager;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/config/HeartBeatManager;->sIntance:Lcom/mi/milink/sdk/config/HeartBeatManager;

    return-object v0
.end method

.method private getPacketStatus()Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->packetList:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    move v3, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->isOk()Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-ne v3, v2, :cond_2

    if-ne v1, v2, :cond_2

    sget-object v0, Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;->BLENDSTATUS:Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;

    :goto_1
    return-object v0

    :cond_2
    if-ne v3, v2, :cond_3

    sget-object v0, Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;->ALLSUCCESS:Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_4

    sget-object v0, Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;->ALLFAILED:Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;->ALLSUCCESS:Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;

    goto :goto_1
.end method

.method private loadConfig()V
    .locals 1

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->loadHeartBeatTimeMap()V

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->apnsHeartBeatTimeMap:Ljava/util/Map;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->setHeartBeatInterval()V

    goto :goto_0
.end method

.method private loadHeartBeatTimeMap()V
    .locals 1

    :try_start_0
    const-string v0, "apnhearttime"

    invoke-static {v0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->loadObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->apnsHeartBeatTimeMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private printfManager(Ljava/lang/String;)V
    .locals 5

    const-string v0, "HeartBeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HeartBeatManager info:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",Interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lHbI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",cHBI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",lPacketSt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastPacketSendTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->modle:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",packetSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->packetList:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->packetList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->packetList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    const-string v2, "HeartBeatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PacketListInfo = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private putHBInfoInList(Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;)V
    .locals 5

    invoke-virtual {p1}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->getSeq()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->packetList:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->packetList:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->packetList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_2

    const-string v1, "HeartBeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "packetList size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->packetList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->packetList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    const-string v2, "HeartBeatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PacketListInfo = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "HeartBeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "putHBInfoInList error, err"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string v1, "HeartBeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "packetList poll element.size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->packetList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setHeartBeatInterval()V
    .locals 5

    invoke-static {}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getCurrentApn()Ljava/lang/String;

    move-result-object v1

    const-string v0, "HeartBeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apn = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->apnsHeartBeatTimeMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    sget v0, Lcom/mi/milink/sdk/config/HeartBeatManager;->minHeartBeatInterval:I

    iput v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->apnsHeartBeatTimeMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget v3, Lcom/mi/milink/sdk/config/HeartBeatManager;->minHeartBeatInterval:I

    if-lt v2, v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    const-string v0, "HeartBeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load config find apn = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",heartBeatInterval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->apnsHeartBeatTimeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "HeartBeatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "apnName="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",hbt="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->apnsHeartBeatTimeMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startAanalysisHeartBeat()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->packetList:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const-string v1, "HeartBeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "currunt modle = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->modle:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->getPacketStatus()Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;

    move-result-object v1

    sget-object v2, Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;->ALLFAILED:Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;

    if-ne v1, v2, :cond_0

    iput-boolean v4, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeFailedPoint:Z

    const-string v1, "HeartBeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "probeFailedPoint = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeFailedPoint:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "HeartBeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "packetLise size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",do nothing"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->getPacketStatus()Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;

    move-result-object v0

    const-string v1, "HeartBeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "list packet status is ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " modle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->modle:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;->ALLSUCCESS:Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;

    if-ne v0, v1, :cond_6

    iput-boolean v5, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeFailedPoint:Z

    iget-object v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->modle:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    sget-object v2, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;->INC:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->saveConfig()V

    iget v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    sget v2, Lcom/mi/milink/sdk/config/HeartBeatManager;->maxHeartBeatInterval:I

    if-lt v1, v2, :cond_3

    iput-boolean v4, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeIsStop:Z

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->registerAlarmClock()V

    invoke-direct {p0, v4}, Lcom/mi/milink/sdk/config/HeartBeatManager;->clearHeartBeatManagerInfo(Z)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->clearPacketList()V

    sget-object v0, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;->INC:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    iput-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->modle:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    const-string v0, "HeartBeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "probeIsStop max come heartBeatInterval register alarm time = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    add-int/lit16 v1, v1, 0x61a8

    iput v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    iget v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    sget v2, Lcom/mi/milink/sdk/config/HeartBeatManager;->maxHeartBeatInterval:I

    if-lt v1, v2, :cond_4

    sget v1, Lcom/mi/milink/sdk/config/HeartBeatManager;->maxHeartBeatInterval:I

    iput v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    :cond_4
    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->registerAlarmClock()V

    invoke-direct {p0, v5}, Lcom/mi/milink/sdk/config/HeartBeatManager;->clearHeartBeatManagerInfo(Z)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->clearPacketList()V

    const-string v1, "HeartBeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "inc heartBeatInterval value = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",lastHeartBeatInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->modle:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    sget-object v2, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;->DEC:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    if-ne v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->saveConfig()V

    iput-boolean v4, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeIsStop:Z

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->registerAlarmClock()V

    invoke-direct {p0, v4}, Lcom/mi/milink/sdk/config/HeartBeatManager;->clearHeartBeatManagerInfo(Z)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->clearPacketList()V

    sget-object v1, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;->INC:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    iput-object v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->modle:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    const-string v1, "HeartBeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "probeIsStop  register alarm time = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    sget-object v1, Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;->ALLFAILED:Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;

    if-ne v0, v1, :cond_9

    sget-object v1, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;->DEC:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    iput-object v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->modle:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    iget v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    add-int/lit16 v1, v1, -0x61a8

    iput v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    iget v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    sget v2, Lcom/mi/milink/sdk/config/HeartBeatManager;->minHeartBeatInterval:I

    if-lt v1, v2, :cond_7

    iget v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    if-nez v1, :cond_8

    :cond_7
    sget v1, Lcom/mi/milink/sdk/config/HeartBeatManager;->minHeartBeatInterval:I

    iput v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    :cond_8
    const-string v1, "HeartBeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "find all hb status error.heartBeatInterval="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " modle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->modle:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->saveConfig()V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->registerAlarmClock()V

    invoke-direct {p0, v5}, Lcom/mi/milink/sdk/config/HeartBeatManager;->clearHeartBeatManagerInfo(Z)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->clearPacketList()V

    iput-boolean v5, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeFailedPoint:Z

    :cond_9
    sget-object v1, Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;->BLENDSTATUS:Lcom/mi/milink/sdk/config/HeartBeatManager$ListPacketStatusEnum;

    if-ne v0, v1, :cond_1

    const-string v1, "HeartBeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "list packet status is ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " modle = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->modle:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatModEnum;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " do nothing."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeFailedPoint:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public getHeartBeatInterval()J
    .locals 3

    const-string v0, "HeartBeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "heartBeatInterval = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getLastHeartBeatSendTime()J
    .locals 3

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->getSendTime()J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public getLastPacketSendTime()J
    .locals 4

    const-string v0, "HeartBeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lastPacketSendTime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastPacketSendTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastPacketSendTime:J

    return-wide v0
.end method

.method public reciveConnectRunError(I)V
    .locals 11

    const-wide/16 v2, 0x0

    const-string v0, "reciveConnectRunError----start---"

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->printfManager(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v0, "HeartBeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "currentTime="

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->getSendTime()J

    move-result-wide v0

    :goto_0
    sub-long/2addr v4, v0

    iget-wide v6, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastPacketSendTime:J

    sub-long/2addr v6, v0

    const-string v8, "HeartBeatManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "reciveConnectRunError,currentTime - timerStartTime = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/mi/milink/sdk/config/HeartBeatManager;->minHeartBeatInterval:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",timerStartTime = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",packetSendLess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    cmp-long v0, v6, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    const v1, 0xc350

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, v4, v0

    if-gez v0, :cond_1

    :cond_0
    const/16 v0, 0x68

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->reciveTimeoutHeartBeat(I)V

    :cond_2
    const-string v0, "reciveConnectRunError----end---"

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->printfManager(Ljava/lang/String;)V

    return-void

    :cond_3
    move-wide v0, v2

    goto :goto_0
.end method

.method public reciveTimeoutHeartBeat(I)V
    .locals 6

    const-string v0, "reciveTimeoutHeartBeat----start---"

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->printfManager(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeIsStop:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "HeartBeatManager"

    const-string v1, "probeIsStop is true do nothing reciveTimeoutHeartBeat"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastReviveTimeoutHbTime:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const-string v2, "HeartBeatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reciveTimeoutHeartBeat but do nothing, currentTime = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lastReviveTimeoutHbTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastReviveTimeoutHbTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",less = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastReviveTimeoutHbTime:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < heartBeatInterval"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    if-nez v2, :cond_2

    new-instance v2, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;-><init>(Lcom/mi/milink/sdk/config/HeartBeatManager;Lcom/mi/milink/sdk/config/HeartBeatManager$1;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    :cond_2
    iget-object v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->setOk(Z)V

    const-string v2, "HeartBeatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "recive TimeoutHeartBeat.packetSeq="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",currHeartBeatInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    invoke-direct {p0, v2}, Lcom/mi/milink/sdk/config/HeartBeatManager;->putHBInfoInList(Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->startAanalysisHeartBeat()V

    iput-wide v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastReviveTimeoutHbTime:J

    const-string v0, "reciveTimeoutHeartBeat----end---"

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->printfManager(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public registerAlarmClock()V
    .locals 3

    invoke-static {}, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->stop()Z

    iget v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/base/os/timer/AlarmClockService;->start(J)Z

    const-string v0, "HeartBeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "re registerALarmClock time="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public saveConfig()V
    .locals 4

    invoke-static {}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getCurrentApn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "HeartBeatManager"

    const-string v1, "saveconfig apn = null , no save"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->apnsHeartBeatTimeMap:Ljava/util/Map;

    iget v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->apnsHeartBeatTimeMap:Ljava/util/Map;

    const-string v2, "apnhearttime"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/config/IIpInfoManager;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v1, "HeartBeatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "********* save config apn="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->heartBeatInterval:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendHeartBeat(I)V
    .locals 11

    const-wide/16 v2, 0x0

    const/4 v10, 0x1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeIsStop:Z

    if-ne v0, v10, :cond_0

    const-string v0, "HeartBeatManager"

    const-string v1, "probeIsStop is true do nothing sendHeartBeat"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "sendHeartBeat----start---"

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->printfManager(Ljava/lang/String;)V

    new-instance v4, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;-><init>(Lcom/mi/milink/sdk/config/HeartBeatManager;Lcom/mi/milink/sdk/config/HeartBeatManager$1;)V

    invoke-virtual {v4, p1}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->setSeq(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->setSendTime(J)V

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->getSendTime()J

    move-result-wide v0

    :goto_1
    iget-object v5, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    iput-object v5, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    const-string v5, "HeartBeatManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sendHeartBeat lastPacketSendTime ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastPacketSendTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",lastHeartBeatSendTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",less = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastPacketSendTime:J

    sub-long/2addr v8, v0

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    iget-object v4, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    if-nez v4, :cond_1

    const-string v0, "HeartBeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send Heart Beat first beat,no put in packetlist,currHeartBeatInfo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->currHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sendHeartBeat----end---"

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->printfManager(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iget-wide v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastPacketSendTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    const-string v2, "HeartBeatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lastpacketSendtime > lastHeartBeatSendTime,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastPacketSendTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",no put in packetlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sendHeartBeat----end---"

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->printfManager(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "HeartBeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendHeartBeat seqNo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " find ok,put in packetlist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    invoke-virtual {v0, v10}, Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;->setOk(Z)V

    iget-object v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastHeartBeatInfo:Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->putHBInfoInList(Lcom/mi/milink/sdk/config/HeartBeatManager$HeartBeatInfo;)V

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->startAanalysisHeartBeat()V

    const-string v0, "sendHeartBeat----end---"

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->printfManager(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    move-wide v0, v2

    goto/16 :goto_1
.end method

.method public setLastPacketSendTime(I)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastPacketSendTime:J

    const-string v0, "HeartBeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set lastpacketSendTime time = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastPacketSendTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLastPacketSendTime(ILjava/lang/String;)V
    .locals 4

    const-string v0, "milink.heartbeat"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastPacketSendTime:J

    iget-wide v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastPacketSendTime:J

    sput-wide v0, Lcom/mi/milink/sdk/base/Global;->LAST_PACKET_SEND_TIME:J

    const-string v0, "HeartBeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set lastpacketSendTime time = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->lastPacketSendTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",command = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startHeartBeatProbeManager(I)V
    .locals 3

    const-string v0, "startHeartBeatProbeManager-----start"

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->printfManager(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeIsStop:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->clearHeartBeatManagerInfo(Z)V

    const-string v0, "HeartBeatManager"

    const-string v1, "start heartBeatProbeManager send first beat.."

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeFailedPoint:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->setHeartBeatInterval()V

    :cond_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->registerAlarmClock()V

    const-string v0, "HeartBeatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "probeFailedPoint = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/mi/milink/sdk/config/HeartBeatManager;->probeFailedPoint:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startHeartBeatProbeManager-----end"

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/HeartBeatManager;->printfManager(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/config/HeartBeatManager;->sendHeartBeat(I)V

    return-void
.end method
