.class public Lcom/mi/milink/sdk/debug/MiLinkMonitor;
.super Lcom/mi/milink/sdk/debug/BaseDataMonitor;


# static fields
.field private static TAG_PRE:Ljava/lang/String;

.field private static monitorMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mi/milink/sdk/debug/MiLinkMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/mi/milink/sdk/debug/MiLinkMonitor;


# instance fields
.field private TAG:Ljava/lang/String;

.field private appId:I

.field private mEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MiLinkMonitor_"

    sput-object v0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->TAG_PRE:Ljava/lang/String;

    new-instance v0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    invoke-direct {v0}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->sInstance:Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->monitorMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->TAG_PRE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;-><init>(Ljava/lang/String;)V

    const-string v0, "MiLinkMonitor_"

    iput-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->mEnable:Z

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->appId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->TAG:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->mSamplingStatisticsSwitch:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->mLoopPost:Z

    iget-wide v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->mUploadInterval:J

    invoke-virtual {p0, v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->startUpload(J)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->TAG_PRE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;-><init>(Ljava/lang/String;)V

    const-string v0, "MiLinkMonitor_"

    iput-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->mEnable:Z

    iput p1, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->appId:I

    iput-boolean v1, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->mSamplingStatisticsSwitch:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->mLoopPost:Z

    iget-wide v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->mUploadInterval:J

    invoke-virtual {p0, v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->startUpload(J)V

    return-void
.end method

.method public static getInstance()Lcom/mi/milink/sdk/debug/MiLinkMonitor;
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->sInstance:Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    return-object v0
.end method

.method public static getInstance(I)Lcom/mi/milink/sdk/debug/MiLinkMonitor;
    .locals 3

    sget-object v0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->monitorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    invoke-direct {v0}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;-><init>()V

    iput p0, v0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->appId:I

    sget-object v1, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->monitorMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected doPostData()Z
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->mEnable:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, v6}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->toJson(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->TAG:Ljava/lang/String;

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

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "dataJson"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isTestChannel()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;

    invoke-direct {v0}, Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;-><init>()V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->getStasticServerAddr()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v1, v3, v4, v0}, Lcom/mi/milink/sdk/base/os/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;)Lcom/mi/milink/sdk/base/os/SimpleRequest$StringContent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doPostData use host report succeed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/base/os/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v7

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->TAG:Ljava/lang/String;

    const-string v2, "doPostData use host report failed"

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :try_start_1
    new-instance v5, Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;

    invoke-direct {v5}, Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;-><init>()V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->getStaticServerAddIp()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->getStaticServerHost()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v5}, Lcom/mi/milink/sdk/base/os/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;Lcom/mi/milink/sdk/base/os/SimpleRequest$LengthPair;)Lcom/mi/milink/sdk/base/os/SimpleRequest$StringContent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doPostData use ip report succeed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/base/os/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->TAG:Ljava/lang/String;

    const-string v1, "doPostData use ip report failed"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->TAG:Ljava/lang/String;

    const-string v1, "doPostData use host and ip failed"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public doPostDataAtOnce()V
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->TAG:Ljava/lang/String;

    const-string v1, "doPostDataAtOnce()"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->startUpload(J)V

    return-void
.end method

.method public setEnableWithLogoutStatus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->mEnable:Z

    return-void
.end method

.method protected toJson(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;
    .locals 18
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

    const-string v5, ""

    if-eqz p1, :cond_0

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "ac"

    const-string v3, "mlink_cmd"

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appid"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->appId:I

    invoke-static {v3}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "vid"

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "cversion"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->appId:I

    invoke-static {v3}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mversion"

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMiLinkVersion()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sversion"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Android"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "did"

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->getInstance()Lcom/mi/milink/sdk/base/os/info/DeviceDash;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/base/os/info/DeviceDash;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mi/milink/sdk/util/CommonUtils;->miuiSHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dinfo"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "channel"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->appId:I

    invoke-static {v3}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "cmd"

    invoke-virtual {v9, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v3, v2

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;

    iget-boolean v13, v2, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->isSuccess:Z

    if-eqz v13, :cond_1

    add-int/lit8 v4, v4, 0x1

    iget-wide v14, v2, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->waste:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_4

    iget-wide v14, v2, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->waste:J

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->TAG:Ljava/lang/String;

    const-string v4, "toJson"

    invoke-static {v3, v4, v2}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    return-object v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :try_start_1
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    const-string v14, "apn"

    iget-object v15, v2, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->apn:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "at"

    iget-object v15, v2, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->apnType:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v14, v2, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->accip:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "accip"

    iget-object v15, v2, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->accip:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget v14, v2, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->port:I

    if-lez v14, :cond_3

    const-string v14, "accport"

    iget v15, v2, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->port:I

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    const-string v14, "errCode"

    iget v15, v2, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->errorCode:I

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v14, "seq"

    iget-wide v0, v2, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->seq:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v14, "waste"

    iget-wide v0, v2, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->waste:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_4
    move v2, v3

    move v3, v2

    goto :goto_1

    :cond_5
    const-string v2, "successTimes"

    invoke-virtual {v9, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_6

    const-string v2, "successWasteArray"

    invoke-virtual {v9, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    const-string v2, "failedTimes"

    invoke-virtual {v9, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "failedInfo"

    invoke-virtual {v9, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_8

    const-string v2, "data"

    invoke-virtual {v6, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    :goto_3
    move-object v5, v2

    goto/16 :goto_2

    :cond_8
    move-object v2, v5

    goto :goto_3
.end method
