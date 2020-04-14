.class public Lcom/mi/milink/sdk/debug/InternalDataMonitor;
.super Lcom/mi/milink/sdk/debug/BaseDataMonitor;


# static fields
.field private static TAG_PRE:Ljava/lang/String;

.field private static monitorMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mi/milink/sdk/debug/InternalDataMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/mi/milink/sdk/debug/InternalDataMonitor;


# instance fields
.field private TAG:Ljava/lang/String;

.field private alarmArriveTimes:B

.field private appId:I

.field private mLastUploadTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "InternalDataMonitor"

    sput-object v0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG_PRE:Ljava/lang/String;

    new-instance v0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    invoke-direct {v0}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->sInstance:Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->monitorMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG_PRE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;-><init>(Ljava/lang/String;)V

    const-string v0, "InternalDataMonitor"

    iput-object v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG:Ljava/lang/String;

    iput-byte v2, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->alarmArriveTimes:B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->mLastUploadTime:J

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->appId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG:Ljava/lang/String;

    iget v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->appId:I

    const/16 v1, 0x4e22

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->mSamplingStatisticsSwitch:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->mSamplingStatisticsSwitch:Z

    goto :goto_0
.end method

.method private constructor <init>(I)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG_PRE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;-><init>(Ljava/lang/String;)V

    const-string v0, "InternalDataMonitor"

    iput-object v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG:Ljava/lang/String;

    iput-byte v2, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->alarmArriveTimes:B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->mLastUploadTime:J

    iput p1, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->appId:I

    const/16 v0, 0x4e22

    if-ne p1, v0, :cond_0

    iput-boolean v2, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->mSamplingStatisticsSwitch:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->mSamplingStatisticsSwitch:Z

    goto :goto_0
.end method

.method public static getInstance()Lcom/mi/milink/sdk/debug/InternalDataMonitor;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->sInstance:Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    return-object v0
.end method

.method public static getInstance(I)Lcom/mi/milink/sdk/debug/InternalDataMonitor;
    .locals 3

    sget-object v0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->monitorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    invoke-direct {v0}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;-><init>()V

    iput p0, v0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->appId:I

    sget-object v1, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->monitorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected doPostData()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG:Ljava/lang/String;

    const-string v1, "dopost but map is empty!"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG:Ljava/lang/String;

    const-string v1, "mMonitorItemMap em()"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->mLastUploadTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG:Ljava/lang/String;

    const-string v2, "dopost but has uploaded just now,cancel this!"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG:Ljava/lang/String;

    const-string v1, "dopost but network is available"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/mi/milink/sdk/account/manager/MiChannelAccountManager;->hasInit:Z

    if-eqz v0, :cond_6

    :cond_3
    invoke-virtual {p0, v7}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->toJson(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ThreadId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", doPostData: dataJson="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->mLastUploadTime:J

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dataJson"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isTestChannel()Z

    move-result v0

    if-nez v0, :cond_6

    :try_start_0
    new-instance v0, Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;

    invoke-direct {v0}, Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;-><init>()V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getStasticServerAddr()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4, v0}, Lcom/mi/milink/sdk/base/os/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;)Lcom/mi/milink/sdk/base/os/SimpleRequest$StringContent;

    move-result-object v2

    invoke-static {}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milink/sdk/debug/TrafficMonitor;

    move-result-object v3

    const-string v4, "c.do"

    iget v0, v0, Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;->compressLength:I

    invoke-virtual {v3, v4, v0}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->traffic(Ljava/lang/String;I)V

    invoke-static {}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milink/sdk/debug/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->print()V

    invoke-static {}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milink/sdk/debug/TrafficMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->printDetail()V

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doPostData use host report succeed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mi/milink/sdk/base/os/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG:Ljava/lang/String;

    const-string v2, "doPostData use host report failed"

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :try_start_1
    new-instance v5, Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;

    invoke-direct {v5}, Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;-><init>()V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getStaticServerAddIp()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getStaticServerHost()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/mi/milink/sdk/base/os/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;)Lcom/mi/milink/sdk/base/os/SimpleRequest$StringContent;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milink/sdk/debug/TrafficMonitor;

    move-result-object v1

    const-string v2, "c.do"

    iget v3, v5, Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;->compressLength:I

    invoke-virtual {v1, v2, v3}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->traffic(Ljava/lang/String;I)V

    invoke-static {}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milink/sdk/debug/TrafficMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->print()V

    invoke-static {}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->getInstance()Lcom/mi/milink/sdk/debug/TrafficMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/debug/TrafficMonitor;->printDetail()V

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doPostData use ip report succeed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/base/os/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v6

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG:Ljava/lang/String;

    const-string v1, "doPostData use ip report failed"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG:Ljava/lang/String;

    const-string v1, "doPostData use host and ip failed"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    :cond_6
    move v0, v6

    goto/16 :goto_0
