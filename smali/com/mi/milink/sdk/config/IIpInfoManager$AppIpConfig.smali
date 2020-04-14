.class public Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/config/IIpInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppIpConfig"
.end annotation


# instance fields
.field private host:Ljava/lang/String;

.field private onlineBackupIpList:[Lcom/mi/milink/sdk/session/common/ServerProfile;

.field private testBackupIpList:[Lcom/mi/milink/sdk/session/common/ServerProfile;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/mi/milink/sdk/session/common/ServerProfile;[Lcom/mi/milink/sdk/session/common/ServerProfile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;->host:Ljava/lang/String;

    iput-object p2, p0, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;->onlineBackupIpList:[Lcom/mi/milink/sdk/session/common/ServerProfile;

    iput-object p3, p0, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;->testBackupIpList:[Lcom/mi/milink/sdk/session/common/ServerProfile;

    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineBackupIpList()[Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;->onlineBackupIpList:[Lcom/mi/milink/sdk/session/common/ServerProfile;

    return-object v0
.end method

.method public getTestBackupIpList()[Lcom/mi/milink/sdk/session/common/ServerProfile;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;->testBackupIpList:[Lcom/mi/milink/sdk/session/common/ServerProfile;

    return-object v0
.end method
