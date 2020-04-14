.class public final Lcom/xiaomi/hy/dj/pbformat/HexUtils;
.super Ljava/lang/Object;


# static fields
.field static final HEX_CHARS:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaomi/hy/dj/pbformat/HexUtils;->HEX_CHARS:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHexString(BI)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p0, 0xff

    const/4 v2, 0x0

    sget-object v3, Lcom/xiaomi/hy/dj/pbformat/HexUtils;->HEX_CHARS:[B

    ushr-int/lit8 v4, v1, 0x4

    aget-byte v3, v3, v4

    aput-byte v3, v0, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/xiaomi/hy/dj/pbformat/HexUtils;->HEX_CHARS:[B

    and-int/lit8 v1, v1, 0xf

    aget-byte v1, v3, v1

    aput-byte v1, v0, v2

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ASCII"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    if-lez v0, :cond_0

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
