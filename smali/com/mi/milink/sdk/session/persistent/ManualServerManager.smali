.class public Lcom/mi/milink/sdk/session/persistent/ManualServerManager;
.super Lcom/mi/milink/sdk/session/common/IServerManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "ManualServerManager"

.field private static sInstance:Lcom/mi/milink/sdk/session/persistent/ManualServerManager;


# instance fields
.field private assignIp:Ljava/lang/String;

.field private assignPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/ManualServerManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/session/common/IServerManager;-><init>(Lcom/mi/milink/sdk/config/IIpInfoManager;)V

    return-void
.end method

.method public static getInstance()Lcom/mi/milink/sdk/session/persistent/ManualServerManager;
    .locals 2

    sget-object v0, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/ManualServerManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/ManualServerManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;

    invoke-direct {v0}, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/ManualServerManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/ManualServerManager;

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

    sput-object v0, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->sInstance:Lcom/mi/milink/sdk/session/persistent/ManualServerManager;

    return-void
.end method

.method public getNext(Lcom/mi/milink/sdk/session/common/ServerProfile;I)[Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public reset(Z)[Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->assignIp:Ljava/lang/String;

    invoke-static {v0}, Lcom/mi/milink/sdk/util/CommonUtils;->isLegalIp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->assignPort:I

    invoke-static {v0}, Lcom/mi/milink/sdk/util/CommonUtils;->isLegalPort(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v6, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    new-instance v1, Lcom/mi/milink/sdk/session/common/ServerProfile;

    iget-object v2, p0, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->assignIp:Ljava/lang/String;

    iget v3, p0, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->assignPort:I

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v6, v4}, Lcom/mi/milink/sdk/session/common/ServerProfile;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v5, [Lcom/mi/milink/sdk/session/common/ServerProfile;

    goto :goto_0
.end method

.method public save(Lcom/mi/milink/sdk/session/common/ServerProfile;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/mi/milink/sdk/util/CommonUtils;->isLegalIp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->assignIp:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setPort(I)V
    .locals 1

    invoke-static {p1}, Lcom/mi/milink/sdk/util/CommonUtils;->isLegalPort(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/mi/milink/sdk/session/persistent/ManualServerManager;->assignPort:I

    :cond_0
    return-void
.end method
