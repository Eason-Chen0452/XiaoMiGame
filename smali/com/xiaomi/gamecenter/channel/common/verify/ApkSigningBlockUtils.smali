.class public final Lcom/xiaomi/gamecenter/channel/common/verify/ApkSigningBlockUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findApkSignatureSchemeBlock(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const/16 v6, 0x8

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    add-int/lit8 v0, v0, -0x18

    invoke-static {p0, v6, v0}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v6, :cond_0

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

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    :cond_1
    new-instance v1, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "APK Signing Block entry #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " size out of range: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    long-to-int v2, v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-le v2, v4, :cond_3

    new-instance v3, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "APK Signing Block entry #"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " size out of range: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", available: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    if-ne v4, p1, :cond_4

    add-int/lit8 v0, v2, -0x4

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_0

    :cond_5
    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No block with ID "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in APK Signing Block."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static findSignature(Ljava/io/RandomAccessFile;I)Lcom/xiaomi/gamecenter/channel/common/verify/SignatureInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSigningBlockUtils;->getEocd(Ljava/io/RandomAccessFile;)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "ZIP64 APK not supported"

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v8, v6, v7}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, p1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSigningBlockUtils;->findApkSignatureSchemeBlock(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/SignatureInfo;

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/gamecenter/channel/common/verify/SignatureInfo;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V

    return-object v0
.end method

.method static getEocd(Ljava/io/RandomAccessFile;)Lcom/xiaomi/gamecenter/channel/common/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
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

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string v1, "Not an APK file: ZIP End of Central Directory record not found"

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method
