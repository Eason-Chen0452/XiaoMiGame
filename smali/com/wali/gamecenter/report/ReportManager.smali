.class public Lcom/wali/gamecenter/report/ReportManager;
.super Ljava/lang/Object;


# static fields
.field private static DELAY_LOOP_TIME:J = 0x0L

.field static final GET_URL:Ljava/lang/String; = "https://data.game.xiaomi.com/1px.gif?"

.field public static final MAX_REPORT_COUNT:I = 0xa

.field public static final METHOD_GET:I = 0x0

.field public static final METHOD_POST:I = 0x1

.field private static MSG_FORCE_SEND_REPORT:I = 0x0

.field static final POST_URL:Ljava/lang/String; = "https://data.game.xiaomi.com/p.do"

.field private static final REPORT_VERSION:Ljava/lang/String; = "report_sdk_1.0.1"

.field private static SYNCUPLOADAC:[Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "ReportManager"

.field static mDBSyncObj:Ljava/lang/Object;

.field private static mInstance:Lcom/wali/gamecenter/report/ReportManager;


# instance fields
.field private ctx:Landroid/content/Context;

.field isCTAluseable:Z

.field isDebugging:Z

.field private mDBObserver:Lcom/wali/gamecenter/report/ReportDBObserver;

.field private mHandler:Landroid/os/Handler;

.field private mReportLog:Lcom/wali/gamecenter/report/log/ReportLog;

.field private mReportThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/wali/gamecenter/report/ReportManager;->mDBSyncObj:Ljava/lang/Object;

    const/16 v0, 0x30

    sput v0, Lcom/wali/gamecenter/report/ReportManager;->MSG_FORCE_SEND_REPORT:I

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/wali/gamecenter/report/ReportManager;->DELAY_LOOP_TIME:J

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bid522"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "xmsdk"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "xm_client"

    aput-object v2, v0, v1

    sput-object v0, Lcom/wali/gamecenter/report/ReportManager;->SYNCUPLOADAC:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/wali/gamecenter/report/ReportManager;->isCTAluseable:Z

    iput-boolean v0, p0, Lcom/wali/gamecenter/report/ReportManager;->isDebugging:Z

    iput-object p1, p0, Lcom/wali/gamecenter/report/ReportManager;->ctx:Landroid/content/Context;

    :try_start_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "gamecenter_report"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mReportThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mReportThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mReportThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/wali/gamecenter/report/ReportManager$1;

    iget-object v1, p0, Lcom/wali/gamecenter/report/ReportManager;->mReportThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/wali/gamecenter/report/ReportManager$1;-><init>(Lcom/wali/gamecenter/report/ReportManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/wali/gamecenter/report/db/DBManager;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/wali/gamecenter/report/ReportDBObserver;

    invoke-direct {v0, p1}, Lcom/wali/gamecenter/report/ReportDBObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mDBObserver:Lcom/wali/gamecenter/report/ReportDBObserver;

    new-instance v0, Lcom/wali/gamecenter/report/log/ReportLog;

    const-string v1, "report.log"

    invoke-direct {v0, p1, v1}, Lcom/wali/gamecenter/report/log/ReportLog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mReportLog:Lcom/wali/gamecenter/report/log/ReportLog;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/wali/gamecenter/report/ReportManager;->mInstance:Lcom/wali/gamecenter/report/ReportManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wali/gamecenter/report/ReportManager;

    invoke-direct {v0, p0}, Lcom/wali/gamecenter/report/ReportManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportManager;->mInstance:Lcom/wali/gamecenter/report/ReportManager;

    :cond_0
    return-void
.end method

.method public static Init(Landroid/content/Context;Z)V
    .locals 1

    sget-object v0, Lcom/wali/gamecenter/report/ReportManager;->mInstance:Lcom/wali/gamecenter/report/ReportManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wali/gamecenter/report/ReportManager;

    invoke-direct {v0, p0}, Lcom/wali/gamecenter/report/ReportManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/wali/gamecenter/report/ReportManager;->mInstance:Lcom/wali/gamecenter/report/ReportManager;

    if-eqz p1, :cond_0

    sget-object v0, Lcom/wali/gamecenter/report/ReportManager;->mInstance:Lcom/wali/gamecenter/report/ReportManager;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportManager;->forceSendReport()V

    :cond_0
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/wali/gamecenter/report/ReportManager;->MSG_FORCE_SEND_REPORT:I

    return v0
.end method

.method public static getInstance()Lcom/wali/gamecenter/report/ReportManager;
    .locals 1

    sget-object v0, Lcom/wali/gamecenter/report/ReportManager;->mInstance:Lcom/wali/gamecenter/report/ReportManager;

    return-object v0
.end method

.method private report_string_post(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "uid"

    invoke-static {}, Lcom/wali/gamecenter/report/ReportBaseParams;->getInstance()Lcom/wali/gamecenter/report/ReportBaseParams;

    move-result-object v1

    iget-object v1, v1, Lcom/wali/gamecenter/report/ReportBaseParams;->uid:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "os"

    invoke-static {}, Lcom/wali/gamecenter/report/ReportBaseParams;->getInstance()Lcom/wali/gamecenter/report/ReportBaseParams;

    move-result-object v1

    iget-object v1, v1, Lcom/wali/gamecenter/report/ReportBaseParams;->os:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_version"

    invoke-static {}, Lcom/wali/gamecenter/report/ReportBaseParams;->getInstance()Lcom/wali/gamecenter/report/ReportBaseParams;

    move-result-object v1

    iget-object v1, v1, Lcom/wali/gamecenter/report/ReportBaseParams;->version_name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const-string v0, "content"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    iget-boolean v0, p0, Lcom/wali/gamecenter/report/ReportManager;->isDebugging:Z

    if-eqz v0, :cond_2

    const-string v0, "report_string_post"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static spiltReportToJson(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "content"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method


# virtual methods
.method checkTime()V
    .locals 4

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/wali/gamecenter/report/ReportManager;->MSG_FORCE_SEND_REPORT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/wali/gamecenter/report/ReportManager;->MSG_FORCE_SEND_REPORT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/wali/gamecenter/report/ReportManager;->MSG_FORCE_SEND_REPORT:I

    sget-wide v2, Lcom/wali/gamecenter/report/ReportManager;->DELAY_LOOP_TIME:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public forceSendReport()V
    .locals 2

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mDBObserver:Lcom/wali/gamecenter/report/ReportDBObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mDBObserver:Lcom/wali/gamecenter/report/ReportDBObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/ReportDBObserver;->onChange(Z)V

    :cond_0
    return-void
.end method

.method public isDebug()Z
    .locals 1

    iget-boolean v0, p0, Lcom/wali/gamecenter/report/ReportManager;->isDebugging:Z

    return v0
.end method

.method protected isSyncUpload(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    sget-object v2, Lcom/wali/gamecenter/report/ReportManager;->SYNCUPLOADAC:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method postReport(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/wali/gamecenter/report/ReportManager;->report_string_post(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_rr_"

    new-instance v2, Lcom/wali/gamecenter/report/InsertRecord;

    invoke-direct {v2, v0, v3}, Lcom/wali/gamecenter/report/InsertRecord;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v2, v3}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory;->AppendTask(Ljava/lang/String;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mDBObserver:Lcom/wali/gamecenter/report/ReportDBObserver;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mDBObserver:Lcom/wali/gamecenter/report/ReportDBObserver;

    :cond_0
    return-void
.end method

.method public reportLog()Lcom/wali/gamecenter/report/log/ReportLog;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mReportLog:Lcom/wali/gamecenter/report/log/ReportLog;

    return-object v0
.end method

.method public saveReport(Lcom/wali/gamecenter/report/Report;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "post"

    iget-object v1, p0, Lcom/wali/gamecenter/report/ReportManager;->ctx:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/wali/gamecenter/report/Report;->getParamsToJSON(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/wali/gamecenter/report/ReportManager;->saveReportToDB(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public saveReportToDB(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/wali/gamecenter/report/db/ReportData;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/wali/gamecenter/report/utils/ReportUtils;->encryptUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/wali/gamecenter/report/db/ReportData;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/wali/gamecenter/report/ReportManager;->mDBSyncObj:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/wali/gamecenter/report/db/DBManager;->getReportDao()Lcom/wali/gamecenter/report/db/ReportDataDao;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/wali/gamecenter/report/db/ReportDataDao;->insert(Ljava/lang/Object;)J

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v0, p0, Lcom/wali/gamecenter/report/ReportManager;->isDebugging:Z

    if-eqz v0, :cond_0

    const-string v0, "ReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save data:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<<>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mDBObserver:Lcom/wali/gamecenter/report/ReportDBObserver;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mDBObserver:Lcom/wali/gamecenter/report/ReportDBObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/ReportDBObserver;->onChange(Z)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public sendReport(Lcom/wali/gamecenter/report/Report;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/wali/gamecenter/report/Report;->getType()Lcom/wali/gamecenter/report/ReportType;

    move-result-object v0

    iget-boolean v1, p0, Lcom/wali/gamecenter/report/ReportManager;->isDebugging:Z

    if-eqz v1, :cond_1

    const-string v1, "ReportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Lcom/wali/gamecenter/report/Report;->getClient()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->VIEW:Lcom/wali/gamecenter/report/ReportType;

    if-ne v0, v2, :cond_2

    const-string v0, "track"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcom/wali/gamecenter/report/ReportManager;->isCTAluseable:Z

    if-eqz v0, :cond_3

    const-string v0, "get"

    iget-object v1, p0, Lcom/wali/gamecenter/report/ReportManager;->ctx:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/wali/gamecenter/report/Report;->getParamsToString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/wali/gamecenter/report/ReportManager;->saveReportToDB(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "_rr_"

    new-instance v1, Lcom/wali/gamecenter/report/InsertRecord;

    iget-object v2, p0, Lcom/wali/gamecenter/report/ReportManager;->ctx:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/wali/gamecenter/report/Report;->getParamsToString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/wali/gamecenter/report/InsertRecord;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1, v5}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory;->AppendTask(Ljava/lang/String;Ljava/lang/Runnable;I)V

    goto :goto_0

    :cond_4
    const-string v0, "post"

    iget-object v1, p0, Lcom/wali/gamecenter/report/ReportManager;->ctx:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/wali/gamecenter/report/Report;->getParamsToJSON(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v5}, Lcom/wali/gamecenter/report/ReportManager;->saveReportToDB(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public sendReport(Lcom/wali/gamecenter/report/model/BaseReport;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/wali/gamecenter/report/model/BaseReport;->getType()Lcom/wali/gamecenter/report/ReportType;

    move-result-object v0

    iget-boolean v1, p0, Lcom/wali/gamecenter/report/ReportManager;->isDebugging:Z

    if-eqz v1, :cond_1

    const-string v1, "ReportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Lcom/wali/gamecenter/report/model/BaseReport;->getAc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wali/gamecenter/report/ReportManager;->isSyncUpload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/wali/gamecenter/report/ReportManager;->isCTAluseable:Z

    if-eqz v1, :cond_2

    const-string v0, "get"

    invoke-virtual {p1}, Lcom/wali/gamecenter/report/model/BaseReport;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v5}, Lcom/wali/gamecenter/report/ReportManager;->saveReportToDB(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/wali/gamecenter/report/ReportType;->JARCRASH:Lcom/wali/gamecenter/report/ReportType;

    if-ne v0, v1, :cond_3

    const-string v0, "post"

    invoke-virtual {p1}, Lcom/wali/gamecenter/report/model/BaseReport;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/wali/gamecenter/report/ReportManager;->saveReportToDB(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/wali/gamecenter/report/ReportManager;->forceSendReport()V

    goto :goto_0

    :cond_3
    const-string v0, "_rr_"

    new-instance v1, Lcom/wali/gamecenter/report/InsertRecord;

    invoke-virtual {p1}, Lcom/wali/gamecenter/report/model/BaseReport;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5}, Lcom/wali/gamecenter/report/InsertRecord;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1, v4}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory;->AppendTask(Ljava/lang/String;Ljava/lang/Runnable;I)V

    goto :goto_0

    :cond_4
    const-string v0, "post"

    invoke-virtual {p1}, Lcom/wali/gamecenter/report/model/BaseReport;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4}, Lcom/wali/gamecenter/report/ReportManager;->saveReportToDB(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setCTAUseable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wali/gamecenter/report/ReportManager;->isCTAluseable:Z

    return-void
.end method

.method public setDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/wali/gamecenter/report/ReportManager;->isDebugging:Z

    return-void
.end method

.method stopCheck()V
    .locals 2

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/wali/gamecenter/report/ReportManager;->MSG_FORCE_SEND_REPORT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/wali/gamecenter/report/ReportManager;->MSG_FORCE_SEND_REPORT:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public syncReport()V
    .locals 2

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mDBObserver:Lcom/wali/gamecenter/report/ReportDBObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReportManager;->mDBObserver:Lcom/wali/gamecenter/report/ReportDBObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/ReportDBObserver;->onChange(Z)V

    :cond_0
    return-void
.end method
