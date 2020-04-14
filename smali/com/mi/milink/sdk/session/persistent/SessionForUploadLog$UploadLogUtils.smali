.class Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UploadLogUtils"
.end annotation


# static fields
.field public static final ALL:I = -0x1

.field public static final BEFORE_YEST:I = 0x2

.field public static final TODAY:I = 0x0

.field public static final YESTODAY:I = 0x1


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTemp([Ljava/io/File;)Ljava/io/File;
    .locals 13

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getLogPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "temp.zip"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v7, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v0, 0x400

    new-array v8, v0, [B

    const/high16 v0, 0xa00000

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isWifi()Z

    move-result v2

    if-eqz v2, :cond_4

    const/high16 v0, 0x5000000

    move v6, v0

    :goto_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v4

    :goto_1
    if-ltz v2, :cond_2

    if-ge v3, v6, :cond_2

    new-instance v0, Ljava/io/FileInputStream;

    aget-object v5, p0, v2

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v9, Ljava/io/BufferedInputStream;

    const/16 v5, 0x400

    invoke-direct {v9, v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    move v0, v4

    :goto_2
    if-ltz v5, :cond_3

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2f

    if-ne v11, v12, :cond_0

    add-int/lit8 v0, v0, 0x1

    const/4 v11, 0x3

    if-ne v0, v11, :cond_0

    move v0, v5

    :goto_3
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v10, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, v0}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    move v0, v4

    :goto_4
    const/4 v5, 0x0

    const/16 v10, 0x400

    invoke-virtual {v9, v8, v5, v10}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v5

    const/4 v10, -0x1

    if-eq v5, v10, :cond_1

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v10, v5}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    add-int/2addr v3, v5

    add-int/2addr v0, v5

    goto :goto_4

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "sigleFileSize:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/BufferedInputStream;->close()V

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "fileTotalSize:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    :goto_5
    invoke-static {}, Ljava/lang/System;->gc()V

    return-object v0

    :catch_0
    move-exception v1

    move-object v2, v1

    :goto_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception v2

    move-object v0, v1

    goto :goto_6

    :cond_3
    move v0, v4

    goto :goto_3

    :cond_4
    move v6, v0

    goto/16 :goto_0
.end method

.method static getFileBytes(Ljava/io/File;)[B
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    const v4, 0x7d000

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v4, 0x2800

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v0, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    const-string v2, "SessionForUploadLog"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "compress file len="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static getFileRecursion(Ljava/io/File;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3, p1}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogUtils;->getFileRecursion(Ljava/io/File;Ljava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getLogFile(I)[Ljava/io/File;
    .locals 6

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getLogPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SessionForUploadLog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dir:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    packed-switch p0, :pswitch_data_0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogUtils;->getFileRecursion(Ljava/io/File;Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/io/File;

    const/4 v0, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    add-int/lit8 v2, v1, 0x1

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_0

    :pswitch_0
    const-wide/32 v4, 0x5265c00

    sub-long/2addr v0, v4

    :goto_1
    :pswitch_1
    const-string v3, "yyyy-MM-dd"

    invoke-static {v3}, Lcom/mi/milink/sdk/util/CommonUtils;->createDataFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogUtils$1;

    invoke-direct {v0}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$UploadLogUtils$1;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    :goto_2
    return-object v0

    :pswitch_2
    const-wide/32 v4, 0xa4cb800

    sub-long/2addr v0, v4

    goto :goto_1

    :cond_0
    move-object v0, v3

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
