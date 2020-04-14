.class public Lcom/wali/gamecenter/report/log/ReportLog;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/wali/gamecenter/report/log/ILogAppender;


# static fields
.field public static final MAX_FILE_SIZE:I = 0x3200000


# instance fields
.field private logfile:Ljava/io/FileWriter;

.field private mFile:Ljava/io/File;

.field private writer:Ljava/io/BufferedWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wali/gamecenter/report/log/ReportLog;->mFile:Ljava/io/File;

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wali/gamecenter/report/log/ReportLog;->mFile:Ljava/io/File;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lcom/wali/gamecenter/report/log/ReportLog;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/wali/gamecenter/report/log/ReportLog;->logfile:Ljava/io/FileWriter;

    new-instance v0, Ljava/io/BufferedWriter;

    iget-object v1, p0, Lcom/wali/gamecenter/report/log/ReportLog;->logfile:Ljava/io/FileWriter;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lcom/wali/gamecenter/report/log/ReportLog;->writer:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized appendLog(Lcom/wali/gamecenter/report/log/ReportLog$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/wali/gamecenter/report/log/ReportLog;->logfile:Ljava/io/FileWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-nez p3, :cond_4

    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p4, :cond_2

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%1$tY/%1$tm/%1$td %1$tH:%1$tM [%2$-5s]-[%3$s] %4$s\r\n"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/wali/gamecenter/report/log/ReportLog$LOG_LEVEL;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    aput-object p2, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/wali/gamecenter/report/log/ReportLog;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    sget-object v0, Lcom/wali/gamecenter/report/log/ReportLog$LOG_LEVEL;->ERROR:Lcom/wali/gamecenter/report/log/ReportLog$LOG_LEVEL;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/wali/gamecenter/report/log/ReportLog$LOG_LEVEL;->DEBUG:Lcom/wali/gamecenter/report/log/ReportLog$LOG_LEVEL;

    if-ne p1, v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/wali/gamecenter/report/log/ReportLog;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move-object v0, p3

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wali/gamecenter/report/log/ReportLog;->mFile:Ljava/io/File;

    iget-object v0, p0, Lcom/wali/gamecenter/report/log/ReportLog;->logfile:Ljava/io/FileWriter;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/wali/gamecenter/report/log/ReportLog;->writer:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/wali/gamecenter/report/log/ReportLog;->logfile:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iput-object v1, p0, Lcom/wali/gamecenter/report/log/ReportLog;->logfile:Ljava/io/FileWriter;

    iput-object v1, p0, Lcom/wali/gamecenter/report/log/ReportLog;->writer:Ljava/io/BufferedWriter;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/wali/gamecenter/report/log/ReportLog$LOG_LEVEL;->DEBUG:Lcom/wali/gamecenter/report/log/ReportLog$LOG_LEVEL;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/wali/gamecenter/report/log/ReportLog;->appendLog(Lcom/wali/gamecenter/report/log/ReportLog$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/wali/gamecenter/report/log/ReportLog$LOG_LEVEL;->ERROR:Lcom/wali/gamecenter/report/log/ReportLog$LOG_LEVEL;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/wali/gamecenter/report/log/ReportLog;->appendLog(Lcom/wali/gamecenter/report/log/ReportLog$LOG_LEVEL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
