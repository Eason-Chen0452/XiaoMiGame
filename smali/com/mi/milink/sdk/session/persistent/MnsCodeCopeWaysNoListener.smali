.class public Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;
.super Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;


# static fields
.field private static final CLASSTAG:Ljava/lang/String; = "MnsCodeCopeWaysNoListener"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mi/milink/sdk/session/persistent/Session;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/session/persistent/IMnsCodeCopeWays;-><init>(Lcom/mi/milink/sdk/session/persistent/Session;)V

    const-string v0, "[No:%d]%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/persistent/Session;->getSessionNO()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "MnsCodeCopeWaysNoListener"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected afterHandle()V
    .locals 13

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getData()Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v4, v0

    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->getInstance()Lcom/mi/milink/sdk/debug/InternalDataMonitor;

    move-result-object v1

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfileForStatistic()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfileForStatistic()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfileForStatistic()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/persistent/Session;->getServerProfileForStatistic()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerPort()I

    move-result v3

    :goto_2
    iget v5, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mRetCode:I

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSentTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSize()I

    move-result v10

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getResponseSize()I

    move-result v11

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v12

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milink/sdk/debug/InternalDataMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    :goto_3
    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const-string v2, ""

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cmd is empty, don\'t monitor it, seq="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    invoke-virtual {v2}, Lcom/mi/milink/sdk/session/common/Request;->getSeqNo()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onAccNeedRetry()V
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mRequeset:Lcom/mi/milink/sdk/session/common/Request;

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/persistent/Session;->onAccNeedRetryWithClientInfo(Lcom/mi/milink/sdk/session/common/Request;)V

    return-void
.end method

.method protected onBusinessCmdTimeout()V
    .locals 0

    return-void
.end method

.method protected onInternalCmdTimeout()V
    .locals 0

    return-void
.end method

.method protected onOk()V
    .locals 2

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->TAG:Ljava/lang/String;

    const-string v1, "recv data and to dispatcher"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->getInstance()Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/session/persistent/MnsPacketDispatcher;->dispatchPacket(Lcom/mi/milink/sdk/aidl/PacketData;)V

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mRecvData:Lcom/mi/milink/sdk/aidl/PacketData;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getBusiCode()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mRetCode:I

    return-void
.end method

.method protected onServerTokenExpired()V
    .locals 3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MnsCodeCopeWaysNoListener;->mSession:Lcom/mi/milink/sdk/session/persistent/Session;

    instance-of v0, v0, Lcom/mi/milink/sdk/session/simplechannel/SessionForSimpleChannel;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;

    sget-object v2, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;->ServiceTokenExpired:Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;

    invoke-direct {v1, v2}, Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent;-><init>(Lcom/mi/milink/sdk/event/MiLinkEvent$ServerNotificationEvent$EventType;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onUnknowMsnCode(I)V
    .locals 0

    return-void
.end method

.method protected onUpdateChannelPubKey()V
    .locals 0

    return-void
.end method
