.class public final Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleApkSigningBlock(Ljava/io/File;Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter$a;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v5

    :try_start_2
    invoke-static {v5}, Lcom/xiaomi/gamecenter/channel/writer/c;->a(Ljava/nio/channels/FileChannel;)J

    move-result-wide v10

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    sub-long/2addr v8, v10

    const-wide/16 v12, 0x6

    sub-long/2addr v8, v12

    invoke-virtual {v5, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v5, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v12, v2

    const-wide/16 v2, 0x20

    cmp-long v2, v12, v2

    if-gez v2, :cond_2

    new-instance v2, Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v2

    move-object v3, v5

    move-object v4, v6

    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    :cond_1
    throw v2

    :cond_2
    const-wide/16 v2, 0x18

    sub-long v2, v12, v2

    :try_start_3
    invoke-virtual {v5, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    const-wide v14, 0x20676953204b5041L

    cmp-long v3, v8, v14

    if-nez v3, :cond_3

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    const-wide v14, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v3, v8, v14

    if-eqz v3, :cond_4

    :cond_3
    new-instance v2, Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;

    const-string v3, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v2, v3}, Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v8, v2

    if-ltz v2, :cond_5

    const-wide/32 v2, 0x7ffffff7

    cmp-long v2, v8, v2

    if-lez v2, :cond_6

    :cond_5
    new-instance v2, Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "APK Signing Block size out of range: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    const-wide/16 v2, 0x8

    add-long/2addr v2, v8

    long-to-int v2, v2

    int-to-long v14, v2

    sub-long v14, v12, v14

    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-gez v3, :cond_7

    new-instance v2, Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "APK Signing Block offset out of range: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-virtual {v5, v14, v15}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v16

    cmp-long v3, v16, v8

    if-eqz v3, :cond_8

    new-instance v2, Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "APK Signing Block sizes in header and footer do not match: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/channel/common/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/gamecenter/channel/common/Pair;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/channel/common/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-static {v2}, Lcom/xiaomi/gamecenter/channel/writer/c;->a(Ljava/nio/ByteBuffer;)Ljava/util/Map;

    move-result-object v3

    const v2, 0x42726577

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter$a;->a(Ljava/util/Map;)Lcom/xiaomi/gamecenter/channel/writer/a;

    move-result-object v9

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    invoke-virtual {v9}, Lcom/xiaomi/gamecenter/channel/writer/a;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaomi/gamecenter/channel/writer/b;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/channel/writer/b;->c()I

    move-result v2

    add-int/2addr v2, v3

    move v3, v2

    goto :goto_2

    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    :cond_a
    add-int/lit8 v2, v3, 0x8

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x10

    rem-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_c

    rem-int/lit16 v2, v2, 0x1000

    rsub-int v2, v2, 0xff4

    if-gez v2, :cond_b

    add-int/lit16 v2, v2, 0x1000

    :cond_b
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/gamecenter/channel/writer/b;

    const v4, 0x42726577

    invoke-direct {v3, v4, v2}, Lcom/xiaomi/gamecenter/channel/writer/b;-><init>(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v9, v3}, Lcom/xiaomi/gamecenter/channel/writer/a;->a(Lcom/xiaomi/gamecenter/channel/writer/b;)V

    :cond_c
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-eqz v2, :cond_12

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_12

    invoke-virtual {v6, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v8, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_10

    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, 0x0

    :try_start_4
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    const/16 v4, 0x400

    :try_start_5
    new-array v4, v4, [B

    :goto_3
    invoke-virtual {v6, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v7

    if-lez v7, :cond_e

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v3, v4, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v2

    :goto_4
    if-eqz v3, :cond_d

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    :cond_d
    throw v2

    :cond_e
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    move-object v7, v2

    move-object v3, v8

    :goto_5
    invoke-virtual {v5, v14, v15}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {v9, v6}, Lcom/xiaomi/gamecenter/channel/writer/a;->a(Ljava/io/DataOutput;)J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-wide v8

    if-eqz p2, :cond_14

    const/4 v4, 0x0

    :try_start_7
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    const/16 v2, 0x400

    :try_start_8
    new-array v2, v2, [B

    :goto_6
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_11

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v6, v2, v0, v4}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v2

    :goto_7
    if-eqz v3, :cond_f

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_f
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    throw v2

    :cond_10
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v16

    sub-long v16, v16, v12

    move-wide/from16 v0, v16

    long-to-int v3, v0

    new-array v3, v3, [B

    invoke-virtual {v6, v3}, Ljava/io/RandomAccessFile;->read([B)I

    move-object v7, v2

    goto :goto_5

    :cond_11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :goto_8
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v2

    sub-long/2addr v2, v10

    const-wide/16 v10, 0x6

    sub-long/2addr v2, v10

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    add-long/2addr v8, v12

    const-wide/16 v10, 0x8

    add-long/2addr v8, v10

    sub-long v10, v12, v14

    sub-long/2addr v8, v10

    long-to-int v3, v8

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_12
    if-eqz v5, :cond_13

    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    :cond_13
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :cond_14
    :try_start_a
    invoke-virtual {v6, v3}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_8

    :catchall_3
    move-exception v2

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    move-object v4, v6

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    move-object v3, v4

    goto :goto_7

    :catchall_6
    move-exception v2

    move-object v3, v4

    goto/16 :goto_4
.end method

.method public static put(Ljava/io/File;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter;->put(Ljava/io/File;ILjava/lang/String;Z)V

    return-void
.end method

.method public static put(Ljava/io/File;ILjava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/gamecenter/channel/common/util/AESEncryption;->Encrypt(Ljava/lang/String;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-static {p0, p1, v1, p3}, Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter;->put(Ljava/io/File;ILjava/nio/ByteBuffer;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static put(Ljava/io/File;ILjava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter;->put(Ljava/io/File;ILjava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public static put(Ljava/io/File;ILjava/nio/ByteBuffer;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v0, p3}, Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter;->putAll(Ljava/io/File;Ljava/util/Map;Z)V

    return-void
.end method

.method public static putAll(Ljava/io/File;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter;->putAll(Ljava/io/File;Ljava/util/Map;Z)V

    return-void
.end method

.method public static putAll(Ljava/io/File;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/gamecenter/channel/writer/d;

    invoke-direct {v0, p1}, Lcom/xiaomi/gamecenter/channel/writer/d;-><init>(Ljava/util/Map;)V

    invoke-static {p0, v0, p2}, Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter;->handleApkSigningBlock(Ljava/io/File;Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter$a;Z)V

    return-void
.end method

.method public static remove(Ljava/io/File;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter;->remove(Ljava/io/File;IZ)V

    return-void
.end method

.method public static remove(Ljava/io/File;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/gamecenter/channel/writer/SignatureNotFoundException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/gamecenter/channel/writer/e;

    invoke-direct {v0, p1}, Lcom/xiaomi/gamecenter/channel/writer/e;-><init>(I)V

    invoke-static {p0, v0, p2}, Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter;->handleApkSigningBlock(Ljava/io/File;Lcom/xiaomi/gamecenter/channel/writer/PayloadWriter$a;Z)V

    return-void
.end method
