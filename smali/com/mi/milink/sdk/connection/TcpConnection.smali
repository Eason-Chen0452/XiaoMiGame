.class public Lcom/mi/milink/sdk/connection/TcpConnection;
.super Lcom/mi/milink/sdk/connection/ConnectionImpl;


# instance fields
.field private mIsLoaded:Z

.field private mServerIP:Ljava/lang/String;

.field private mServerPort:I


# direct methods
.method public constructor <init>(ILcom/mi/milink/sdk/connection/IConnectionCallback;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mi/milink/sdk/connection/ConnectionImpl;-><init>(II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mServerIP:Ljava/lang/String;

    iput v1, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mServerPort:I

    iput-boolean v1, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mIsLoaded:Z

    invoke-static {}, Lcom/mi/milink/sdk/connection/ConnectionImpl;->isLibLoaded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mIsLoaded:Z

    invoke-virtual {p0, p2}, Lcom/mi/milink/sdk/connection/TcpConnection;->setCallback(Lcom/mi/milink/sdk/connection/IConnectionCallback;)V

    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;ILjava/lang/String;III)Z
    .locals 8

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mServerIP:Ljava/lang/String;

    iput p2, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mServerPort:I

    iget-boolean v0, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mServerIP:Ljava/lang/String;

    iget v2, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mServerPort:I

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Lcom/mi/milink/sdk/connection/ConnectionImpl;->connect(Ljava/lang/String;ILjava/lang/String;III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v7

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/mi/milink/sdk/connection/ConnectionImpl;->disconnect()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getServerIP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mServerIP:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mServerPort:I

    return v0
.end method

.method public isRunning()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/mi/milink/sdk/connection/ConnectionImpl;->isRunning()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isSendDone(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/mi/milink/sdk/connection/ConnectionImpl;->isSendDone(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public removeAllSendData()V
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/mi/milink/sdk/connection/ConnectionImpl;->removeAllSendData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeSendData(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Lcom/mi/milink/sdk/connection/ConnectionImpl;->removeSendData(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public sendData([BII)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/mi/milink/sdk/connection/ConnectionImpl;->sendData([BII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public start()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/mi/milink/sdk/connection/ConnectionImpl;->start()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public stop()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/mi/milink/sdk/connection/ConnectionImpl;->stop()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public wakeUp()V
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/connection/TcpConnection;->mIsLoaded:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lcom/mi/milink/sdk/connection/ConnectionImpl;->wakeUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
