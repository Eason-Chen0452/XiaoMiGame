.class public Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;
.super Ljava/lang/Object;


# static fields
.field private static final ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containV2Signature(Ljava/io/File;Z)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->getApkSigningBlock(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->getAllIdValue(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v0

    const v1, 0x7109871a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public static findCentralDir(Ljava/io/RandomAccessFile;JI)Lcom/xiaomi/gamecenter/channel/common/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "JI)",
            "Lcom/xiaomi/gamecenter/channel/common/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->getByteBuffer(Ljava/io/RandomAccessFile;JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static findContentEntry(Ljava/io/RandomAccessFile;I)Lcom/xiaomi/gamecenter/channel/common/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "I)",
            "Lcom/xiaomi/gamecenter/channel/common/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3, p1}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->getByteBuffer(Ljava/io/RandomAccessFile;JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static generateApkSigningBlock(Ljava/util/Map;)Ljava/nio/ByteBuffer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Ljava/nio/ByteBuffer;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getNewApkV2SchemeBlock , id value pair is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v0, 0x18

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    int-to-long v0, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x8

    add-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v4, v0, v6, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const-wide v0, 0x20676953204b5041L

    invoke-virtual {v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    const-wide v0, 0x3234206b636f6c42L    # 7.465385175170059E-67

    invoke-virtual {v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "generateNewApkV2SchemeBlock error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v4
.end method

.method public static getAllIdValue(Ljava/nio/ByteBuffer;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const/16 v8, 0x8

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    invoke-static {p0, v8, v0}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v3, v8, :cond_0

    new-instance v1, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Insufficient data to read size of APK Signing Block entry #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    const-wide/32 v6, 0x7fffffff

    cmp-long v3, v4, v6

    if-lez v3, :cond_2

    :cond_1
    new-instance v1, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "APK Signing Block entry #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " size out of range: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    long-to-int v3, v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v3, v5, :cond_3

    new-instance v2, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "APK Signing Block entry #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " size out of range: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", available: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v3, v3, -0x4

    invoke-static {v1, v3}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v2, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "not have Id-Value Pair in APK Signing Block entry #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    return-object v2
.end method

.method public static getApkSectionInfo(Ljava/io/File;)Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0, v4, v5}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v6

    sub-long/2addr v4, v0

    long-to-int v4, v4

    invoke-static {v2, v0, v1, v4}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->findCentralDir(Ljava/io/RandomAccessFile;JI)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v1

    invoke-virtual {v6}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v0, v4

    invoke-static {v2, v0}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->findContentEntry(Ljava/io/RandomAccessFile;I)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;

    invoke-direct {v2}, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;-><init>()V

    iput-object v0, v2, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mContentEntry:Lcom/xiaomi/gamecenter/channel/common/Pair;

    iput-object v6, v2, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mSchemeV2Block:Lcom/xiaomi/gamecenter/channel/common/Pair;

    iput-object v1, v2, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mCentralDir:Lcom/xiaomi/gamecenter/channel/common/Pair;

    iput-object v3, v2, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mEocd:Lcom/xiaomi/gamecenter/channel/common/Pair;

    return-object v2
.end method

.method public static getApkSigningBlock(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
            Ljava/io/IOException;
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

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0, v4, v5}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private static getByteBuffer(Ljava/io/RandomAccessFile;JI)Ljava/nio/ByteBuffer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    return-object v0
.end method

.method public static getHashWithoutChannel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    invoke-static {v4}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->getApkSectionInfo(Ljava/io/File;)Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;

    move-result-object v13

    iget-object v4, v13, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mSchemeV2Block:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->getAllIdValue(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v4

    const v5, 0x7109871a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v4, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v5, "No APK V2 Signature Scheme block in APK Signing Block"

    invoke-direct {v4, v5}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const v5, 0x4d494859    # 2.11060112E8f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const v5, 0x4d494859    # 2.11060112E8f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->generateApkSigningBlock(Ljava/util/Map;)Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v15

    iget-object v4, v13, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mContentEntry:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v16

    iget-object v4, v13, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mSchemeV2Block:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v18, v0

    iget-object v4, v13, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mCentralDir:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    iget-object v4, v13, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mEocd:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-int v4, v4

    add-int/lit8 v17, v4, 0x10

    new-instance v22, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x2000

    new-array v0, v4, [B

    move-object/from16 v23, v0

    const/4 v8, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v24

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v26

    :goto_1
    int-to-long v10, v8

    cmp-long v4, v10, v24

    if-gez v4, :cond_6

    if-eqz v6, :cond_8

    if-nez v9, :cond_8

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/security/MessageDigest;->update([B)V

    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    int-to-long v8, v8

    add-long v8, v8, v18

    long-to-int v8, v8

    const/4 v4, 0x1

    move v12, v4

    :goto_2
    if-eqz v5, :cond_7

    if-nez v7, :cond_7

    iget-object v4, v13, Lcom/xiaomi/gamecenter/channel/common/ApkSectionInfo;->mCentralDir:Lcom/xiaomi/gamecenter/channel/common/Pair;

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v28, v0

    sub-long v28, v18, v28

    sub-long v10, v10, v28

    long-to-int v4, v10

    invoke-static {v4}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->intToByteArray(I)[B

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    const/4 v4, 0x4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    add-int/lit8 v7, v8, 0x4

    const/4 v4, 0x1

    move v10, v4

    move v11, v7

    :goto_3
    if-nez v6, :cond_3

    add-int/lit16 v4, v11, 0x2000

    move/from16 v0, v16

    if-le v4, v0, :cond_3

    sub-int v7, v16, v11

    const/4 v6, 0x1

    move v4, v5

    :goto_4
    const/4 v5, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_6

    add-int v8, v11, v5

    const/4 v7, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v7, v5}, Ljava/security/MessageDigest;->update([BII)V

    move v7, v10

    move v5, v4

    move v9, v12

    goto :goto_1

    :cond_3
    if-nez v5, :cond_4

    add-int/lit16 v4, v11, 0x2000

    move/from16 v0, v17

    if-le v4, v0, :cond_4

    sub-int v5, v17, v11

    const/4 v4, 0x1

    move v7, v5

    goto :goto_4

    :cond_4
    int-to-long v8, v11

    sub-long v8, v24, v8

    const-wide/16 v28, 0x2000

    cmp-long v4, v8, v28

    if-lez v4, :cond_5

    const-wide/16 v8, 0x2000

    :goto_5
    long-to-int v7, v8

    move v4, v5

    goto :goto_4

    :cond_5
    int-to-long v8, v11

    sub-long v8, v24, v8

    goto :goto_5

    :cond_6
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual/range {v26 .. v26}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/gamecenter/channel/common/util/MD5;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    move v10, v7

    move v11, v8

    goto :goto_3

    :cond_8
    move v12, v9

    goto/16 :goto_2
.end method

.method private static intToByteArray(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static verifyChannelApk(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier;->hasSignature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static writeUnInt64(JLjava/io/DataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method
