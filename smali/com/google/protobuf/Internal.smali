.class public Lcom/google/protobuf/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Internal$EnumLiteMap;,
        Lcom/google/protobuf/Internal$EnumLite;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    .line 388
    sget-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    return-void
.end method

.method public static byteArrayDefaultValue(Ljava/lang/String;)[B
    .locals 3
    .param p0, "bytes"    # Ljava/lang/String;

    .prologue
    .line 113
    :try_start_0
    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static byteBufferDefaultValue(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "bytes"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-static {p0}, Lcom/google/protobuf/Internal;->byteArrayDefaultValue(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static bytesDefaultValue(Ljava/lang/String;)Lcom/google/protobuf/ByteString;
    .locals 3
    .param p0, "bytes"    # Ljava/lang/String;

    .prologue
    .line 97
    :try_start_0
    const-string v1, "ISO-8859-1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static copyByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 3
    .param p0, "source"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 141
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 144
    .local v1, "temp":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 145
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 146
    .local v0, "result":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 148
    return-object v0
.end method

.method public static equals(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<[B>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v3, 0x0

    .line 276
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    move v1, v3

    .line 282
    :goto_0
    return v1

    .line 277
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 278
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    .line 279
    goto :goto_0

    .line 277
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static equalsByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p0, "a"    # Ljava/nio/ByteBuffer;
    .param p1, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 312
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 313
    const/4 v0, 0x0

    .line 317
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static equalsByteBuffer(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    const/4 v3, 0x0

    .line 326
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    move v1, v3

    .line 334
    :goto_0
    return v1

    .line 329
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 330
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-static {v1, v2}, Lcom/google/protobuf/Internal;->equalsByteBuffer(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    .line 331
    goto :goto_0

    .line 329
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 334
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static hashBoolean(Z)I
    .locals 1
    .param p0, "b"    # Z

    .prologue
    .line 246
    if-eqz p0, :cond_0

    const/16 v0, 0x4cf

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x4d5

    goto :goto_0
.end method

.method public static hashCode(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)I"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v1, 0x1

    .line 290
    .local v1, "hash":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 291
    .local v0, "bytes":[B
    mul-int/lit8 v3, v1, 0x1f

    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashCode([B)I

    move-result v4

    add-int v1, v3, v4

    .line 292
    goto :goto_0

    .line 293
    .end local v0    # "bytes":[B
    :cond_0
    return v1
.end method

.method public static hashCode([B)I
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 304
    invoke-static {p0}, Lcom/google/protobuf/LiteralByteString;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public static hashCodeByteBuffer(Ljava/nio/ByteBuffer;)I
    .locals 10
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v1, 0x1000

    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 356
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 358
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    invoke-static {v6, v7, v8, v9}, Lcom/google/protobuf/LiteralByteString;->hashCode(I[BII)I

    move-result v3

    .line 360
    .local v3, "h":I
    if-nez v3, :cond_0

    move v3, v5

    .line 376
    .end local v3    # "h":I
    :cond_0
    :goto_0
    return v3

    .line 364
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-le v6, v1, :cond_2

    .line 366
    .local v1, "bufferSize":I
    :goto_1
    new-array v0, v1, [B

    .line 367
    .local v0, "buffer":[B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 368
    .local v2, "duplicated":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 369
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    .line 370
    .restart local v3    # "h":I
    :goto_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lez v6, :cond_4

    .line 371
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-gt v6, v1, :cond_3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 373
    .local v4, "length":I
    :goto_3
    invoke-virtual {v2, v0, v7, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 374
    invoke-static {v3, v0, v7, v4}, Lcom/google/protobuf/LiteralByteString;->hashCode(I[BII)I

    move-result v3

    .line 375
    goto :goto_2

    .line 364
    .end local v0    # "buffer":[B
    .end local v1    # "bufferSize":I
    .end local v2    # "duplicated":Ljava/nio/ByteBuffer;
    .end local v3    # "h":I
    .end local v4    # "length":I
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    goto :goto_1

    .restart local v0    # "buffer":[B
    .restart local v1    # "bufferSize":I
    .restart local v2    # "duplicated":Ljava/nio/ByteBuffer;
    .restart local v3    # "h":I
    :cond_3
    move v4, v1

    .line 371
    goto :goto_3

    .line 376
    :cond_4
    if-nez v3, :cond_5

    :goto_4
    move v3, v5

    goto :goto_0

    :cond_5
    move v5, v3

    goto :goto_4
.end method

.method public static hashCodeByteBuffer(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 342
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/nio/ByteBuffer;>;"
    const/4 v1, 0x1

    .line 343
    .local v1, "hash":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 344
    .local v0, "bytes":Ljava/nio/ByteBuffer;
    mul-int/lit8 v3, v1, 0x1f

    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashCodeByteBuffer(Ljava/nio/ByteBuffer;)I

    move-result v4

    add-int v1, v3, v4

    .line 345
    goto :goto_0

    .line 346
    .end local v0    # "bytes":Ljava/nio/ByteBuffer;
    :cond_0
    return v1
.end method

.method public static hashEnum(Lcom/google/protobuf/Internal$EnumLite;)I
    .locals 1
    .param p0, "e"    # Lcom/google/protobuf/Internal$EnumLite;

    .prologue
    .line 257
    invoke-interface {p0}, Lcom/google/protobuf/Internal$EnumLite;->getNumber()I

    move-result v0

    return v0
.end method

.method public static hashEnumList(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/protobuf/Internal$EnumLite;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 265
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<+Lcom/google/protobuf/Internal$EnumLite;>;"
    const/4 v1, 0x1

    .line 266
    .local v1, "hash":I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Internal$EnumLite;

    .line 267
    .local v0, "e":Lcom/google/protobuf/Internal$EnumLite;
    mul-int/lit8 v3, v1, 0x1f

    invoke-static {v0}, Lcom/google/protobuf/Internal;->hashEnum(Lcom/google/protobuf/Internal$EnumLite;)I

    move-result v4

    add-int v1, v3, v4

    .line 268
    goto :goto_0

    .line 269
    .end local v0    # "e":Lcom/google/protobuf/Internal$EnumLite;
    :cond_0
    return v1
.end method

.method public static hashLong(J)I
    .locals 2
    .param p0, "n"    # J

    .prologue
    .line 237
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static isValidUtf8(Lcom/google/protobuf/ByteString;)Z
    .locals 1
    .param p0, "byteString"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    return v0
.end method

.method public static isValidUtf8([B)Z
    .locals 1
    .param p0, "byteArray"    # [B

    .prologue
    .line 187
    invoke-static {p0}, Lcom/google/protobuf/Utf8;->isValidUtf8([B)Z

    move-result v0

    return v0
.end method

.method public static stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # Ljava/lang/String;

    .prologue
    .line 78
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Java VM does not support a standard character set."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 195
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static toStringUtf8([B)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # [B

    .prologue
    .line 206
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 not supported?"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
