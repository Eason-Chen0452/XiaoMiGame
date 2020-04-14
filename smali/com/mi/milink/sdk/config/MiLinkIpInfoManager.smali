.class public Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;
.super Lcom/mi/milink/sdk/config/IIpInfoManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiLinkIpInfoManager"

.field private static sInstance:Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->sInstance:Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mi/milink/sdk/config/IIpInfoManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;
    .locals 2

    sget-object v0, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->sInstance:Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->sInstance:Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    invoke-direct {v0}, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->sInstance:Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->sInstance:Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

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

    sput-object v0, Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;->sInstance:Lcom/mi/milink/sdk/config/MiLinkIpInfoManager;

    return-void
.end method

.method protected getApnIspFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "apnisps"

    return-object v0
.end method

.method protected getBackupServerFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "backupservers"

    return-object v0
.end method

.method protected getOptimumServerFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "optservers"

    return-object v0
.end method

.method protected getRecentlyServerFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "recentlyservers"

    return-object v0
.end method
