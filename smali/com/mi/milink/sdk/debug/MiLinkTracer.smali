.class public Lcom/mi/milink/sdk/debug/MiLinkTracer;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/mi/milink/sdk/base/debug/TraceLevel;


# static fields
.field protected static final CHANNEL_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

.field protected static final CLIENT_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

.field protected static final SERVICE_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

.field private static sInstance:Lcom/mi/milink/sdk/debug/MiLinkTracer;


# instance fields
.field private volatile enabled:Z

.field protected fileTracer:Lcom/mi/milink/sdk/base/debug/FileTracer;

.field private volatile fileTracerEnabled:Z

.field protected logcatTracer:Lcom/mi/milink/sdk/base/debug/LogcatTracer;

.field private volatile logcatTracerEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v12, 0x30

    const-wide/32 v6, 0xafc8

    const/high16 v3, 0x80000

    const v4, 0x8000

    const/16 v8, 0xa

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->sInstance:Lcom/mi/milink/sdk/debug/MiLinkTracer;

    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->getLogFilePath()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setLogPath(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    const v2, 0x7fffffff

    :goto_0
    const-string v0, "client.debug.file.keepperiod"

    const-wide/32 v10, 0xa4cb800

    invoke-static {v0, v10, v11}, Lcom/mi/milink/sdk/data/Option;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    new-instance v0, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    const-string v5, "Mns.Client.File.Tracer"

    const-string v9, ".app.log"

    invoke-direct/range {v0 .. v11}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V

    sput-object v0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->CLIENT_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    const v2, 0x7fffffff

    :goto_1
    const-string v0, "debug.file.keepperiod"

    const-wide/32 v10, 0xa4cb800

    invoke-static {v0, v10, v11}, Lcom/mi/milink/sdk/data/Option;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    new-instance v0, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    const-string v5, "Mns.File.Tracer"

    const-string v9, ".m.log"

    invoke-direct/range {v0 .. v11}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V

    sput-object v0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->SERVICE_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    new-instance v0, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    const-string v5, "Mns.File.Tracer"

    const-string v9, ".c.log"

    invoke-direct/range {v0 .. v11}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V

    sput-object v0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->CHANNEL_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    return-void

    :cond_0
    const-string v0, "client.debug.file.blockcount"

    invoke-static {v0, v12}, Lcom/mi/milink/sdk/data/Option;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_1
    const-string v0, "debug.file.blockcount"

    invoke-static {v0, v12}, Lcom/mi/milink/sdk/data/Option;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->enabled:Z

    iput-boolean v0, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->fileTracerEnabled:Z

    iput-boolean v0, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->logcatTracerEnabled:Z

    :try_start_0
    invoke-static {p0}, Lcom/mi/milink/sdk/data/Option;->startListen(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static autoTrace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->sInstance:Lcom/mi/milink/sdk/debug/MiLinkTracer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->sInstance:Lcom/mi/milink/sdk/debug/MiLinkTracer;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static cleanChannelLog()V
    .locals 4

    sget-object v0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->CHANNEL_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/mi/milink/sdk/debug/MiLinkTracer;->CHANNEL_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static cleanClientLog()V
    .locals 4

    sget-object v0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->CLIENT_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/mi/milink/sdk/debug/MiLinkTracer;->CLIENT_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static cleanMnsLog()V
    .locals 4

    sget-object v0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->SERVICE_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/mi/milink/sdk/debug/MiLinkTracer;->SERVICE_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getChannelLogReader(I)Ljava/io/BufferedReader;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->CHANNEL_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/mi/milink/sdk/debug/MiLinkTracer;->CHANNEL_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    sget-object v2, Lcom/mi/milink/sdk/debug/MiLinkTracer;->CHANNEL_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    if-ltz p0, :cond_2

    array-length v2, v0

    if-ge p0, v2, :cond_2

    array-length v2, v0

    sub-int/2addr v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getClientLogReader(I)Ljava/io/BufferedReader;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->CLIENT_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/mi/milink/sdk/debug/MiLinkTracer;->CLIENT_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    sget-object v2, Lcom/mi/milink/sdk/debug/MiLinkTracer;->CLIENT_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    if-ltz p0, :cond_2

    array-length v2, v0

    if-ge p0, v2, :cond_2

    array-length v2, v0

    sub-int/2addr v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getLogFileFolderPath()Ljava/io/File;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Xiaomi"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "logs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/StorageDash;->getExternalInfo()Lcom/mi/milink/sdk/base/os/info/StorageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mi/milink/sdk/base/os/info/StorageInfo;->getAvailableSize()J

    move-result-wide v2

    const-wide/32 v4, 0x5000000

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getLogPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getLogPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->getLogFileInternalPath()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLogFileInternalPath()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logs"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getLogPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getLogPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLogFilePath()Ljava/io/File;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Xiaomi"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "logs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/StorageDash;->getExternalInfo()Lcom/mi/milink/sdk/base/os/info/StorageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/mi/milink/sdk/base/os/info/StorageInfo;->getAvailableSize()J

    move-result-wide v2

    const-wide/32 v4, 0x5000000

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getLogPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getLogPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->getLogFileInternalPath()Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMnsLogReader(I)Ljava/io/BufferedReader;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->SERVICE_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v0

    sget-object v2, Lcom/mi/milink/sdk/debug/MiLinkTracer;->SERVICE_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    sget-object v2, Lcom/mi/milink/sdk/debug/MiLinkTracer;->SERVICE_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-virtual {v2, v0}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    if-ltz p0, :cond_1

    array-length v2, v0

    if-ge p0, v2, :cond_1

    array-length v2, v0

    sub-int/2addr v2, p0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static mergeFiles(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v1, p1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    :cond_2
    const/16 v2, 0x1000

    new-array v3, v2, [B

    move v2, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    new-instance v4, Ljava/io/FileInputStream;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_2
    const/4 v0, 0x0

    const/16 v5, 0x1000

    invoke-virtual {v4, v3, v0, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_3
    invoke-static {v0}, Lcom/mi/milink/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lcom/mi/milink/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_4
    invoke-static {v1}, Lcom/mi/milink/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_5
    invoke-static {v1}, Lcom/mi/milink/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_6
    invoke-static {v1}, Lcom/mi/milink/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v0, v2

    goto :goto_3
.end method

.method public static prepareReportLogFile(J)Ljava/io/File;
    .locals 14

    const/4 v12, 0x0

    const/high16 v10, 0x41c00000    # 24.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v0, 0x1

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    :cond_0
    sget-object v3, Lcom/mi/milink/sdk/debug/MiLinkTracer;->CLIENT_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    sget-object v1, Lcom/mi/milink/sdk/debug/MiLinkTracer;->SERVICE_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    sget-object v2, Lcom/mi/milink/sdk/debug/MiLinkTracer;->CHANNEL_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->getLogFilePath()Ljava/io/File;

    move-result-object v0

    const-string v6, "report.log"

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :goto_0
    invoke-virtual {v3, p0, p1}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    :cond_1
    invoke-virtual {v1, v6}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v1}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    move-result-object v1

    :cond_2
    invoke-virtual {v2, v6}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-virtual {v3, v2}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    move-object v9, v2

    :goto_1
    if-eqz v0, :cond_4

    array-length v2, v0

    int-to-float v2, v2

    move v6, v2

    :goto_2
    if-eqz v1, :cond_5

    array-length v2, v1

    int-to-float v2, v2

    move v8, v2

    :goto_3
    if-eqz v9, :cond_6

    array-length v2, v9

    int-to-float v2, v2

    move v3, v2

    :goto_4
    add-float v2, v6, v8

    add-float/2addr v2, v3

    cmpg-float v2, v2, v5

    if-gtz v2, :cond_7

    move-object v0, v7

    :goto_5
    return-object v0

    :cond_3
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move v6, v5

    goto :goto_2

    :cond_5
    move v8, v5

    goto :goto_3

    :cond_6
    move v3, v5

    goto :goto_4

    :cond_7
    add-float v2, v6, v8

    add-float v5, v2, v3

    div-float v2, v6, v5

    mul-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    div-float v2, v8, v5

    mul-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    div-float/2addr v3, v5

    mul-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-nez v6, :cond_a

    if-eqz v0, :cond_a

    array-length v5, v0

    if-lez v5, :cond_a

    add-int/lit8 v2, v2, -0x1

    if-nez v3, :cond_13

    if-le v2, v4, :cond_8

    add-int/lit8 v2, v2, -0x1

    :cond_8
    move v3, v4

    move v5, v2

    move v6, v4

    :goto_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_c

    :cond_9
    :goto_7
    if-lez v6, :cond_c

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    array-length v11, v0

    if-ge v10, v11, :cond_9

    array-length v10, v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x1

    aget-object v10, v0, v10

    invoke-interface {v2, v12, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_a
    if-nez v2, :cond_12

    if-eqz v1, :cond_12

    array-length v5, v1

    if-lez v5, :cond_12

    add-int/lit8 v2, v6, -0x1

    if-nez v3, :cond_11

    if-le v2, v4, :cond_b

    add-int/lit8 v2, v2, -0x1

    :cond_b
    move v3, v4

    move v5, v4

    move v6, v2

    goto :goto_6

    :cond_c
    if-eqz v1, :cond_e

    :cond_d
    :goto_8
    if-lez v5, :cond_e

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    array-length v6, v1

    if-ge v0, v6, :cond_d

    array-length v0, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v0, v6

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-interface {v4, v12, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_8

    :cond_e
    if-eqz v9, :cond_10

    :cond_f
    :goto_9
    if-lez v3, :cond_10

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    array-length v1, v9

    if-ge v0, v1, :cond_f

    array-length v0, v9

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v9, v0

    invoke-interface {v8, v12, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_9

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "------client log block count:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v7, v0}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->mergeFiles(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n------mns log block count:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v7, v0}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->mergeFiles(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "------client log block count:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v7, v0}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->mergeFiles(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)Z

    move-object v0, v7

    goto/16 :goto_5

    :cond_11
    move v5, v4

    move v6, v2

    goto/16 :goto_6

    :cond_12
    move v5, v2

    goto/16 :goto_6

    :cond_13
    move v5, v2

    move v6, v4

    goto/16 :goto_6

    :cond_14
    move-object v9, v2

    goto/16 :goto_1
.end method

.method public static prepareReportLogFile(JI)Ljava/io/File;
    .locals 26

    if-gez p2, :cond_0

    invoke-static/range {p0 .. p1}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->prepareReportLogFile(J)Ljava/io/File;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const-wide/16 v2, 0x1

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    :cond_1
    sget-object v12, Lcom/mi/milink/sdk/debug/MiLinkTracer;->CLIENT_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    sget-object v13, Lcom/mi/milink/sdk/debug/MiLinkTracer;->SERVICE_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    sget-object v14, Lcom/mi/milink/sdk/debug/MiLinkTracer;->CHANNEL_CONFIG:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->getLogFilePath()Ljava/io/File;

    move-result-object v2

    const-string v3, "report.log"

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :goto_1
    const/4 v8, 0x0

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    move/from16 v0, p2

    if-ge v8, v0, :cond_11

    add-int/lit8 v11, v3, 0x1

    const/4 v2, 0x7

    if-ge v3, v2, :cond_11

    move-wide/from16 v0, p0

    invoke-virtual {v12, v0, v1}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->isWorkFolderExists(J)Z

    move-result v2

    if-nez v2, :cond_2

    move-wide/from16 v0, p0

    invoke-virtual {v13, v0, v1}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->isWorkFolderExists(J)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    move-wide/from16 v0, p0

    invoke-virtual {v12, v0, v1}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v12, v2}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    move-result-object v2

    :cond_3
    invoke-virtual {v13, v4}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v13, v3}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    :cond_4
    invoke-virtual {v14, v4}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_18

    invoke-virtual {v14, v3}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    move-result-object v4

    move-object v10, v4

    :goto_3
    if-eqz v2, :cond_7

    array-length v4, v2

    int-to-float v4, v4

    move v9, v4

    :goto_4
    if-eqz v3, :cond_8

    array-length v4, v3

    int-to-float v4, v4

    move v7, v4

    :goto_5
    if-eqz v10, :cond_9

    array-length v4, v10

    int-to-float v4, v4

    move v6, v4

    :goto_6
    add-float v4, v9, v7

    add-float/2addr v4, v6

    const/16 v21, 0x0

    cmpg-float v4, v4, v21

    if-lez v4, :cond_17

    add-float v4, v9, v7

    add-float v21, v4, v6

    div-float v4, v9, v21

    const/high16 v9, 0x41c00000    # 24.0f

    mul-float/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v9

    div-float v4, v7, v21

    const/high16 v7, 0x41c00000    # 24.0f

    mul-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    div-float v6, v6, v21

    const/high16 v7, 0x41c00000    # 24.0f

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-nez v9, :cond_a

    if-eqz v2, :cond_a

    array-length v7, v2

    if-lez v7, :cond_a

    const/4 v9, 0x1

    add-int/lit8 v4, v4, -0x1

    if-nez v6, :cond_16

    const/4 v6, 0x1

    if-le v4, v6, :cond_5

    add-int/lit8 v4, v4, -0x1

    :cond_5
    const/4 v6, 0x1

    move v7, v4

    :goto_7
    if-eqz v2, :cond_14

    move v4, v8

    :goto_8
    if-lez v9, :cond_c

    add-int/lit8 v8, v9, -0x1

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v9

    array-length v0, v2

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_13

    array-length v9, v2

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v21

    sub-int v9, v9, v21

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v2, v9

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-interface {v0, v1, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    int-to-long v0, v4

    move-wide/from16 v22, v0

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v24

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v4, v0

    move v9, v8

    goto :goto_8

    :cond_6
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_4

    :cond_8
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_5

    :cond_9
    const/4 v4, 0x0

    move v6, v4

    goto/16 :goto_6

    :cond_a
    if-nez v4, :cond_16

    if-eqz v3, :cond_16

    array-length v7, v3

    if-lez v7, :cond_16

    const/4 v7, 0x1

    add-int/lit8 v4, v9, -0x1

    if-nez v6, :cond_15

    const/4 v6, 0x1

    if-le v4, v6, :cond_b

    add-int/lit8 v4, v4, -0x1

    :cond_b
    const/4 v6, 0x1

    move v9, v4

    goto :goto_7

    :cond_c
    move v2, v4

    :goto_9
    if-eqz v3, :cond_e

    move v4, v7

    :cond_d
    :goto_a
    if-lez v4, :cond_e

    add-int/lit8 v4, v4, -0x1

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v7

    array-length v8, v3

    if-ge v7, v8, :cond_d

    array-length v7, v3

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v3, v7

    const/4 v8, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v8, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    int-to-long v8, v2

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v22

    add-long v8, v8, v22

    long-to-int v2, v8

    goto :goto_a

    :cond_e
    if-eqz v10, :cond_10

    move v3, v6

    :cond_f
    :goto_b
    if-lez v3, :cond_10

    add-int/lit8 v3, v3, -0x1

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    array-length v6, v10

    if-ge v4, v6, :cond_f

    array-length v4, v10

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, -0x1

    aget-object v4, v10, v4

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v6, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    int-to-long v6, v2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    add-long/2addr v6, v8

    long-to-int v2, v6

    goto :goto_b

    :cond_10
    const-wide/32 v6, 0x5265c00

    sub-long p0, p0, v6

    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v3, v11

    move v8, v2

    goto/16 :goto_2

    :cond_11
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_12

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_12

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "------client log block count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v5, v2}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->mergeFiles(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n------mns log block count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v5, v2}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->mergeFiles(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n------mns log block count:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "------\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-static {v0, v5, v2}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->mergeFiles(Ljava/util/List;Ljava/io/File;Ljava/lang/String;)Z

    move-object v2, v5

    goto/16 :goto_0

    :cond_13
    move v9, v8

    goto/16 :goto_8

    :cond_14
    move v2, v8

    goto/16 :goto_9

    :cond_15
    move v9, v4

    goto/16 :goto_7

    :cond_16
    move v7, v4

    goto/16 :goto_7

    :cond_17
    move v3, v11

    goto/16 :goto_2

    :cond_18
    move-object v10, v4

    goto/16 :goto_3
.end method

.method public static setInstance(Lcom/mi/milink/sdk/debug/MiLinkTracer;)V
    .locals 0

    sput-object p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->sInstance:Lcom/mi/milink/sdk/debug/MiLinkTracer;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milink/sdk/base/debug/FileTracer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milink/sdk/base/debug/FileTracer;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/base/debug/FileTracer;->flush()V

    :cond_0
    return-void
.end method

.method public final isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->enabled:Z

    return v0
.end method

.method public final isFileTracerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->fileTracerEnabled:Z

    return v0
.end method

.method public final isLogcatTracerEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->logcatTracerEnabled:Z

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v1, 0x3f

    const/16 v4, 0x10

    const-string v0, "debug.file.tracelevel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "debug.file.tracelevel"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/data/Option;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MnsTracer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "File Trace Level Changed = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2, v5}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milink/sdk/base/debug/FileTracer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milink/sdk/base/debug/FileTracer;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/base/debug/FileTracer;->setTraceLevel(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "client.debug.file.tracelevel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "client.debug.file.tracelevel"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/data/Option;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MnsTracer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Client File Trace Level Changed = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2, v5}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milink/sdk/base/debug/FileTracer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milink/sdk/base/debug/FileTracer;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/base/debug/FileTracer;->setTraceLevel(I)V

    goto :goto_0

    :cond_2
    const-string v0, "debug.logcat.tracelevel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "debug.logcat.tracelevel"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/data/Option;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MnsTracer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Logcat Trace Level Changed = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2, v5}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->logcatTracer:Lcom/mi/milink/sdk/base/debug/LogcatTracer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->logcatTracer:Lcom/mi/milink/sdk/base/debug/LogcatTracer;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/base/debug/LogcatTracer;->setTraceLevel(I)V

    goto :goto_0

    :cond_3
    const-string v0, "client.debug.logcat.tracelevel"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "client.debug.logcat.tracelevel"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/data/Option;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "MnsTracer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Client Logcat Trace Level Changed = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v2, v5}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->logcatTracer:Lcom/mi/milink/sdk/base/debug/LogcatTracer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->logcatTracer:Lcom/mi/milink/sdk/base/debug/LogcatTracer;

    invoke-virtual {v1, v0}, Lcom/mi/milink/sdk/base/debug/LogcatTracer;->setTraceLevel(I)V

    goto/16 :goto_0
.end method

.method public final setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->enabled:Z

    return-void
.end method

.method public final setFileTracerEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milink/sdk/base/debug/FileTracer;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/base/debug/FileTracer;->flush()V

    iput-boolean p1, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->fileTracerEnabled:Z

    return-void
.end method

.method public final setFileTracerLevel(I)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milink/sdk/base/debug/FileTracer;

    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/base/debug/FileTracer;->setTraceLevel(I)V

    return-void
.end method

.method public final setLogcatTracerEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->logcatTracerEnabled:Z

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milink/sdk/base/debug/FileTracer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milink/sdk/base/debug/FileTracer;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/base/debug/FileTracer;->flush()V

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milink/sdk/base/debug/FileTracer;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/base/debug/FileTracer;->quit()V

    :cond_0
    return-void
.end method

.method public trace(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    invoke-virtual {p0}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->isFileTracerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milink/sdk/base/debug/FileTracer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->fileTracer:Lcom/mi/milink/sdk/base/debug/FileTracer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/mi/milink/sdk/base/debug/FileTracer;->trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/debug/MiLinkTracer;->isLogcatTracerEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getCustomTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(MiLinkSDK)("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    iget-object v0, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->logcatTracer:Lcom/mi/milink/sdk/base/debug/LogcatTracer;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mi/milink/sdk/debug/MiLinkTracer;->logcatTracer:Lcom/mi/milink/sdk/base/debug/LogcatTracer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, p1

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/mi/milink/sdk/base/debug/LogcatTracer;->trace(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getCustomTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")(MiLinkSDK)("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
