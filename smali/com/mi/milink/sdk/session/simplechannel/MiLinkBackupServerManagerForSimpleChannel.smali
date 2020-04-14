.class public Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;
.super Lcom/mi/milink/sdk/session/common/IServerManager;


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/session/common/IServerManager;-><init>(Lcom/mi/milink/sdk/config/IIpInfoManager;)V

    const-string v0, "MiLinkBackupServerManagerForSimpleChannel_"

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManagerForSimpleChannel;->getAppId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getNext(Lcom/mi/milink/sdk/session/common/ServerProfile;I)[Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v2, "getNext, serverProfile == null!!!"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v2, "getNext, Network is not available!!!"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNext, failserver info:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",failReason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v1

    if-ne v1, v5, :cond_0

    iget v1, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->mTcpServerListIndex:I

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->mTcpServerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->TAG:Ljava/lang/String;

    const-string v2, "getNext no tcp server to try"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-array v0, v5, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->getNextTcpProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getNext get tcp server,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reset(Z)[Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 9

    const/4 v8, 0x4

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->mTcpServerList:Ljava/util/List;

    iput v2, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->mTcpServerListIndex:I

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isTestChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->mIpInfoManager:Lcom/mi/milink/sdk/config/IIpInfoManager;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getTestBackupIp()[Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v3, Lcom/mi/milink/sdk/data/Const$ServerPort;->PORT_ARRAY:[I

    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_1

    aget v5, v3, v0

    new-instance v6, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const/4 v7, 0x1

    invoke-direct {v6, v1, v5, v7, v8}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    iget-object v5, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->mTcpServerList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->mIpInfoManager:Lcom/mi/milink/sdk/config/IIpInfoManager;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getBackupServerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->mTcpServerList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->addServerProfileInSpecifiedList(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->mTcpServerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    new-array v1, v8, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    move v3, v2

    :goto_2
    if-ge v3, v8, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->mTcpServerList:Ljava/util/List;

    iget v4, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->mTcpServerListIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->mTcpServerListIndex:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/ServerProfile;

    aput-object v0, v1, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_3
    if-ge v0, v8, :cond_4

    iget-object v2, p0, Lcom/mi/milink/sdk/session/simplechannel/MiLinkBackupServerManagerForSimpleChannel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reset , so try backuplist4, server No."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