.end method

.method public doPostDataAtOnce()V
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG:Ljava/lang/String;

    const-string v1, "doPostDataAtOnce()"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->startUpload(J)V

    return-void
.end method

.method public declared-synchronized onAlarmArrive()V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x14
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->mLoopPost:Z

    iget-byte v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->alarmArriveTimes:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->alarmArriveTimes:B

    iget-byte v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->alarmArriveTimes:B

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->doPostDataAtOnce()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->alarmArriveTimes:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected toJson(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v7, ""

    if-eqz p1, :cond_2

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "ac"

    const-string v5, "mlink_cmd"

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "appid"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->appId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "vid"

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cversion"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->appId:I

    invoke-static {v5}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getVersionCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "mversion"

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMiLinkVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "sversion"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Android"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "did"

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->getInstance()Lcom/mi/milink/sdk/base/os/info/DeviceDash;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/mi/milink/sdk/util/CommonUtils;->miuiSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "dinfo"

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "channel"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->appId:I

    invoke-static {v5}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "cmd"

    invoke-virtual {v11, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v6, 0x0

    const/4 v4, 0x0

    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    new-instance v15, Lorg/json/JSONArray;

    invoke-direct {v15}, Lorg/json/JSONArray;-><init>()V

    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    new-instance v17, Lorg/json/JSONArray;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONArray;-><init>()V

    new-instance v18, Lorg/json/JSONArray;

    invoke-direct/range {v18 .. v18}, Lorg/json/JSONArray;-><init>()V

    new-instance v19, Lorg/json/JSONArray;

    invoke-direct/range {v19 .. v19}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    move v5, v4

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;

    iget-boolean v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->isSuccess:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    add-int/lit8 v6, v6, 0x1

    iget-wide v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->waste:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v21, v22, v24

    if-ltz v21, :cond_0

    iget-wide v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->waste:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    :cond_0
    iget-object v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->accip:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_6

    iget-object v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->accip:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->port:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    iget-object v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->apn:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->apnType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v21, "milink.handshake"

    iget-object v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->cmd:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1

    const-string v21, "milink.firstheartbeat"

    iget-object v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->cmd:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    :cond_1
    iget-object v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->clientIp:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v4, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->clientIsp:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->TAG:Ljava/lang/String;

    const-string v6, "toJson"

    invoke-static {v5, v6, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-object v7

    :cond_3
    add-int/lit8 v5, v5, 0x1

    :try_start_1
    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    const-string v22, "apn"

    iget-object v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->apn:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v22, "at"

    iget-object v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->apnType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->accip:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_4

    const-string v22, "accip"

    iget-object v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->accip:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    iget v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->port:I

    move/from16 v22, v0

    if-lez v22, :cond_5

    const-string v22, "accport"

    iget v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->port:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_5
    const-string v22, "errCode"

    iget v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->errorCode:I

    move/from16 v23, v0

    invoke-virtual/range {v21 .. v23}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v22, "seq"

    iget-wide v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->seq:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v22, "waste"

    iget-wide v0, v4, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->waste:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_6
    move v4, v5

    move v5, v4

    goto/16 :goto_1

    :cond_7
    const-string v4, "successTimes"

    invoke-virtual {v11, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_8

    const-string v4, "successWasteArray"

    invoke-virtual {v11, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_9

    const-string v4, "successIp"

    invoke-virtual {v11, v4, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_a

    const-string v4, "successPort"

    invoke-virtual {v11, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_b

    const-string v4, "successApn"

    invoke-virtual {v11, v4, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_c

    const-string v4, "successApnType"

    move-object/from16 v0, v16

    invoke-virtual {v11, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_d

    const-string v4, "clientIp"

    move-object/from16 v0, v17

    invoke-virtual {v11, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_e

    const-string v4, "clientIsp"

    move-object/from16 v0, v18

    invoke-virtual {v11, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    const-string v4, "failedTimes"

    invoke-virtual {v11, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "failedInfo"

    move-object/from16 v0, v19

    invoke-virtual {v11, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_10

    const-string v4, "data"

    invoke-virtual {v8, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    :goto_3
    move-object v7, v4

    goto/16 :goto_2

    :cond_10
    move-object v4, v7

    goto :goto_3
.end method
