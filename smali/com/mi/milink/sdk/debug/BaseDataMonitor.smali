.class public abstract Lcom/mi/milink/sdk/debug/BaseDataMonitor;
.super Lcom/mi/milink/sdk/base/CustomHandlerThread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;
    }
.end annotation


# static fields
.field public static final MESSAGE_UPLOAD_DATA:I = 0xa

.field public static final RET_CODE_ABANDONED_SESSION_NOT_READY:I = 0x4

.field public static final RET_CODE_OK:I = 0x0

.field public static final RET_CODE_PING_TIME_OUT:I = 0x3

.field public static final RET_CODE_TIME_OUT:I = 0x1

.field public static final RET_CODE_TOKEN_EXPIRED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BaseDataMonitor"


# instance fields
.field private mLastUploadTs:J

.field protected mLoopPost:Z

.field protected final mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSamplingStatisticsSwitch:Z

.field mStarted:Z

.field protected mSwitch:Z

.field protected mUploadInterval:J

.field private random:Ljava/util/Random;

.field protected stasticServerAdd:Ljava/lang/String;

.field protected stasticServerAddIp:Ljava/lang/String;

.field protected stasticServerHost:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/base/CustomHandlerThread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/ConfigManager;->getUploadStasticInterval()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mUploadInterval:J

    iput-boolean v2, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mSamplingStatisticsSwitch:Z

    iput-boolean v3, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mLoopPost:Z

    iput-boolean v3, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mSwitch:Z

    iput-boolean v2, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mStarted:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->random:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public addMonitorItem(Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mSwitch:Z

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->cmd:Ljava/lang/String;

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mMonitorItemMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_3

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mStarted:Z

    if-nez v0, :cond_0

    const-wide/32 v0, 0xea60

    invoke-virtual {p0, v0, v1}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->startUpload(J)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mLastUploadTs:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->startUpload(J)V

    goto :goto_0
.end method

.method protected abstract doPostData()Z
.end method

.method public getStasticServerAddr()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isLiveApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaseDataMonitor"

    const-string v1, "static server addr = http://dzb.g.mi.com/c.do"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://dzb.g.mi.com/c.do"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "https://d.g.mi.com/c.do\u200b"

    goto :goto_0
.end method

.method public getStaticServerAddIp()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isLiveApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaseDataMonitor"

    const-string v1, "static server Ip = http://dzb.g.mi.com/c.do"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "http://dzb.g.mi.com/c.do"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://120.92.24.141/c.do\u200b"

    goto :goto_0
.end method

.method public getStaticServerHost()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isLiveApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BaseDataMonitor"

    const-string v1, "static server host = dzb.g.mi.com"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dzb.g.mi.com"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "d.g.mi.com"

    goto :goto_0
.end method

.method protected processMessage(Landroid/os/Message;)V
    .locals 6

    const/16 v5, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mLastUploadTs:J

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-lt v1, v4, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    move v1, v0

    :goto_1
    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "connectivity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v3, :cond_5

    move v0, v2

    :goto_2
    if-eqz v0, :cond_3

    const-string v0, "BaseDataMonitor"

    const-string v3, "is Mobile"

    invoke-static {v0, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    const-string v0, "BaseDataMonitor"

    const-string v1, "Screen if off"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mLoopPost:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v5, v0, Landroid/os/Message;->what:I

    iget-wide v2, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mUploadInterval:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->doPostData()Z

    move-result v0

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->doPostData()Z

    move-result v0

    goto :goto_3

    :cond_4
    const-string v0, "BaseDataMonitor"

    const-string v1, "no more data"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method protected startUpload(J)V
    .locals 3

    const/16 v1, 0xa

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mStarted:Z

    invoke-virtual {p0, v1}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->removeMessage(I)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    return-void
.end method

.method protected abstract toJson(Ljava/util/concurrent/ConcurrentHashMap;)Ljava/lang/String;
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
.end method

.method public trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V
    .locals 15

    const-string v1, "mlink_cmd"

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v13

    move-object v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-virtual/range {v0 .. v13}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->trace(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;)V

    return-void
.end method

.method public trace(Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;Ljava/lang/String;)V
    .locals 17

    const-string v1, "mlink_cmd"

    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getUserId()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    invoke-virtual/range {v0 .. v15}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->trace(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/mi/milink/sdk/debug/BaseDataMonitor$1;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move-object/from16 v17, p13

    invoke-direct/range {v3 .. v17}, Lcom/mi/milink/sdk/debug/BaseDataMonitor$1;-><init>(Lcom/mi/milink/sdk/debug/BaseDataMonitor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public trace(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/mi/milink/sdk/debug/BaseDataMonitor$2;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    invoke-direct/range {v3 .. v19}, Lcom/mi/milink/sdk/debug/BaseDataMonitor$2;-><init>(Lcom/mi/milink/sdk/debug/BaseDataMonitor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected traceToServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    new-instance v3, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;

    invoke-direct {v3}, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;-><init>()V

    iput-object p4, v3, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->cmd:Ljava/lang/String;

    sub-long v4, p8, p6

    iput-wide v4, v3, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->waste:J

    if-nez p5, :cond_2

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v3, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->isSuccess:Z

    iput p5, v3, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->errorCode:I

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, v3, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->accip:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->getApnName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->apn:Ljava/lang/String;

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->getApnType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->apnType:Ljava/lang/String;

    iput p3, v3, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->port:I

    move/from16 v0, p12

    int-to-long v4, v0

    iput-wide v4, v3, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->seq:J

    const-string v2, "milink.firstheartbeat"

    iget-object v4, v3, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "milink.handshake"

    iget-object v4, v3, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->cmd:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    move-object/from16 v0, p14

    iput-object v0, v3, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->clientIp:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, v3, Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;->clientIsp:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->addMonitorItem(Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const-string v2, ""

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->mSamplingStatisticsSwitch:Z

    if-nez v2, :cond_5

    invoke-virtual {p0, v3}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->addMonitorItem(Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->random:Ljava/util/Random;

    const/16 v4, 0x64

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/config/ConfigManager;->getSamplingStatisticsFactor()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/mi/milink/sdk/debug/BaseDataMonitor;->addMonitorItem(Lcom/mi/milink/sdk/debug/BaseDataMonitor$MonitorItem;)V

    goto :goto_2
.end method
