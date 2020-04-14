.class public Lcom/mi/milink/sdk/session/common/ReceiveBuffer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;
    }
.end annotation


# static fields
.field private static CLASSTAG:Ljava/lang/String; = null

.field private static final INTEGER_LENGTH:I = 0x4

.field private static final MAX_HTTP_PACKAGE_HEADER_LENGTH:I = 0x800

.field private static final MIN_TCP_PACKAGE_HEADER_LENGTH:I = 0x8

.field public static final SOCKET_RECV_BUFFER:I = 0x400


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBuffer:[B

.field private mChannelBusy:I

.field private mCreatorSessionNO:I

.field private mIsAssistSession:Z

.field private mPosition:I

.field private mSink:Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ReceiveBuffer"

    sput-object v0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->CLASSTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;IZ)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    iput v3, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    iput-boolean v3, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mIsAssistSession:Z

    iput v3, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mChannelBusy:I

    iput-object p1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mSink:Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput p2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mCreatorSessionNO:I

    const-string v0, "[No:%d]%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v3, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->CLASSTAG:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mIsAssistSession:Z

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    const-string v2, "ReceiveBuffer init failed"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getPacketLen()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/milink/sdk/session/common/InvalidPacketExecption;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const/4 v6, 0x4

    const/16 v5, 0x800

    iget-object v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPacketLen start, mPosition="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPacketLen [position = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] < TCP_PACKAGE_HEADER_LENGTH(8)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    invoke-static {v2}, Lcom/mi/milink/sdk/session/common/BufferUtil;->isHttpHead([B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    const-string v3, "getPacketLen isHttpHead"

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    invoke-static {v2}, Lcom/mi/milink/sdk/session/common/BufferUtil;->findHttpHeaderEndFromByte([B)I

    move-result v2

    if-gtz v2, :cond_2

    iget v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    if-le v2, v5, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HTTP CONTENT : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    invoke-static {v2, v5}, Lcom/mi/milink/sdk/base/data/Convert;->bytesToASCIIString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/mi/milink/sdk/session/common/InvalidPacketExecption;

    const-string v1, "wrong packet\uff0ccannot find http header end"

    invoke-direct {v0, v1, v6}, Lcom/mi/milink/sdk/session/common/InvalidPacketExecption;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    add-int/lit8 v0, v2, -0x1

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->removeToBegin(I)V

    :cond_3
    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    invoke-static {v0}, Lcom/mi/milink/sdk/session/common/BufferUtil;->isMNSHead([B)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no mns head: length="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    invoke-static {v2, v5}, Lcom/mi/milink/sdk/base/data/Convert;->bytesToHexStr([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no mns head , try to get string : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v0, Lcom/mi/milink/sdk/session/common/InvalidPacketExecption;

    const-string v1, "wrong packet\uff0cno mns head"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/mi/milink/sdk/session/common/InvalidPacketExecption;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    invoke-static {v0, v6}, Lcom/mi/milink/sdk/base/data/Convert;->bytesToUint([BI)J

    move-result-wide v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private parseNormalPacket()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/milink/sdk/session/common/InvalidPacketExecption;
        }
    .end annotation

    const-wide/16 v8, 0x1400

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->getPacketLen()J

    move-result-wide v2

    iget-object v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parseNormalPacket start, packetLen = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mPosition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-wide/16 v4, 0x8

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    new-instance v0, Lcom/mi/milink/sdk/session/common/InvalidPacketExecption;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[wrong packetlen = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/mi/milink/sdk/session/common/InvalidPacketExecption;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_2
    const-wide/32 v4, 0x200000

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    new-instance v0, Lcom/mi/milink/sdk/session/common/InvalidPacketExecption;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[wrong packetlen = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/mi/milink/sdk/session/common/InvalidPacketExecption;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_3
    iget v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    array-length v1, v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "increased mBuffer to "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-long v6, v2, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-long/2addr v2, v8

    long-to-int v1, v2

    :try_start_0
    new-array v1, v1, [B

    iget-object v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    const-string v3, "append new byte fail "

    invoke-static {v2, v3, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "parseNormalPacket [packetLen = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v1, v2

    new-array v1, v1, [B

    iget-object v4, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    long-to-int v5, v2

    invoke-static {v4, v0, v1, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    long-to-int v0, v2

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->removeToBegin(I)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mSink:Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mSink:Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;

    iget v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mCreatorSessionNO:I

    invoke-interface {v0, v2, v1}, Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;->onRecvDownStream(I[B)Z

    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private parsePacket()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/milink/sdk/session/common/InvalidPacketExecption;
        }
    .end annotation

    const/16 v4, 0x400

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    const-string v1, "parsePacket start"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->parseNormalPacket()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    if-nez v1, :cond_1

    if-le v0, v4, :cond_1

    iget-object v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reset buffer size: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-array v0, v4, [B

    iput-object v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    :cond_1
    return-void
.end method

.method private removeToBegin(I)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    sub-int/2addr v1, p1

    iput v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    iget v3, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    iget-object v4, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    add-int v5, p1, v0

    aget-byte v4, v4, v5

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public append([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mi/milink/sdk/session/common/InvalidPacketExecption;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    array-length v0, p1

    iget-boolean v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mIsAssistSession:Z

    if-nez v1, :cond_1

    const/16 v1, 0x1388

    if-lt v0, v1, :cond_2

    iget v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mChannelBusy:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mChannelBusy:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_1

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;->channelBusy:Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;

    invoke-direct {v2, v3, v5}, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    iput v4, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mChannelBusy:I

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "now mBuffer.len="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",recvLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_3

    iget-object v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    const-string v2, "buffer need to be increased"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    add-int/2addr v1, v0

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    iget v3, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    iget v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-direct {p0}, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->parsePacket()V

    goto :goto_0

    :cond_2
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mChannelBusy:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mChannelBusy:I

    const/4 v2, -0x5

    if-ge v1, v2, :cond_1

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent;

    sget-object v3, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;->channelIdle:Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;

    invoke-direct {v2, v3, v5}, Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ChannelStatusChangeEvent$EventType;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    iput v4, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mChannelBusy:I

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->TAG:Ljava/lang/String;

    const-string v2, "append new byte fail "

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mBuffer:[B

    iget v2, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    invoke-static {p1, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    goto :goto_2
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/session/common/ReceiveBuffer;->mPosition:I

    return-void
.end method
