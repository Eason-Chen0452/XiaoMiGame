.class public interface abstract Lcom/mi/milink/sdk/connection/IConnection;
.super Ljava/lang/Object;


# virtual methods
.method public abstract connect(Ljava/lang/String;ILjava/lang/String;III)Z
.end method

.method public abstract disconnect()Z
.end method

.method public abstract getConnectionType()I
.end method

.method public abstract getServerIP()Ljava/lang/String;
.end method

.method public abstract getServerPort()I
.end method

.method public abstract isRunning()Z
.end method

.method public abstract isSendDone(I)Z
.end method

.method public abstract postMessage(ILjava/lang/Object;ILcom/mi/milink/sdk/session/common/MsgProcessor;)Z
.end method

.method public abstract removeAllSendData()V
.end method

.method public abstract removeSendData(I)V
.end method

.method public abstract sendData([BII)Z
.end method

.method public abstract setCallback(Lcom/mi/milink/sdk/connection/IConnectionCallback;)V
.end method

.method public abstract start()Z
.end method

.method public abstract stop()Z
.end method

.method public abstract wakeUp()V
.end method
