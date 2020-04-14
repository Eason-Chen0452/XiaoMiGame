.class Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/session/common/ReceiveBuffer$ReceiveBufferSink;


# instance fields
.field final synthetic this$0:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;


# direct methods
.method constructor <init>(Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$1;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddTimeout(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRecvDownStream(I[B)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    const-string v2, "[No:%d]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$1$1;

    invoke-direct {v4, p0}, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$1$1;-><init>(Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$1;)V

    invoke-static {v2, p2, v4}, Lcom/mi/milink/sdk/session/common/StreamUtil;->getDownPacket(Ljava/lang/String;[BLcom/mi/milink/sdk/session/common/StreamUtil$GetAccountAdapter;)Lcom/mi/milink/sdk/aidl/PacketData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$1;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    iget-object v3, v3, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->request:Lcom/mi/milink/sdk/session/common/Request;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$1;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    iget-object v3, v3, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->request:Lcom/mi/milink/sdk/session/common/Request;

    invoke-virtual {v3, v0, v2}, Lcom/mi/milink/sdk/session/common/Request;->onDataSendSuccess(ILcom/mi/milink/sdk/aidl/PacketData;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog$1;->this$0:Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;

    iget-object v0, v0, Lcom/mi/milink/sdk/session/persistent/SessionForUploadLog;->request:Lcom/mi/milink/sdk/session/common/Request;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->addRetryCount()V

    :cond_2
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "SessionForUploadLog"

    const-string v5, "decode downstream failed"

    invoke-static {v4, v5, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    goto :goto_1
.end method
