.class public Lcom/xiaomi/gamecenter/channel/writer/IdValueWriter;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIdValue(Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;Ljava/io/File;ILjava/nio/ByteBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const v0, 0x7109871a

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "addIdValue , id can not is 1896449818 , v2 signature block use it"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/xiaomi/gamecenter/channel/writer/IdValueWriter;->addIdValueByteBufferMap(Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;Ljava/io/File;Ljava/util/Map;)V

    return-void
.end method

.method public static addIdValue(Ljava/io/File;I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0, p0, p1, p2}, Lcom/xiaomi/gamecenter/channel/writer/IdValueWriter;->addIdValue(Ljava/io/File;Ljava/io/File;I[B)V

    return-void
.end method

.method public static addIdValue(Ljava/io/File;Ljava/io/File;I[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->getApkSectionInfo(Ljava/io/File;)Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;

    move-result-object v0

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-static {v0, p1, p2, v1}, Lcom/xiaomi/gamecenter/channel/writer/IdValueWriter;->addIdValue(Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;Ljava/io/File;ILjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static addIdValueByteBufferMap(Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;Ljava/io/File;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const v1, 0x7109871a

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "addIdValueByteBufferMap , id value pair is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mSchemeV2Block:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->getAllIdValue(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "No APK V2 Signature Scheme block in APK Signing Block"

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {v0}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->generateApkSigningBlock(Ljava/util/Map;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mContentEntry:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mCentralDir:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mEocd:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mCentralDir:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    iget-object v3, p0, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mSchemeV2Block:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    sub-int v3, v5, v3

    int-to-long v8, v3

    add-long/2addr v6, v8

    invoke-static {v2, v6, v7}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v3, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v5, v6

    int-to-long v6, v5

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v3, v5, v8, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v5, v8

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v3, v0, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-void
.end method

.method public static addIdValueByteMap(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "addIdValueByteMap , idValueByteMap is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->getApkSectionInfo(Ljava/io/File;)Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v2, p1, v3}, Lcom/xiaomi/gamecenter/channel/writer/IdValueWriter;->addIdValueByteBufferMap(Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;Ljava/io/File;Ljava/util/Map;)V

    return-void
.end method

.method public static addIdValueByteMap(Ljava/io/File;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0, p0, p1}, Lcom/xiaomi/gamecenter/channel/writer/IdValueWriter;->addIdValueByteMap(Ljava/io/File;Ljava/io/File;Ljava/util/Map;)V

    return-void
.end method

.method public static deleteIdValue(Ljava/io/File;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0, p0, p1}, Lcom/xiaomi/gamecenter/channel/writer/IdValueWriter;->deleteIdValue(Ljava/io/File;Ljava/io/File;I)V

    return-void
.end method

.method public static deleteIdValue(Ljava/io/File;Ljava/io/File;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->getApkSectionInfo(Ljava/io/File;)Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/xiaomi/gamecenter/channel/writer/IdValueWriter;->deleteIdValueByteBufferMap(Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;Ljava/io/File;I)V

    return-void
.end method

.method public static deleteIdValueByteBufferMap(Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;Ljava/io/File;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const v1, 0x7109871a

    if-ne p2, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "deleteIdValueByteBufferMap , idValue cant be signature scheme idValue  is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mSchemeV2Block:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->getAllIdValue(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "No APK V2 Signature Scheme block in APK Signing Block"

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No Block Id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in APK Signing Block"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->generateApkSigningBlock(Ljava/util/Map;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mContentEntry:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mCentralDir:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mEocd:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mCentralDir:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v3, p0, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mSchemeV2Block:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    sub-int/2addr v3, v5

    int-to-long v8, v3

    sub-long/2addr v6, v8

    invoke-static {v2, v6, v7}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v3, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/2addr v5, v6

    int-to-long v6, v5

    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v3, v5, v8, v0}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v5, v8

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v3, v0, v1, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-virtual {v3, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-void
.end method
