.class public abstract Lcom/mi/milink/sdk/config/IIpInfoManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;
    }
.end annotation


# static fields
.field private static final DEFAULT_OPTIMUM_SERVER_KEY:Ljava/lang/String; = "other"

.field protected static final TAG:Ljava/lang/String; = "IIpInfoManager"


# instance fields
.field private appId:I

.field private mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupIPList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/session/common/ServerProfile;",
            ">;"
        }
    .end annotation
.end field

.field protected mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

.field private mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mi/milink/sdk/session/common/OptimumServerData;",
            ">;"
        }
    .end annotation
.end field

.field private mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mi/milink/sdk/session/common/RecentlyServerData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mBackupIPList:Ljava/util/List;

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->appId:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->init()V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mBackupIPList:Ljava/util/List;

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput p1, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->appId:I

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->init()V

    return-void
.end method

.method public static getCurrentApn()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const-string v0, "IIpInfoManager"

    const-string v2, "start getCurrentApn "

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isMobile()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->getApnName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "00:00:00:00:00:00"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    const-string v0, "IIpInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end getCurrentApn key = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isWifi()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/WifiDash;->getBSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->isEthernet()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ethernet"

    goto :goto_0

    :cond_2
    const-string v0, "IIpInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Network("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/os/info/NetworkDash;->getType()Lcom/mi/milink/sdk/base/os/info/NetworkType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is unkown"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method private declared-synchronized getOptimumServerData(Ljava/lang/String;)Lcom/mi/milink/sdk/session/common/OptimumServerData;
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IIpInfoManager"

    const-string v1, "get optimum server list, the value of the key is empty, use default key"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "other"

    :goto_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getOptimumIpMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/OptimumServerData;

    const-string v1, "IIpInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOptimumServerData serverData:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ispKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "IIpInfoManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get optimum server list, key is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static loadObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "IIpInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v1, "IIpInfoManager"

    const-string v2, "load object Global.getApplicationContext() == null"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "IIpInfoManager"

    const-string v3, "closeObject Exception"

    invoke-static {v2, v3, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v1, "IIpInfoManager"

    const-string v2, "load object FileNotFoundException"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v2, v0

    :goto_1
    const-string v4, "IIpInfoManager"

    const-string v5, "load readObject Exception"

    invoke-static {v4, v5, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v3, p0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v2, "IIpInfoManager"

    const-string v3, "closeObject Exception"

    invoke-static {v2, v3, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private declared-synchronized saveApnIspMap()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getApnIspFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveBackupServerList()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mBackupIPList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getBackupServerFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static saveObject(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "IIpInfoManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "IIpInfoManager"

    const-string v2, "save object Global.getApplicationContext() == null"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_3
    const-string v2, "IIpInfoManager"

    const-string v3, "writeObject Exception"

    invoke-static {v2, v3, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "IIpInfoManager"

    const-string v2, "closeObject Exception"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3
.end method

.method private declared-synchronized saveOptimumServerMap()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getOptimumServerFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized saveRecentlyServerMap()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getRecentlyServerFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager;->saveObject(Ljava/lang/Object;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method protected abstract getApnIspFileName()Ljava/lang/String;
.end method

.method public declared-synchronized getApnIspMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getApnIspFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->loadObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mApnIspMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAppId()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->appId:I

    return v0
.end method

.method protected abstract getBackupServerFileName()Ljava/lang/String;
.end method

.method public declared-synchronized getBackupServerList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/session/common/ServerProfile;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mBackupIPList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getBackupServerFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->loadObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mBackupIPList:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mBackupIPList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mBackupIPList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mBackupIPList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;->getOnlineBackupIpList()[Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mBackupIPList:Ljava/util/List;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mBackupIPList:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mBackupIPList:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized getCurrentApnOptimumServerData()Lcom/mi/milink/sdk/session/common/OptimumServerData;
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "other"

    invoke-static {}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getCurrentApn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getApnIspMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    const-string v2, "IIpInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get current apn optimum server list, apnKey is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ispKey is"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getOptimumServerData(Ljava/lang/String;)Lcom/mi/milink/sdk/session/common/OptimumServerData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDefaultServer()Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 5

    new-instance v0, Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    return-object v0
.end method

.method public declared-synchronized getOptimumIpMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mi/milink/sdk/session/common/OptimumServerData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getOptimumServerFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->loadObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mOptimumIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getOptimumServerFileName()Ljava/lang/String;
.end method

.method public declared-synchronized getRcentlyIpMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mi/milink/sdk/session/common/RecentlyServerData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getRecentlyServerFileName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->loadObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mRcentlyIpMap:Ljava/util/concurrent/ConcurrentHashMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecentlyServerData()Lcom/mi/milink/sdk/session/common/RecentlyServerData;
    .locals 6

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getCurrentApn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getRcentlyIpMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/milink/sdk/session/common/RecentlyServerData;

    const-string v3, "IIpInfoManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getRecentlyServerData serverData:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",apnKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract getRecentlyServerFileName()Ljava/lang/String;
.end method

.method public getTestBackupIp()[Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    invoke-virtual {v0}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;->getTestBackupIpList()[Lcom/mi/milink/sdk/session/common/ServerProfile;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->appId:I

    invoke-static {v0}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getmIpConfig()Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "TAG"

    const-string v1, "custom ip config"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->appId:I

    invoke-static {v0}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getmIpConfig()Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->appId:I

    invoke-static {v0}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getDomain()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->appId:I

    invoke-static {v1}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getBackServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-array v2, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v3, Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-direct {v3, v1, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v3, v2, v5

    new-array v3, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v4, Lcom/mi/milink/sdk/session/common/ServerProfile;

    invoke-direct {v4, v1, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v4, v3, v5

    new-instance v1, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    invoke-direct {v1, v0, v2, v3}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v1, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->appId:I

    sparse-switch v0, :sswitch_data_0

    :goto_1
    iget v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->appId:I

    const v1, 0x186a1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->appId:I

    const v1, 0x30d40

    if-ge v0, v1, :cond_0

    new-array v0, v8, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "58.83.160.92"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "120.92.24.134"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v6

    new-array v1, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "10.105.44.12"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    const-string v3, "milink.ac.mi.com"

    invoke-direct {v2, v3, v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto :goto_0

    :sswitch_0
    const-string v0, "milink.chat.mi.com"

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "58.83.160.100"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "120.131.6.160"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v6

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "123.59.39.164"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v8

    new-array v2, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v3, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v4, "111.206.200.91"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v3, v2, v5

    new-instance v3, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    invoke-direct {v3, v0, v1, v2}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v3, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto :goto_1

    :sswitch_1
    const-string v0, "link.g.mi.com"

    new-array v1, v8, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "120.134.33.114"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "42.62.94.188"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v6

    new-array v2, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v3, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v4, "42.62.94.226"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v3, v2, v5

    new-instance v3, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    invoke-direct {v3, v0, v1, v2}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v3, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "link.zifei.com"

    new-array v1, v8, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "120.134.33.114"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "42.62.94.188"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v6

    new-array v2, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v3, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v4, "42.62.94.50"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v3, v2, v5

    new-instance v3, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    invoke-direct {v3, v0, v1, v2}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v3, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto/16 :goto_1

    :sswitch_3
    new-array v0, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "120.134.33.152"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    new-array v1, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "42.62.94.226"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    const-string v3, "ent.g.mi.com"

    invoke-direct {v2, v3, v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "migc.g.mi.com"

    new-array v1, v8, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "58.83.160.115"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "124.243.204.75"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v6

    new-array v2, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v3, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v4, "42.62.94.101"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v3, v2, v5

    new-instance v3, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    invoke-direct {v3, v0, v1, v2}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v3, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto/16 :goto_1

    :sswitch_5
    new-array v0, v8, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "58.83.160.115"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "124.243.204.80"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v6

    new-array v1, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "10.99.184.86"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    const-string v3, "mipush.g.mi.com"

    invoke-direct {v2, v3, v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "milink.misupport.mi.com"

    new-array v1, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "124.243.204.139"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-array v2, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v3, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v4, "42.62.94.226"

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v3, v2, v5

    new-instance v3, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    invoke-direct {v3, v0, v1, v2}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v3, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto/16 :goto_1

    :sswitch_7
    iget v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->appId:I

    invoke-static {v0}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meng_1254_11_android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v8, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "58.83.160.92"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "120.92.24.134"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v6

    :goto_2
    new-array v1, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "111.206.200.91"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    const-string v3, "milink.zb.mi.com"

    invoke-direct {v2, v3, v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto/16 :goto_1

    :cond_3
    new-array v0, v8, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "58.83.160.92"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "120.92.24.134"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v6

    goto :goto_2

    :sswitch_8
    new-array v0, v8, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "124.251.58.163"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "120.92.24.139"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v6

    new-array v1, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "42.62.94.50"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    const-string v3, "milink.mtk.g.mi.com"

    invoke-direct {v2, v3, v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto/16 :goto_1

    :sswitch_9
    new-array v0, v8, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "120.92.24.145"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "58.83.177.15"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v6

    new-array v1, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "42.62.94.31"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    const-string v3, "mishop.g.mi.com"

    invoke-direct {v2, v3, v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto/16 :goto_1

    :sswitch_a
    new-array v0, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "42.62.94.50"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    new-array v1, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "42.62.94.50"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    const-string v3, "milink.ac.mi.com"

    invoke-direct {v2, v3, v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto/16 :goto_1

    :sswitch_b
    new-array v0, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "58.83.177.14"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    new-array v1, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "42.62.94.50"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    const-string v3, "knights.g.mi.com"

    invoke-direct {v2, v3, v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto/16 :goto_1

    :sswitch_c
    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "oversea"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-array v0, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "47.74.174.24"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    new-array v1, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "111.202.86.149"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    const-string v3, "gmsdk.inter.g.mi.com"

    invoke-direct {v2, v3, v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto/16 :goto_1

    :cond_4
    new-array v0, v8, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "58.83.160.173"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "42.62.94.23"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v6

    new-array v1, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "111.202.86.149"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    const-string v3, "gmsdk.g.mi.com"

    invoke-direct {v2, v3, v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto/16 :goto_1

    :sswitch_d
    new-array v0, v8, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "120.92.24.145"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "58.83.177.15"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v6

    new-array v1, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "42.62.94.31"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    const-string v3, "milink.go.g.mi.com"

    invoke-direct {v2, v3, v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto/16 :goto_1

    :sswitch_e
    new-array v0, v8, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "58.83.177.15"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "120.92.24.145"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v6

    new-array v1, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "111.202.86.148"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    const-string v3, "milink.migc.g.mi.com"

    invoke-direct {v2, v3, v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto/16 :goto_1

    :sswitch_f
    new-array v0, v8, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "58.83.177.15"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v2, "120.92.24.145"

    invoke-direct {v1, v2, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v6

    new-array v1, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v2, Lcom/mi/milink/sdk/session/common/ServerProfile;

    const-string v3, "111.206.200.91"

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    const-string v3, "milink.migc.g.mi.com"

    invoke-direct {v2, v3, v0, v1}, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;-><init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    iput-object v2, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mIpInfo:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2711 -> :sswitch_1
        0x2712 -> :sswitch_0
        0x2714 -> :sswitch_0
        0x2715 -> :sswitch_3
        0x2716 -> :sswitch_6
        0x2717 -> :sswitch_7
        0x2718 -> :sswitch_7
        0x2719 -> :sswitch_a
        0x271a -> :sswitch_b
        0x271b -> :sswitch_2
        0x271c -> :sswitch_d
        0x271e -> :sswitch_8
        0x4e21 -> :sswitch_4
        0x4e22 -> :sswitch_c
        0x4e23 -> :sswitch_9
        0x4e25 -> :sswitch_e
        0x4e26 -> :sswitch_f
        0x7531 -> :sswitch_5
    .end sparse-switch
.end method

.method public declared-synchronized setBackupServerList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/session/common/ServerProfile;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/mi/milink/sdk/config/IIpInfoManager;->mBackupIPList:Ljava/util/List;

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->saveBackupServerList()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOptmumServerList(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mi/milink/sdk/session/common/ServerProfile;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_3

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IIpInfoManager"

    const-string v1, "set optimum server list, but key is empty, use default key"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "other"

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getCurrentApn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getApnIspMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->saveApnIspMap()Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getOptimumServerData(Ljava/lang/String;)Lcom/mi/milink/sdk/session/common/OptimumServerData;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/mi/milink/sdk/session/common/OptimumServerData;

    invoke-direct {v0}, Lcom/mi/milink/sdk/session/common/OptimumServerData;-><init>()V

    :cond_2
    invoke-virtual {v0, p2}, Lcom/mi/milink/sdk/session/common/OptimumServerData;->setOptimumServers(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/milink/sdk/session/common/OptimumServerData;->setTimeStamp(J)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getOptimumIpMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->saveOptimumServerMap()Z

    const-string v2, "IIpInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setOptmumServerList serverData:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",ispKey:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",apnKey:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_3
    :try_start_1
    const-string v0, "IIpInfoManager"

    const-string v1, "serverList is null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecentlyServer(Lcom/mi/milink/sdk/session/common/ServerProfile;)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getRecentlyServerData()Lcom/mi/milink/sdk/session/common/RecentlyServerData;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/session/common/RecentlyServerData;

    invoke-direct {v0}, Lcom/mi/milink/sdk/session/common/RecentlyServerData;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/mi/milink/sdk/session/common/RecentlyServerData;->setRecentlyServer(Lcom/mi/milink/sdk/session/common/ServerProfile;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mi/milink/sdk/session/common/RecentlyServerData;->setTimeStamp(J)V

    invoke-static {}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getCurrentApn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->getRcentlyIpMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;->saveRecentlyServerMap()Z

    const-string v2, "IIpInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setRecentlyServer serverData:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",apnKey:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    const-string v0, "IIpInfoManager"

    const-string v1, "set recently server list, but key is null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/debug/MiLinkLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
