.class public Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;
.super Lcom/mi/milink/sdk/session/common/IServerManager;


# static fields
.field private static final DEFAULT_SESSION_COUNT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiLinkBackupServerManager"

.field private static sInstance:Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->getInstance()Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/common/IServerManager;-><init>(Lcom/mi/milink/sdk/config/IIpInfoManager;)V

    return-void
.end method

.method public static getInstance()Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;
    .locals 2

    sget-object v0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;

    invoke-direct {v0}, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;

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

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;

    return-void
.end method

.method public getNext(Lcom/mi/milink/sdk/session/common/ServerProfile;I)[Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string v1, "MiLinkBackupServerManager"

    const-string v2, "getNext, serverProfile == null!!!"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MiLinkBackupServerManager"

    const-string v2, "getNext, Network is not available!!!"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "MiLinkBackupServerManager"

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

    iget v1, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->mTcpServerListIndex:I

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->mTcpServerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_3

    const-string v1, "MiLinkBackupServerManager"

    const-string v2, "getNext no tcp server to try"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-array v0, v5, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->getNextTcpProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "MiLinkBackupServerManager"

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

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->mTcpServerList:Ljava/util/List;

    iput v2, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->mTcpServerListIndex:I

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isTestChannel()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->mIpInfoManager:Lcom/mi/milink/sdk/config/IIpInfoManager;

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

    const/4 v7, 0x4

    invoke-direct {v6, v1, v5, v8, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    iget-object v5, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->mTcpServerList:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->mIpInfoManager:Lcom/mi/milink/sdk/config/IIpInfoManager;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getBackupServerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v1, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->mTcpServerList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->addServerProfileInSpecifiedList(Ljava/util/List;Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->mTcpServerList:Ljava/util/List;

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
    if-gtz v3, :cond_3

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->mTcpServerList:Ljava/util/List;

    iget v4, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->mTcpServerListIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/mi/milink/sdk/session/persistent/MiLinkBackupServerManager;->mTcpServerListIndex:I

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/ServerProfile;

    aput-object v0, v1, v2

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    move v0, v2

    :goto_3
    if-gtz v0, :cond_4

    const-string v3, "MiLinkBackupServerManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "reset , so try backuplist1, server No.0:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method
