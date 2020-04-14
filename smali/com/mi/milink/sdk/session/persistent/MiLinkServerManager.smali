.class public Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;
.super Lcom/mi/milink/sdk/session/common/IServerManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiLinkServerManager"

.field private static sInstance:Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/common/IServerManager;-><init>(Lcom/mi/milink/sdk/config/IIpInfoManager;)V

    return-void
.end method

.method public static getInstance()Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;
    .locals 2

    sget-object v0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;

    invoke-direct {v0}, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;

    return-void
.end method

.method public getNext(Lcom/mi/milink/sdk/session/common/ServerProfile;I)[Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string v1, "MiLinkServerManager"

    const-string v2, "getNext, serverProfile == null!!!"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "MiLinkServerManager"

    const-string v2, "getNext, Network is not available!!!"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "MiLinkServerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNext, failserver info:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",failReason = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v2

    if-ne v2, v5, :cond_0

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    new-array v0, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    :goto_1
    if-ge v1, v6, :cond_0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->getNextTcpProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "MiLinkServerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNext, recently tcp failed, and has no rencently http server,so try 4, server No."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->mTcpServerListIndex:I

    iget-object v3, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    const-string v1, "MiLinkServerManager"

    const-string v2, "getNext no tcp server to try"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-array v0, v5, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->getNextTcpProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v2, "MiLinkServerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getNext get tcp server,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v0, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public reset(Z)[Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 11

    const/4 v4, 0x1

    const/4 v10, 0x4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput v3, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->mTcpServerListIndex:I

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isTestChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->mIpInfoManager:Lcom/mi/milink/sdk/config/IIpInfoManager;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getTestBackupIp()[Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v2, Lcom/mi/milink/sdk/data/Const$ServerPort;->PORT_ARRAY:[I

    array-length v5, v2

    move v0, v3

    :goto_0
    if-ge v0, v5, :cond_6

    aget v6, v2, v0

    new-instance v7, Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-direct {v7, v1, v6, v4, v10}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    iget-object v6, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isHasSetAccServerDomain()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->mIpInfoManager:Lcom/mi/milink/sdk/config/IIpInfoManager;

    invoke-virtual {v1}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getRecentlyServerData()Lcom/mi/milink/sdk/session/common/RecentlyServerData;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/common/RecentlyServerData;->getRecentlyServer()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->mIpInfoManager:Lcom/mi/milink/sdk/config/IIpInfoManager;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getCurrentApnOptimumServerData()Lcom/mi/milink/sdk/session/common/OptimumServerData;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/OptimumServerData;->getOptimumServers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/ServerProfile;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    sget-object v8, Lcom/mi/milink/sdk/data/Const$ServerPort;->PORT_ARRAY:[I

    array-length v8, v8

    if-ge v7, v8, :cond_1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    invoke-static {v5, v0}, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->addServerProfileInSpecifiedList(Ljava/util/List;Ljava/util/List;)V

    :goto_3
    sget-object v5, Lcom/mi/milink/sdk/data/Const$ServerPort;->PORT_ARRAY:[I

    array-length v6, v5

    move v0, v3

    :goto_4
    if-ge v0, v6, :cond_4

    aget v7, v5, v0

    new-instance v8, Lcom/mi/milink/sdk/session/common/ServerProfile;

    iget-object v9, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->mIpInfoManager:Lcom/mi/milink/sdk/config/IIpInfoManager;

    invoke-virtual {v9}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getDefaultServer()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v9

    invoke-virtual {v9}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v7, v4, v10}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    iget-object v7, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->mIpInfoManager:Lcom/mi/milink/sdk/config/IIpInfoManager;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getBackupServerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v5, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    invoke-static {v0, v5}, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->addServerProfileInSpecifiedList(Ljava/util/List;Ljava/util/List;)V

    :cond_5
    if-eqz v2, :cond_6

    new-array v0, v4, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    aput-object v1, v0, v3

    const-string v2, "MiLinkServerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "reset isBackgroud = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",has recently tcp server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    return-object v0

    :cond_6
    new-array v1, v10, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    move v2, v3

    :goto_6
    if-ge v2, v10, :cond_7

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->mTcpServerList:Ljava/util/List;

    iget v4, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->mTcpServerListIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkServerManager;->mTcpServerListIndex:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/ServerProfile;

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_7
    :goto_7
    if-ge v3, v10, :cond_8

    const-string v0, "MiLinkServerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "reset isBackgroud = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", has no recently server, so try 4, server No."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    move-object v0, v1

    goto :goto_5

    :cond_9
    move v2, v3

    goto/16 :goto_3

    :cond_a
    move-object v1, v0

    goto/16 :goto_1

    :cond_b
    move-object v1, v0

    move v2, v3

    goto/16 :goto_3
.end method
