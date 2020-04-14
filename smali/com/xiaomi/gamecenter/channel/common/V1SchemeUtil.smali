.class public Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil$ChannelExistException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containV1Magic(Ljava/io/File;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sget-object v0, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v0, v0

    new-array v0, v0, [B

    sget-object v4, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v4, v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->isV1MagicMatch([B)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return v0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public static containV1Signature(Ljava/io/File;)Z
    .locals 7

    :try_start_0
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V

    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v3

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "META-INF/\\w+\\.SF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    const-wide/16 v2, 0x0

    :try_start_2
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v3, v4

    move-object v1, v4

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_4
    throw v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v3, v4

    goto :goto_0

    :catchall_2
    move-exception v2

    move-object v3, v0

    goto :goto_0
.end method

.method public static deleteChannel(Ljava/io/File;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v6, 0x2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param error , file : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sget-object v0, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v0, v0

    new-array v0, v0, [B

    sget-object v4, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v4, v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->isV1MagicMatch([B)Z

    move-result v0

    if-eqz v0, :cond_4

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v1}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->readShort(Ljava/io/DataInput;)S

    move-result v0

    if-lez v0, :cond_2

    int-to-long v4, v0

    sub-long/2addr v2, v4

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->writeShort(ILjava/io/DataOutput;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    sget-object v4, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v4, v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x2

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x1

    return v0

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "zip channel info not found"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_3
    throw v0

    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "zip v1 magic not found"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public static deleteChannelForCmd(Ljava/io/File;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v6, 0x2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param error , file : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->readChannel(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Apk doesn\'t have channel,can\'t delete it!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sget-object v0, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v0, v0

    new-array v0, v0, [B

    sget-object v4, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v4, v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->isV1MagicMatch([B)Z

    move-result v0

    if-eqz v0, :cond_5

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v1}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->readShort(Ljava/io/DataInput;)S

    move-result v0

    if-lez v0, :cond_3

    int-to-long v4, v0

    sub-long/2addr v2, v4

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->writeShort(ILjava/io/DataOutput;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    sget-object v4, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v4, v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x2

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x1

    return v0

    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "zip channel info not found"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_4
    throw v0

    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "zip v1 magic not found"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public static getEocd(Ljava/io/File;)Lcom/xiaomi/gamecenter/channel/common/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/xiaomi/gamecenter/channel/common/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getHashWithoutChannel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-wide/16 v2, 0x2000

    const-wide/16 v0, 0x0

    const/4 v12, 0x0

    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v6, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    sget-object v7, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v7, v7

    new-array v7, v7, [B

    sget-object v8, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v8, v8

    int-to-long v8, v8

    sub-long/2addr v4, v8

    invoke-virtual {v6, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v6, v7}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v7}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->isV1MagicMatch([B)Z

    move-result v7

    if-eqz v7, :cond_2

    const-wide/16 v8, 0x2

    sub-long/2addr v4, v8

    invoke-virtual {v6, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v6}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->readShort(Ljava/io/DataInput;)S

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v6, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    const/16 v5, 0x2000

    new-array v8, v5, [B

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    sget-object v5, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v5, v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    sub-long/2addr v10, v4

    move-wide v4, v0

    :goto_0
    cmp-long v0, v4, v10

    if-gez v0, :cond_1

    sub-long v0, v10, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    move-wide v0, v2

    :goto_1
    long-to-int v0, v0

    invoke-virtual {v6, v8, v12, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v9

    const/4 v0, -0x1

    if-eq v9, v0, :cond_1

    int-to-long v0, v9

    add-long/2addr v0, v4

    invoke-virtual {v7, v8, v12, v9}, Ljava/security/MessageDigest;->update([BII)V

    move-wide v4, v0

    goto :goto_0

    :cond_0
    sub-long v0, v10, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v12}, Ljava/security/MessageDigest;->update(B)V

    invoke-virtual {v7, v12}, Ljava/security/MessageDigest;->update(B)V

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/channel/common/util/MD5;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_2
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static isV1MagicMatch([B)Z
    .locals 4

    const/4 v1, 0x0

    array-length v0, p0

    sget-object v2, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v2, v2

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    sget-object v2, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    aget-byte v2, p0, v0

    sget-object v3, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    aget-byte v3, v3, v0

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static readChannel(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sget-object v0, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v0, v0

    new-array v0, v0, [B

    sget-object v4, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v4, v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->isV1MagicMatch([B)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v1}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->readShort(Ljava/io/DataInput;)S

    move-result v0

    if-lez v0, :cond_0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-static {v0}, Lcom/xiaomi/gamecenter/channel/common/util/AESEncryption;->Decrypt([B)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object v2

    :cond_0
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "zip channel info not found"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    throw v0

    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "zip v1 magic not found"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method private static readShort(Ljava/io/DataInput;)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-interface {p0, v0}, Ljava/io/DataInput;->readFully([B)V

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public static verifyChannel(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->readChannel(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static writeChannel(Ljava/io/File;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v10, 0x16

    const-wide/16 v8, 0x2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param error , file : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , channel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/gamecenter/channel/common/util/AESEncryption;->Encrypt(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->getEocd(Ljava/io/File;)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v3, 0x16

    if-ne v0, v3, :cond_2

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    array-length v2, v1

    add-int/lit8 v2, v2, 0x2

    sget-object v3, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-static {v2, v0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->writeShort(ILjava/io/DataOutput;)V

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    array-length v1, v1

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->writeShort(ILjava/io/DataOutput;)V

    sget-object v1, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :goto_0
    return-void

    :cond_2
    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->containV1Magic(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->readChannel(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    new-instance v1, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil$ChannelExistException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has a channel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", only ignore"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil$ChannelExistException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    const/16 v3, 0x14

    invoke-static {v0, v3}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v3

    array-length v0, v1

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    sget-object v4, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v4, v4

    add-int/2addr v4, v0

    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v5, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v10

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v4, v5}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->writeShort(ILjava/io/DataOutput;)V

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v10

    int-to-long v2, v3

    add-long/2addr v2, v6

    invoke-virtual {v5, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v5, v1}, Ljava/io/RandomAccessFile;->write([B)V

    array-length v0, v1

    invoke-static {v0, v5}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->writeShort(ILjava/io/DataOutput;)V

    sget-object v0, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    invoke-virtual {v5, v0}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_0
.end method

.method public static writeChannelForCp(Ljava/io/File;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-wide/16 v10, 0x16

    const-wide/16 v8, 0x2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "param error , file : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , channel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/gamecenter/channel/common/util/AESEncryption;->Encrypt(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->getEocd(Ljava/io/File;)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v3, 0x16

    if-ne v0, v3, :cond_3

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v0, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    sub-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    array-length v2, v1

    add-int/lit8 v2, v2, 0x2

    sget-object v3, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-static {v2, v0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->writeShort(ILjava/io/DataOutput;)V

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    array-length v1, v1

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->writeShort(ILjava/io/DataOutput;)V

    sget-object v1, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->containV1Magic(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    const/16 v3, 0x14

    invoke-static {v0, v3}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v3

    array-length v0, v1

    add-int/2addr v0, v3

    add-int/lit8 v0, v0, 0x2

    sget-object v4, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    array-length v4, v4

    add-int/2addr v4, v0

    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v5, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v10

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {v4, v5}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->writeShort(ILjava/io/DataOutput;)V

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v10

    int-to-long v2, v3

    add-long/2addr v2, v6

    invoke-virtual {v5, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v5, v1}, Ljava/io/RandomAccessFile;->write([B)V

    array-length v0, v1

    invoke-static {v0, v5}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->writeShort(ILjava/io/DataOutput;)V

    sget-object v0, Lcom/xiaomi/gamecenter/channel/common/ChannelConstants;->V1_MAGIC:[B

    invoke-virtual {v5, v0}, Ljava/io/RandomAccessFile;->write([B)V

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0
.end method

.method private static writeShort(ILjava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method
