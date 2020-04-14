.class public abstract Lcom/mi/milink/sdk/session/common/IServerManager;
.super Ljava/lang/Object;


# static fields
.field protected static final DEFAULT_SESSION_COUNT:I = 0x4


# instance fields
.field protected mIpInfoManager:Lcom/mi/milink/sdk/config/IIpInfoManager;

.field protected mTcpServerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/session/common/ServerProfile;",
            ">;"
        }
    .end annotation
.end field

.field protected mTcpServerListIndex:I


# direct methods
.method protected constructor <init>(Lcom/mi/milink/sdk/config/IIpInfoManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/session/common/IServerManager;->mTcpServerList:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/milink/sdk/session/common/IServerManager;->mTcpServerListIndex:I

    iput-object p1, p0, Lcom/mi/milink/sdk/session/common/IServerManager;->mIpInfoManager:Lcom/mi/milink/sdk/config/IIpInfoManager;

    return-void
.end method

.method protected static addServerProfileInSpecifiedList(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/session/common/ServerProfile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/session/common/ServerProfile;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x4

    sget-object v2, Lcom/mi/milink/sdk/data/Const$ServerPort;->PORT_ARRAY:[I

    array-length v2, v2

    if-eq v2, v1, :cond_1

    const-string v0, "IServerManager"

    const-string v1, "PORT_ARRAY.length != 4"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-array v3, v1, [[I

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    aput-object v2, v3, v0

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    aput-object v2, v3, v4

    const/4 v2, 0x2

    new-array v4, v1, [I

    fill-array-data v4, :array_2

    aput-object v4, v3, v2

    const/4 v2, 0x3

    new-array v4, v1, [I

    fill-array-data v4, :array_3

    aput-object v4, v3, v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_2

    move v2, v1

    :cond_2
    if-gt v2, v1, :cond_0

    if-lez v2, :cond_0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/mi/milink/sdk/data/Const$ServerPort;->PORT_ARRAY:[I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    :try_start_0
    new-instance v4, Lcom/mi/milink/sdk/session/common/ServerProfile;

    add-int/lit8 v0, v2, -0x1

    aget-object v0, v3, v0

    aget v0, v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/mi/milink/sdk/data/Const$ServerPort;->PORT_ARRAY:[I

    aget v5, v5, v1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {v4, v0, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getNext(Lcom/mi/milink/sdk/session/common/ServerProfile;I)[Lcom/mi/milink/sdk/session/common/ServerProfile;
.end method

.method protected getNextTcpProfile()Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 3

    iget v0, p0, Lcom/mi/milink/sdk/session/common/IServerManager;->mTcpServerListIndex:I

    iget-object v1, p0, Lcom/mi/milink/sdk/session/common/IServerManager;->mTcpServerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/IServerManager;->mTcpServerList:Ljava/util/List;

    iget v1, p0, Lcom/mi/milink/sdk/session/common/IServerManager;->mTcpServerListIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/mi/milink/sdk/session/common/IServerManager;->mTcpServerListIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/ServerProfile;

    goto :goto_0
.end method

.method public abstract reset(Z)[Lcom/mi/milink/sdk/session/common/ServerProfile;
.end method

.method public save(Lcom/mi/milink/sdk/session/common/ServerProfile;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/mi/milink/sdk/connection/DomainManager;->getInstance()Lcom/mi/milink/sdk/connection/DomainManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mi/milink/sdk/connection/DomainManager;->queryDomainIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mi/milink/sdk/session/common/ServerProfile;->setServerIP(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/common/IServerManager;->mIpInfoManager:Lcom/mi/milink/sdk/config/IIpInfoManager;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getServerPort()I

    move-result v4

    invoke-virtual {p1}, Lcom/mi/milink/sdk/session/common/ServerProfile;->getProtocol()I

    move-result v5

    const/4 v6, 0x3

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    invoke-virtual {v0, v2}, Lcom/mi/milink/sdk/config/IIpInfoManager;->setRecentlyServer(Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    move v0, v1

    goto :goto_0
.end method
