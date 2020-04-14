.class public abstract Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;
.super Ljava/lang/Object;


# static fields
.field private static final UINT16_MAX_VALUE:I = 0xffff

.field private static final ZIP64_EOCD_LOCATOR_SIG_REVERSE_BYTE_ORDER:I = 0x504b0607

.field private static final ZIP64_EOCD_LOCATOR_SIZE:I = 0x14

.field private static final ZIP_EOCD_CENTRAL_DIR_OFFSET_FIELD_OFFSET:I = 0x10

.field private static final ZIP_EOCD_CENTRAL_DIR_SIZE_FIELD_OFFSET:I = 0xc

.field private static final ZIP_EOCD_COMMENT_LENGTH_FIELD_OFFSET:I = 0x14

.field public static final ZIP_EOCD_REC_MIN_SIZE:I = 0x16

.field private static final ZIP_EOCD_REC_SIG:I = 0x6054b50


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
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

.method private static findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I
    .locals 7

    const/4 v0, -0x1

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const/16 v2, 0x16

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int/lit8 v2, v1, -0x16

    const v3, 0xffff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v4, v1, -0x16

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    sub-int v1, v4, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    const v6, 0x6054b50

    if-ne v5, v6, :cond_2

    add-int/lit8 v5, v1, 0x14

    invoke-static {p0, v5}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->getUnsignedInt16(Ljava/nio/ByteBuffer;I)I

    move-result v5

    if-ne v5, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method static findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Lcom/xiaomi/gamecenter/channel/common/Pair;
    .locals 4
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
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0xffff

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method private static findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;I)Lcom/xiaomi/gamecenter/channel/common/Pair;
    .locals 8
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

    const-wide/16 v6, 0x16

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    const v1, 0xffff

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxCommentSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-gez v1, :cond_3

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    int-to-long v4, p1

    sub-long v6, v2, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    add-int/lit8 v1, v1, 0x16

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Ljava/io/RandomAccessFile;->readFully([BII)V

    invoke-static {v1}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/nio/ByteBuffer;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/channel/common/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUnsignedInt16(Ljava/nio/ByteBuffer;I)I
    .locals 2

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public static getUnsignedInt32(Ljava/nio/ByteBuffer;I)J
    .locals 4

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->getUnsignedInt32(Ljava/nio/ByteBuffer;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v2, 0x14

    sub-long v2, p1, v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    const v2, 0x504b0607

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uint32 value of out range: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    long-to-int v1, p2

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V
    .locals 1

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->assertByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    invoke-static {p0, v0, p1, p2}, Lcom/xiaomi/gamecenter/channel/common/verify/ZipUtils;->setUnsignedInt32(Ljava/nio/ByteBuffer;IJ)V

    return-void
.end method
