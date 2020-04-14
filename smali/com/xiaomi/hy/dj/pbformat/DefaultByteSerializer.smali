.class public Lcom/xiaomi/hy/dj/pbformat/DefaultByteSerializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/hy/dj/pbformat/ByteSerializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static unicodeEscaped(C)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x10

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x100

    if-ge p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u00"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x1000

    if-ge p0, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p1, v0}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const/16 v3, 0x20

    if-lt v2, v3, :cond_0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const-string v2, "\\a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_1
    const-string v2, "\\b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_2
    const-string v2, "\\f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_3
    const-string v2, "\\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_4
    const-string v2, "\\r"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_5
    const-string v2, "\\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_6
    const-string v2, "\\v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_7
    const-string v2, "\\\\"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_8
    const-string v2, "\\\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :sswitch_9
    const-string v2, "\\\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    int-to-char v2, v2

    invoke-static {v2}, Lcom/xiaomi/hy/dj/pbformat/DefaultByteSerializer;->unicodeEscaped(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_5
        0xa -> :sswitch_3
        0xb -> :sswitch_6
        0xc -> :sswitch_2
        0xd -> :sswitch_4
        0x22 -> :sswitch_9
        0x27 -> :sswitch_8
        0x5c -> :sswitch_7
    .end sparse-switch
.end method

.method public unescapeBytes(Ljava/lang/CharSequence;)Lcom/google/protobuf/ByteString;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;
        }
    .end annotation

    const/16 v7, 0x5c

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    new-array v5, v0, [B

    move v0, v1

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v0, v3, :cond_6

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_7

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->isOctal(C)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->digitValue(C)I

    move-result v0

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_0

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->isOctal(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->digitValue(C)I

    move-result v4

    add-int/2addr v0, v4

    :cond_0
    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->isOctal(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v0, 0x8

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->digitValue(C)I

    move-result v4

    add-int/2addr v0, v4

    :cond_1
    add-int/lit8 v4, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    move v2, v4

    :goto_1
    add-int/lit8 v0, v3, 0x1

    goto :goto_0

    :cond_2
    sparse-switch v0, :sswitch_data_0

    new-instance v1, Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid escape sequence: \'\\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    add-int/lit8 v0, v2, 0x1

    const/4 v4, 0x7

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_1
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x8

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_2
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xc

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_3
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xa

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_4
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xd

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_5
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x9

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_6
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0xb

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_7
    add-int/lit8 v0, v2, 0x1

    aput-byte v7, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_8
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x27

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_9
    add-int/lit8 v0, v2, 0x1

    const/16 v4, 0x22

    aput-byte v4, v5, v2

    move v2, v0

    goto :goto_1

    :sswitch_a
    add-int/lit8 v0, v3, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    add-int/lit8 v0, v3, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->isHex(C)Z

    move-result v0

    if-eqz v0, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->digitValue(C)I

    move-result v0

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v0, 0x10

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->digitValue(C)I

    move-result v4

    add-int/2addr v0, v4

    :cond_3
    add-int/lit8 v4, v2, 0x1

    int-to-byte v0, v0

    aput-byte v0, v5, v2

    move v2, v4

    goto/16 :goto_1

    :cond_4
    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;

    const-string v1, "Invalid escape sequence: \'\\x\' with no digits"

    invoke-direct {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_b
    add-int/lit8 v0, v3, 0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->digitValue(C)I

    move-result v0

    mul-int/lit8 v0, v0, 0x30

    add-int/lit8 v4, v3, 0x2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->digitValue(C)I

    move-result v4

    mul-int/lit8 v4, v4, 0x20

    add-int/2addr v0, v4

    add-int/lit8 v4, v3, 0x3

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->digitValue(C)I

    move-result v4

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v0, v4

    add-int/lit8 v4, v3, 0x4

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/xiaomi/hy/dj/pbformat/TextUtils;->digitValue(C)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v4, v3, 0x4

    move v3, v0

    :goto_2
    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, v3

    aput-byte v3, v5, v2

    move v3, v4

    move v2, v0

    goto/16 :goto_1

    :cond_5
    new-instance v0, Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;

    const-string v1, "Invalid escape sequence: \'\\\' at end of string."

    invoke-direct {v0, v1}, Lcom/xiaomi/hy/dj/pbformat/InvalidEscapeSequence;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {v5, v1, v2}, Lcom/google/protobuf/ByteString;->copyFrom([BII)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_7
    move v4, v0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_9
        0x27 -> :sswitch_8
        0x5c -> :sswitch_7
        0x61 -> :sswitch_0
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x72 -> :sswitch_4
        0x74 -> :sswitch_5
        0x75 -> :sswitch_b
        0x76 -> :sswitch_6
        0x78 -> :sswitch_a
    .end sparse-switch
.end method
