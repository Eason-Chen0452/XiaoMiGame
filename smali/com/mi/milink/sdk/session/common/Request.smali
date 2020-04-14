.class public Lcom/mi/milink/sdk/session/common/Request;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/session/common/Request$AfterHandleCallBack;
    }
.end annotation


# instance fields
.field private afterHandleCallBack:Lcom/mi/milink/sdk/session/common/Request$AfterHandleCallBack;

.field private createdTime:J

.field private data:Lcom/mi/milink/sdk/aidl/PacketData;

.field private encodeType:B

.field private hasCallback:Z

.field private hasRetry:Z

.field private isInternal:Z

.field private isPing:Z

.field private listener:Lcom/mi/milink/sdk/session/common/ResponseListener;

.field private mHandleSessionNO:I

.field private ownerAccount:Lcom/mi/milink/sdk/account/IAccount;

.field private retryCount:I

.field private sentTime:J

.field private size:I

.field private timeOut:I


# direct methods
.method public constructor <init>(Lcom/mi/milink/sdk/aidl/PacketData;Lcom/mi/milink/sdk/session/common/ResponseListener;BLcom/mi/milink/sdk/account/IAccount;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/common/Request;->sentTime:J

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/ConfigManager;->getRequestTimeout()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/session/common/Request;->timeOut:I

    iput-boolean v2, p0, Lcom/mi/milink/sdk/session/common/Request;->isPing:Z

    iput-boolean v2, p0, Lcom/mi/milink/sdk/session/common/Request;->isInternal:Z

    iput-byte v2, p0, Lcom/mi/milink/sdk/session/common/Request;->encodeType:B

    iput v2, p0, Lcom/mi/milink/sdk/session/common/Request;->size:I

    iput-boolean v2, p0, Lcom/mi/milink/sdk/session/common/Request;->hasCallback:Z

    iput-boolean v2, p0, Lcom/mi/milink/sdk/session/common/Request;->hasRetry:Z

    iput v2, p0, Lcom/mi/milink/sdk/session/common/Request;->retryCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/common/Request;->afterHandleCallBack:Lcom/mi/milink/sdk/session/common/Request$AfterHandleCallBack;

    iput v2, p0, Lcom/mi/milink/sdk/session/common/Request;->mHandleSessionNO:I

    iput-object p1, p0, Lcom/mi/milink/sdk/session/common/Request;->data:Lcom/mi/milink/sdk/aidl/PacketData;

    iput-object p2, p0, Lcom/mi/milink/sdk/session/common/Request;->listener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/milink/sdk/session/common/Request;->createdTime:J

    iput-byte p3, p0, Lcom/mi/milink/sdk/session/common/Request;->encodeType:B

    iput-object p4, p0, Lcom/mi/milink/sdk/session/common/Request;->ownerAccount:Lcom/mi/milink/sdk/account/IAccount;

    return-void
.end method


# virtual methods
.method public addRetryCount()V
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/common/Request;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mi/milink/sdk/session/common/Request;->retryCount:I

    return-void
.end method

.method public canRetry()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/common/Request;->isInternal:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/Request;->data:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->needRetry()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/common/Request;->hasRetry:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/common/Request;->hasCallback:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAfterHandleCallBack()Lcom/mi/milink/sdk/session/common/Request$AfterHandleCallBack;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/Request;->afterHandleCallBack:Lcom/mi/milink/sdk/session/common/Request$AfterHandleCallBack;

    return-object v0
.end method

.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milink/sdk/session/common/Request;->createdTime:J

    return-wide v0
.end method

.method public getData()Lcom/mi/milink/sdk/aidl/PacketData;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/Request;->data:Lcom/mi/milink/sdk/aidl/PacketData;

    return-object v0
.end method

.method public getOwnerAccount()Lcom/mi/milink/sdk/account/IAccount;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/Request;->ownerAccount:Lcom/mi/milink/sdk/account/IAccount;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/common/Request;->retryCount:I

    return v0
.end method

.method public getSentTime()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milink/sdk/session/common/Request;->sentTime:J

    return-wide v0
.end method

.method public getSeqNo()I
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/Request;->data:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/common/Request;->size:I

    return v0
.end method

.method public getTimeOut()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/session/common/Request;->timeOut:I

    return v0
.end method

.method public getValidTime()I
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/Request;->data:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getValidTime()I

    move-result v0

    return v0
.end method

.method public hasListenter()Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/Request;->listener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isInternalRequest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/common/Request;->isInternal:Z

    return v0
.end method

.method public isPingRequest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/common/Request;->isPing:Z

    return v0
.end method

.method public isTimeout()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/common/Request;->sentTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/mi/milink/sdk/session/common/Request;->timeOut:I

    int-to-float v1, v1

    invoke-static {}, Lcom/mi/milink/sdk/config/ConfigManager;->getInstance()Lcom/mi/milink/sdk/config/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mi/milink/sdk/config/ConfigManager;->getTimeoutMultiply()F

    move-result v2

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidNow()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mi/milink/sdk/session/common/Request;->createdTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/common/Request;->getValidTime()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDataSendFailed(ILjava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/mi/milink/sdk/session/common/Request;->listener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/mi/milink/sdk/session/common/Request;->hasCallback:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/common/Request;->listener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    invoke-interface {v1, p1, p2}, Lcom/mi/milink/sdk/session/common/ResponseListener;->onDataSendFailed(ILjava/lang/String;)V

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/common/Request;->hasCallback:Z

    goto :goto_0
.end method

.method public onDataSendSuccess(ILcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/Request;->listener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/mi/milink/sdk/session/common/Request;->hasCallback:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/Request;->listener:Lcom/mi/milink/sdk/session/common/ResponseListener;

    invoke-interface {v0, p1, p2}, Lcom/mi/milink/sdk/session/common/ResponseListener;->onDataSendSuccess(ILcom/mi/milink/sdk/aidl/PacketData;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/common/Request;->hasCallback:Z

    goto :goto_0
.end method

.method public requestShouldCached()Z
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/Request;->data:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->needCached()Z

    move-result v0

    return v0
.end method

.method public setAfterHandleCallBack(Lcom/mi/milink/sdk/session/common/Request$AfterHandleCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/common/Request;->afterHandleCallBack:Lcom/mi/milink/sdk/session/common/Request$AfterHandleCallBack;

    return-void
.end method

.method public setHandleSessionNO(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/session/common/Request;->mHandleSessionNO:I

    return-void
.end method

.method public setHasRetry()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/session/common/Request;->hasRetry:Z

    return-void
.end method

.method public setInternal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/session/common/Request;->isInternal:Z

    return-void
.end method

.method public setPing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/session/common/Request;->isPing:Z

    return-void
.end method

.method public setSentTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/milink/sdk/session/common/Request;->sentTime:J

    return-void
.end method

.method public setTimeOut(I)V
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/Request;->data:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->needRetry()Z

    move-result v0

    if-eqz v0, :cond_0

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/mi/milink/sdk/session/common/Request;->timeOut:I

    :cond_0
    return-void
.end method

.method public toBytes()[B
    .locals 5

    const-string v0, "[No:%d]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/mi/milink/sdk/session/common/Request;->mHandleSessionNO:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/common/Request;->data:Lcom/mi/milink/sdk/aidl/PacketData;

    iget-boolean v2, p0, Lcom/mi/milink/sdk/session/common/Request;->isPing:Z

    iget-byte v3, p0, Lcom/mi/milink/sdk/session/common/Request;->encodeType:B

    iget-object v4, p0, Lcom/mi/milink/sdk/session/common/Request;->ownerAccount:Lcom/mi/milink/sdk/account/IAccount;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mi/milink/sdk/session/common/StreamUtil;->toUpBytes(Ljava/lang/String;Lcom/mi/milink/sdk/aidl/PacketData;ZBLcom/mi/milink/sdk/account/IAccount;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    iput v1, p0, Lcom/mi/milink/sdk/session/common/Request;->size:I

    :cond_0
    return-object v0
.end method
