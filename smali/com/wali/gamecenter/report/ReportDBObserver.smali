.class public Lcom/wali/gamecenter/report/ReportDBObserver;
.super Ljava/lang/Object;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/wali/gamecenter/report/ReportDBObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/wali/gamecenter/report/ReportManager;->isCTAluseable:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/wali/gamecenter/report/ReportManager;->isDebugging:Z

    if-eqz v0, :cond_0

    const-string v0, "ReportManager"

    const-string v1, "CTA mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/wali/gamecenter/report/ReportManager;->isDebugging:Z

    if-eqz v0, :cond_2

    const-string v0, "ReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "***** Report database is changed ***** selfChange="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/wali/gamecenter/report/db/DBManager;->getReportDao()Lcom/wali/gamecenter/report/db/ReportDataDao;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportManager;->stopCheck()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/wali/gamecenter/report/ReportManager;->mDBSyncObj:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/wali/gamecenter/report/db/DBManager;->getReportDao()Lcom/wali/gamecenter/report/db/ReportDataDao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/db/ReportDataDao;->queryBuilder()Lcom/xiaomi/greendao/query/e;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_c

    :try_start_2
    invoke-virtual {v1}, Lcom/xiaomi/greendao/query/e;->b()Lcom/xiaomi/greendao/query/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/greendao/query/b;->a()J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v2

    :goto_1
    :try_start_3
    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/wali/gamecenter/report/ReportManager;->isDebugging:Z

    if-eqz v0, :cond_3

    const-string v0, "ReportManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cursor count = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    cmp-long v0, v2, v4

    if-gtz v0, :cond_4

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportManager;->checkTime()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    move-wide v2, v4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0xa

    cmp-long v0, v2, v4

    if-gez v0, :cond_5

    if-nez p1, :cond_b

    :cond_5
    :try_start_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/xiaomi/greendao/query/e;->a()Lcom/xiaomi/greendao/query/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/greendao/query/d;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wali/gamecenter/report/db/ReportData;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/db/ReportData;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/db/ReportData;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/db/ReportData;->getParam()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/wali/gamecenter/report/utils/ReportUtils;->decryptUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "post"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/wali/gamecenter/report/ReportManager;->isDebugging:Z

    if-eqz v3, :cond_6

    const-string v3, "ReportManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "POST cursor value = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/wali/gamecenter/report/ReportManager;->isDebugging:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/wali/gamecenter/report/ReportManager;->isDebugging:Z

    if-eqz v3, :cond_8

    const-string v3, "ReportManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GET cursor value = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const-string v3, "_rr_"

    new-instance v4, Lcom/wali/gamecenter/report/InsertRecord;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Lcom/wali/gamecenter/report/InsertRecord;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0xa

    invoke-static {v3, v4, v0}, Lcom/wali/gamecenter/report/utils/AutoThreadFactory;->AppendTask(Ljava/lang/String;Ljava/lang/Runnable;I)V

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_a

    sget-object v1, Lcom/wali/gamecenter/report/ReportManager;->mDBSyncObj:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    :try_start_8
    invoke-static {}, Lcom/wali/gamecenter/report/db/DBManager;->getReportDao()Lcom/wali/gamecenter/report/db/ReportDataDao;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/wali/gamecenter/report/db/ReportDataDao;->deleteByKeyInTx(Ljava/lang/Iterable;)V

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_a
    :try_start_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/wali/gamecenter/report/ReportManager;->postReport(Ljava/util/ArrayList;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    :cond_b
    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportManager;->checkTime()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_3

    :cond_c
    move-wide v2, v4

    goto/16 :goto_1
.end method
