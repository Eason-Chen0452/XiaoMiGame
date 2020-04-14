.class public Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;
.super Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;


# static fields
.field private static INSTANCE:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

.field static mPassportInit:Z


# instance fields
.field mServiceNotReadyCache:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/mi/milink/sdk/aidl/PacketData;",
            "Lcom/mi/milink/sdk/client/SendPacketListener;",
            ">;>;"
        }
    .end annotation
.end field

.field sendingMilinkServiceReadyCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mPassportInit:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/client/ipc/internal/MiLinkServiceHost;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mServiceNotReadyCache:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->sendingMilinkServiceReadyCache:Z

    return-void
.end method

.method public static clearNotification(I)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->clearNotification(I)V

    return-void
.end method

.method public static enableConnectModeManual(Z)Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/mi/milink/sdk/aidl/IService;->enableConnectionManualMode(Z)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "MiLinkClient"

    const-string v1, "enableConnectModeManual but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when setConnectModeAuto"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static fastLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 3

    const-string v0, "MiLinkClient"

    const-string v1, "fastLogin"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/mi/milink/sdk/aidl/IService;->fastLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MiLinkClient"

    const-string v1, "registerBind but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when registerBind"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static forceReconnet()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mi/milink/sdk/aidl/IService;->forceReconnet()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MiLinkClient"

    const-string v1, "forceReconnet but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when forceReconnet"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getAnonymousAccountId()J
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mi/milink/sdk/aidl/IService;->getAnonymousAccountId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "MiLinkClient"

    const-string v1, "getSuid but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-wide/16 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when getSuid"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getInstance()Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;
    .locals 2

    sget-object v0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->INSTANCE:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    if-nez v0, :cond_1

    const-class v1, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->INSTANCE:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    invoke-direct {v0}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->INSTANCE:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->INSTANCE:Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getMiLinkConnectState()I
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mi/milink/sdk/aidl/IService;->getServerState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "MiLinkClient"

    const-string v1, "getMiLinkConnectState but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when getMiLinkConnectState"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getRemoteService()Lcom/mi/milink/sdk/aidl/IService;
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getInstance()Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteServiceProxy()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    return-object v0
.end method

