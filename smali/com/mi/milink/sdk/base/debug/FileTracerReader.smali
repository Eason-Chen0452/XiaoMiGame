.class public Lcom/mi/milink/sdk/base/debug/FileTracerReader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/base/debug/FileTracerReader$ReaderCallback;
    }
.end annotation


# static fields
.field private static final DEF_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConfig:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/milink/sdk/base/debug/FileTracerReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/milink/sdk/base/debug/FileTracerReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mi/milink/sdk/base/debug/FileTracer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/mi/milink/sdk/base/debug/FileTracer;->getConfig()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/base/debug/FileTracerReader;-><init>(Lcom/mi/milink/sdk/base/debug/FileTracerConfig;)V

    return-void
.end method

.method public constructor <init>(Lcom/mi/milink/sdk/base/debug/FileTracerConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/mi/milink/sdk/base/debug/FileTracerReader;->setConfig(Lcom/mi/milink/sdk/base/debug/FileTracerConfig;)V

    return-void
.end method

.method private doPack(JLjava/io/File;)Ljava/io/File;
    .locals 11

    const/16 v5, 0x2000

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/base/debug/FileTracerReader;->getConfig()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mi/milink/sdk/base/debug/FileTracerReader;->getConfig()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v6

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mi/milink/sdk/base/debug/FileTracerReader;->getConfig()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getFileExt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    if-nez v6, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/base/debug/FileTracerReader;->getConfig()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    new-array v7, v5, [B

    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    array-length v8, v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v5, v3

    move-object v4, v1

    :goto_1
    if-ge v5, v8, :cond_3

    :try_start_3
    aget-object v9, v6, v5

    invoke-static {v4}, Lcom/mi/milink/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_2
    const/4 v4, 0x0

    const/16 v9, 0x2000

    :try_start_4
    invoke-virtual {v3, v7, v4, v9}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {v2}, Lcom/mi/milink/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/mi/milink/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    move-object v4, v3

    goto :goto_1

    :cond_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    invoke-static {v2}, Lcom/mi/milink/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/mi/milink/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v4, v1

    :goto_4
    invoke-static {v2}, Lcom/mi/milink/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/mi/milink/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v4, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v4, v3

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v3, v1

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v3, v4

    goto :goto_3
.end method


# virtual methods
.method public getConfig()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/base/debug/FileTracerReader;->mConfig:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    return-object v0
.end method

.method public pack(JLjava/io/File;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mi/milink/sdk/base/debug/FileTracerReader;->pack(JLjava/io/File;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public pack(JLjava/io/File;Z)Ljava/io/File;
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/mi/milink/sdk/base/debug/FileTracerReader;->doPack(JLjava/io/File;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p4, :cond_2

    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/util/FileUtils;->zip(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public read(J[BIIILcom/mi/milink/sdk/base/debug/FileTracerReader$ReaderCallback;)Z
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p7, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    if-nez p3, :cond_1

    const/16 v2, 0x2000

    new-array v0, v2, [B

    move-object/from16 p3, v0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/base/debug/FileTracerReader;->getConfig()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mi/milink/sdk/base/debug/FileTracerReader;->getConfig()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/mi/milink/sdk/base/debug/FileTracerReader;->getConfig()Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/mi/milink/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    const/4 v4, 0x0

    :goto_1
    :try_start_0
    array-length v3, v6

    move/from16 v0, p4

    if-ge v0, v3, :cond_5

    aget-object v3, v6, p4

    move/from16 v0, p5

    int-to-long v8, v0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v5, v8, v10

    if-lez v5, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v3, v8

    sub-int v3, p5, v3

    :goto_2
    add-int/lit8 p4, p4, 0x1

    move/from16 p5, v3

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lcom/mi/milink/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez p5, :cond_6

    move/from16 v0, p5

    int-to-long v2, v0

    :try_start_1
    invoke-virtual {v5, v2, v3}, Ljava/io/BufferedInputStream;->skip(J)J

    const/4 v3, 0x0

    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p3

    array-length v4, v0

    move-object/from16 v0, p3

    invoke-virtual {v5, v0, v2, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_4

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-interface {v0, p0, v1, v2}, Lcom/mi/milink/sdk/base/debug/FileTracerReader$ReaderCallback;->onTraceRead(Lcom/mi/milink/sdk/base/debug/FileTracerReader;[BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v4, v5

    :goto_4
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x0

    invoke-static {v4}, Lcom/mi/milink/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    move-object v4, v5

    goto :goto_2

    :cond_5
    invoke-static {v4}, Lcom/mi/milink/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    move-object v4, v5

    :goto_5
    invoke-static {v4}, Lcom/mi/milink/sdk/util/CommonUtils;->closeDataObject(Ljava/lang/Object;)Z

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    goto :goto_4

    :cond_6
    move/from16 v3, p5

    goto :goto_3
.end method

.method public setConfig(Lcom/mi/milink/sdk/base/debug/FileTracerConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/base/debug/FileTracerReader;->mConfig:Lcom/mi/milink/sdk/base/debug/FileTracerConfig;

    return-void
.end method
