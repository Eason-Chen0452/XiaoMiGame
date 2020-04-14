.class public final Lcom/bumptech/glide/util/ByteBufferUtil;
.super Ljava/lang/Object;
.source "ByteBufferUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;,
        Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
    }
.end annotation


# static fields
.field private static final BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final BUFFER_SIZE:I = 0x4000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static fromFile(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v6, 0x0

    .line 27
    .local v6, "raf":Ljava/io/RandomAccessFile;
    const/4 v0, 0x0

    .line 29
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v7, p0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .local v7, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 31
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->load()Ljava/nio/MappedByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 33
    if-eqz v0, :cond_0

    .line 35
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 42
    :try_start_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 31
    :cond_1
    :goto_1
    return-object v1

    .line 33
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v1

    :goto_2
    if-eqz v0, :cond_2

    .line 35
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 40
    :cond_2
    :goto_3
    if-eqz v6, :cond_3

    .line 42
    :try_start_5
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 45
    :cond_3
    :goto_4
    throw v1

    .line 36
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 43
    :catch_1
    move-exception v2

    goto :goto_1

    .line 36
    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v2

    goto :goto_3

    .line 43
    :catch_3
    move-exception v2

    goto :goto_4

    .line 33
    .end local v6    # "raf":Ljava/io/RandomAccessFile;
    .restart local v7    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v1

    move-object v6, v7

    .end local v7    # "raf":Ljava/io/RandomAccessFile;
    .restart local v6    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public static fromStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x4000

    const/4 v6, 0x0

    .line 117
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 119
    .local v3, "outStream":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 120
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    .line 121
    new-array v0, v7, [B

    .line 124
    :cond_0
    const/4 v2, -0x1

    .line 125
    .local v2, "n":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_1

    .line 126
    invoke-virtual {v3, v0, v6, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 129
    :cond_1
    sget-object v4, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 134
    .local v1, "bytes":[B
    array-length v4, v1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    return-object v4
.end method

.method private static getSafeArray(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
    .locals 4
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    new-instance v0, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;-><init>([BII)V

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static toBytes(Ljava/nio/ByteBuffer;)[B
    .locals 5
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 100
    invoke-static {p0}, Lcom/bumptech/glide/util/ByteBufferUtil;->getSafeArray(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;

    move-result-object v1

    .line 101
    .local v1, "safeArray":Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
    if-eqz v1, :cond_0

    iget v3, v1, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    if-nez v3, :cond_0

    iget v3, v1, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->limit:I

    iget-object v4, v1, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->data:[B

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 102
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 109
    .local v0, "result":[B
    :goto_0
    return-object v0

    .line 104
    .end local v0    # "result":[B
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 105
    .local v2, "toCopy":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-array v0, v3, [B

    .line 106
    .restart local v0    # "result":[B
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public static toFile(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const/4 v0, 0x0

    .line 54
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 57
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/channels/FileChannel;->force(Z)V

    .line 58
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 59
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 61
    if-eqz v0, :cond_0

    .line 63
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 70
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 76
    :cond_1
    :goto_1
    return-void

    .line 61
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v0, :cond_2

    .line 63
    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 68
    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    .line 70
    :try_start_5
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 73
    :cond_3
    :goto_4
    throw v3

    .line 64
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 71
    :catch_1
    move-exception v3

    goto :goto_1

    .line 64
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v4

    goto :goto_3

    .line 71
    :catch_3
    move-exception v4

    goto :goto_4

    .line 61
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public static toStream(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 113
    new-instance v0, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/util/ByteBufferUtil$ByteBufferStream;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static toStream(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 7
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 79
    invoke-static {p0}, Lcom/bumptech/glide/util/ByteBufferUtil;->getSafeArray(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;

    move-result-object v1

    .line 80
    .local v1, "safeArray":Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;
    if-eqz v1, :cond_0

    .line 81
    iget-object v3, v1, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->data:[B

    iget v4, v1, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    iget v5, v1, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->offset:I

    iget v6, v1, Lcom/bumptech/glide/util/ByteBufferUtil$SafeArray;->limit:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 96
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v3, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 84
    .local v0, "buffer":[B
    if-nez v0, :cond_1

    .line 85
    const/16 v3, 0x4000

    new-array v0, v3, [B

    .line 88
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_2

    .line 89
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 90
    .local v2, "toRead":I
    invoke-virtual {p0, v0, v5, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {p1, v0, v5, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 94
    .end local v2    # "toRead":I
    :cond_2
    sget-object v3, Lcom/bumptech/glide/util/ByteBufferUtil;->BUFFER_REF:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method
