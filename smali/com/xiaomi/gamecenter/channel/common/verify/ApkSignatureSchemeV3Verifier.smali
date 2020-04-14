.class public Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;
    }
.end annotation


# static fields
.field public static final ANDROID_COMMON_PAGE_ALIGNMENT_BYTES:I = 0x1000

.field public static final APK_SIGNATURE_SCHEME_V3_BLOCK_ID:I = -0xfac9740

.field public static final VERITY_PADDING_BLOCK_ID:I = 0x42726577


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static findApkSigningBlock(Ljava/io/RandomAccessFile;J)Lcom/xiaomi/gamecenter/channel/common/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J)",
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
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;
        }
    .end annotation

    const/4 v8, 0x0

    const-wide/16 v0, 0x20

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x18

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    int-to-long v2, v1

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    const-wide v4, 0x20676953204b5041L

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    const-wide v4, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;

    const-string v1, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    const-wide/32 v0, 0x7ffffff7

    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    :cond_3
    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "APK Signing Block size out of range: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-wide/16 v0, 0x8

    add-long/2addr v0, v2

    long-to-int v0, v0

    int-to-long v4, v0

    sub-long v4, p1, v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-gez v1, :cond_5

    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "APK Signing Block offset out of range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    invoke-virtual {p0, v1, v6, v7}, Ljava/io/RandomAccessFile;->readFully([BII)V

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-eqz v1, :cond_6

    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "APK Signing Block sizes in header and footer do not match: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " vs "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v0

    return-object v0
.end method

.method public static findCentralDirStartOffset(Ljava/nio/channels/FileChannel;J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x6

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static findSignature(Ljava/io/RandomAccessFile;)Lcom/xiaomi/gamecenter/channel/common/verify/SignatureInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;
        }
    .end annotation

    const v0, -0xfac9740

    :try_start_0
    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSigningBlockUtils;->findSignature(Ljava/io/RandomAccessFile;I)Lcom/xiaomi/gamecenter/channel/common/verify/SignatureInfo;
    :try_end_0
    .catch Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getCentralDirOffset(Ljava/nio/ByteBuffer;J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    new-instance v2, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ZIP Central Directory offset out of range: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". ZIP End of Central Directory offset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    add-long/2addr v2, v0

    cmp-long v2, v2, p1

    if-eqz v2, :cond_1

    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;

    const-string v1, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-wide v0
.end method

.method public static getEocd(Ljava/io/RandomAccessFile;)Lcom/xiaomi/gamecenter/channel/common/Pair;
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
            Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;

    const-string v1, "Not an APK file: ZIP End of Central Directory record not found"

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method public static hasSignature(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v3, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    :try_start_1
    invoke-static {v3}, Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier;->findSignature(Ljava/io/RandomAccessFile;)Lcom/xiaomi/gamecenter/channel/common/verify/SignatureInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_1
    :try_start_5
    throw v1

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Lcom/xiaomi/gamecenter/channel/common/verify/ApkSignatureSchemeV3Verifier$SignatureNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1
.end method