.method public static getSuid()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mi/milink/sdk/aidl/IService;->getSuid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MiLinkClient"

    const-string v1, "getSuid but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when getSuid"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)Z
    .locals 7

    const/4 v6, 0x0

    const-string v0, "MiLinkClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init, milinkversion="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMiLinkVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getMiLinkSubVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiLinkClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init service,passportInit="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,app  is serviceToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", serviceToken.length= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "security="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", security.length= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mPassportInit:Z

    if-nez v0, :cond_0

    sput-boolean p4, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mPassportInit:Z

    :cond_0
    invoke-static {}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->getInstance()Lcom/mi/milink/sdk/account/manager/MiAccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/account/manager/MiAccountManager;->setUserId(Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isSupportMiPush()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    new-instance v1, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$1;

    invoke-direct {v1}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$1;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/mi/milink/sdk/mipush/MiPushManager;->registerMiPush(Ljava/lang/String;Lcom/mi/milink/sdk/mipush/MiPushManager$MiPushRegisterListener;)V

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v5, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mPassportInit:Z

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/mi/milink/sdk/aidl/IService;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZ)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mPassportInit:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const-string v0, "MiLinkClient"

    const-string v1, "init but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when init"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static initUseAnonymousMode()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mi/milink/sdk/aidl/IService;->initUseAnonymousMode()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MiLinkClient"

    const-string v1, "initUseAnonymousMode but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when initUseAnonymousMode"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isMiLinkLogined()Z
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mi/milink/sdk/aidl/IService;->isMiLinkLogined()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "MiLinkClient"

    const-string v1, "isMiLinkLogined but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when isMiLinkLogined"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static logoff()V
    .locals 3

    invoke-static {}, Lcom/mi/milink/sdk/data/ClientAppInfo;->isSupportMiPush()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->logoff()V

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/mi/milink/sdk/aidl/IService;->logoff()V

    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getInstance()Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->stopService()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "MiLinkClient"

    const-string v1, "logoff but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when logoff"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static sendAsync(Lcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->sendAsync(Lcom/mi/milink/sdk/aidl/PacketData;I)V

    return-void
.end method

.method public static sendAsync(Lcom/mi/milink/sdk/aidl/PacketData;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->sendAsync(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/client/SendPacketListener;)V

    return-void
.end method

.method public static sendAsync(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/client/SendPacketListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->sendAsync(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/client/SendPacketListener;Z)V

    return-void
.end method

.method public static sendAsync(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/client/SendPacketListener;Z)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ary you kidding me ? packet is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Packet\'s command is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/mi/milink/sdk/aidl/IService;->sendAsyncWithResponse(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/aidl/ISendCallback;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v1, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;

    invoke-direct {v1, p2}, Lcom/mi/milink/sdk/client/ipc/internal/MnsSendPacketListener;-><init>(Lcom/mi/milink/sdk/client/SendPacketListener;)V

    invoke-interface {v0, p0, p1, v1}, Lcom/mi/milink/sdk/aidl/IService;->sendAsyncWithResponse(Lcom/mi/milink/sdk/aidl/PacketData;ILcom/mi/milink/sdk/aidl/ISendCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when sendAsync"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    if-nez p3, :cond_5

    :try_start_1
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getInstance()Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p0, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->addToServiceNotReadyCache(Landroid/util/Pair;)V

    const-string v0, "MiLinkClient"

    const-string v1, "sendAsync but remote service = null,try add to cache"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_2

    const/4 v0, -0x3

    const-string v1, "milink-service not ready!"

    invoke-interface {p2, v0, v1}, Lcom/mi/milink/sdk/client/SendPacketListener;->onFailed(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static sendSync(Lcom/mi/milink/sdk/aidl/PacketData;I)Lcom/mi/milink/sdk/aidl/PacketData;
    .locals 14

    const/4 v13, 0x0

    new-instance v0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;

    invoke-direct {v0, p0, p1}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;-><init>(Lcom/mi/milink/sdk/aidl/PacketData;I)V

    invoke-virtual {v0}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$3;->start()Lcom/mi/milink/sdk/base/MessageTask;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-int/lit16 v1, p1, 0x1388

    int-to-long v2, v1

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lcom/mi/milink/sdk/base/MessageTask;->getResult(JLjava/util/concurrent/TimeUnit;)Lcom/mi/milink/sdk/aidl/PacketData;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->getInstance()Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getBusiCode()I

    move-result v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getResponseSize()I

    move-result v11

    invoke-virtual {v0}, Lcom/mi/milink/sdk/aidl/PacketData;->getSeqNo()I

    move-result v12

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "task InterruptedException"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/mi/milink/sdk/client/MiLinkException;

    if-eqz v2, :cond_0

    const-string v0, "MiLinkClient"

    const-string v2, ""

    invoke-static {v0, v2, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    const-string v1, "MiLinkClient"

    const-string v2, "task ExecutionException"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "task CancellationException"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-static {}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->getInstance()Lcom/mi/milink/sdk/debug/MiLinkMonitor;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0}, Lcom/mi/milink/sdk/aidl/PacketData;->getCommand()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x203

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move v3, v13

    move v10, v13

    move v11, v13

    move v12, v13

    invoke-virtual/range {v1 .. v12}, Lcom/mi/milink/sdk/debug/MiLinkMonitor;->trace(Ljava/lang/String;ILjava/lang/String;IJJIII)V

    const-string v1, "MiLinkClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "task TimeoutException, detailName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setAllowAnonymousLoginSwitch(Z)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/mi/milink/sdk/aidl/IService;->setAllowAnonymousLoginSwitch(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MiLinkClient"

    const-string v1, "setAllowAnonymousLoginSwitch but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when setAllowAnonymousLoginSwitch"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setEventListener(Lcom/mi/milink/sdk/client/IEventListener;)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getInstance()Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    move-result-object v0

    iput-object p0, v0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mEventListener:Lcom/mi/milink/sdk/client/IEventListener;

    return-void
.end method

.method public static setGlobalPushFlag(Z)V
    .locals 3

    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getInstance()Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    move-result-object v0

    iput-boolean p0, v0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mGlobalPushFlag:Z

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/mi/milink/sdk/aidl/IService;->setGlobalPushFlag(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MiLinkClient"

    const-string v1, "setMilinkLogLevel but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when setMilinkLogLevel"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setIpAndPortInManualMode(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/mi/milink/sdk/aidl/IService;->setIpAndPortInManualMode(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MiLinkClient"

    const-string v1, "setIpAndPortInManualMode but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when setIpAndPortInManualMode"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setLanguage(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/mi/milink/sdk/aidl/IService;->setLanguage(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MiLinkClient"

    const-string v1, "setMilinkLogLevel but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when setMilinkLogLevel"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setMiPushMessageListener(Lcom/mi/milink/sdk/mipush/MiPushMessageListener;)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/mipush/MiPushManager;->getInstance()Lcom/mi/milink/sdk/mipush/MiPushManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/mipush/MiPushManager;->setMessageListener(Lcom/mi/milink/sdk/mipush/MiPushMessageListener;)V

    return-void
.end method

.method public static setMiPushRegId(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "MiLinkClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mMiPushRegId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getInstance()Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    move-result-object v0

    iput-object p0, v0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mMiPushRegId:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/mi/milink/sdk/aidl/IService;->setMipushRegId(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "MiLinkClient"

    const-string v1, "setMiPushRegId but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when setMiPushRegId"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setMilinkLogLevel(I)V
    .locals 3

    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getInstance()Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    move-result-object v0

    iput p0, v0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mLogLevel:I

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/mi/milink/sdk/aidl/IService;->setMilinkLogLevel(I)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MiLinkClient"

    const-string v1, "setMilinkLogLevel but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when setMilinkLogLevel"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setMilinkStateObserver(Lcom/mi/milink/sdk/client/MiLinkObserver;)V
    .locals 2

    const-string v0, "MiLinkClient"

    const-string v1, "setMilinkStateObserver"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getInstance()Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->deleteObservers()V

    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getInstance()Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method public static setPacketListener(Lcom/mi/milink/sdk/client/IPacketListener;)V
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getInstance()Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;

    move-result-object v0

    iput-object p0, v0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mPacketListener:Lcom/mi/milink/sdk/client/IPacketListener;

    return-void
.end method

.method public static setTimeoutMultiply(F)Z
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v1, p0, v1

    if-lez v1, :cond_1

    :cond_0
    const-string v1, "MiLinkClient"

    const-string v2, "illegal timeoutMultiply\uff0ctimeoutMultiply between 1-10"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, p0}, Lcom/mi/milink/sdk/aidl/IService;->setTimeoutMultiply(F)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "MiLinkClient"

    const-string v2, "setTimeoutMultiply but remote service = null"

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MiLinkClient"

    const-string v3, "error when setBackground"

    invoke-static {v2, v3, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static suspectBadConnection()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->getRemoteService()Lcom/mi/milink/sdk/aidl/IService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mi/milink/sdk/aidl/IService;->suspectBadConnection()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MiLinkClient"

    const-string v1, "suspectBadConnection but remote service = null"

    invoke-static {v0, v1}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiLinkClient"

    const-string v2, "error when suspectBadConnection"

    invoke-static {v1, v2, v0}, Lcom/mi/milink/sdk/client/ipc/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addToServiceNotReadyCache(Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Lcom/mi/milink/sdk/aidl/PacketData;",
            "Lcom/mi/milink/sdk/client/SendPacketListener;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mServiceNotReadyCache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mServiceNotReadyCache:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/mi/milink/sdk/client/SendPacketListener;

    const/4 v1, -0x4

    const-string v2, "milink-service not ready and cache queue is full!!abandon"

    invoke-interface {v0, v1, v2}, Lcom/mi/milink/sdk/client/SendPacketListener;->onFailed(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mServiceNotReadyCache:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public internalStop()V
    .locals 0

    invoke-virtual {p0}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->killService()V

    return-void
.end method

.method protected onMilinkServiceReady()V
    .locals 2

    iget-boolean v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->sendingMilinkServiceReadyCache:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->mServiceNotReadyCache:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;->sendingMilinkServiceReadyCache:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$2;

    invoke-direct {v1, p0}, Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc$2;-><init>(Lcom/mi/milink/sdk/client/ipc/MiLinkClientIpc;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
