.class public Lcom/mi/milink/sdk/config/SimpleMiLinkIpInfoManager;
.super Lcom/mi/milink/sdk/config/IIpInfoManager;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/config/IIpInfoManager;-><init>(I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method protected getApnIspFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "apnisps_for_simplel_session"

    return-object v0
.end method

.method protected getBackupServerFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "backupservers_for_simplel_session"

    return-object v0
.end method

.method protected getOptimumServerFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "optservers_for_simplel_session"

    return-object v0
.end method

.method protected getRecentlyServerFileName()Ljava/lang/String;
    .locals 1

    const-string v0, "recentlyservers_for_simplel_session"

    return-object v0
.end method
