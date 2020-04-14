.class public Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milink/sdk/data/ClientAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appId:I

.field private appName:Ljava/lang/String;

.field private backServer:Ljava/lang/String;

.field private customTag:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private gv:Ljava/lang/String;

.field private heartBeat:Z

.field private isIpModle:Z

.field private languageCode:Ljava/lang/String;

.field private logPath:Ljava/lang/String;

.field private mConfig:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

.field private mMode:I

.field private mipushAppId:Ljava/lang/String;

.field private mipushAppKey:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private platformName:Ljava/lang/String;

.field private releaseChannel:Ljava/lang/String;

.field private serviceProcessName:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->appId:I

    const-string v0, "and"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->platformName:Ljava/lang/String;

    iput v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->versionCode:I

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->appName:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->versionName:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->releaseChannel:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->packageName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->serviceProcessName:Ljava/lang/String;

    const-string v0, "zh_CN"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->languageCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->logPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->mipushAppId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->mipushAppKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->gv:Ljava/lang/String;

    iput v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->mMode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->domain:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->backServer:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->mConfig:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->heartBeat:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->customTag:Ljava/lang/String;

    iput p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->appId:I

    return-void
.end method

.method static synthetic access$000(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->appId:I

    return v0
.end method

.method static synthetic access$100(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->platformName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->mipushAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->mipushAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->gv:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->mMode:I

    return v0
.end method

.method static synthetic access$1400(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->domain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->backServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->mConfig:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->versionCode:I

    return v0
.end method

.method static synthetic access$300(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->appName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->releaseChannel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->serviceProcessName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->logPath:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/mi/milink/sdk/data/ClientAppInfo;
    .locals 2

    new-instance v0, Lcom/mi/milink/sdk/data/ClientAppInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;-><init>(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;Lcom/mi/milink/sdk/data/ClientAppInfo$1;)V

    return-object v0
.end method

.method public getCustomTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->customTag:Ljava/lang/String;

    return-object v0
.end method

.method public isIpModle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->isIpModle:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public setBackServer(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->backServer:Ljava/lang/String;

    return-object p0
.end method

.method public setCustomTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->customTag:Ljava/lang/String;

    return-void
.end method

.method public setDomain(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public setGv(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->gv:Ljava/lang/String;

    return-object p0
.end method

.method public setHeartBeat(Z)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->heartBeat:Z

    return-object p0
.end method

.method public setIPConfig(Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->mConfig:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    return-object p0
.end method

.method public setIpModle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->isIpModle:Z

    return-void
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->languageCode:Ljava/lang/String;

    return-object p0
.end method

.method public setLinkMode(I)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->mMode:I

    return-object p0
.end method

.method public setLogPath(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->logPath:Ljava/lang/String;

    return-object p0
.end method

.method public setMipushAppId(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->mipushAppId:Ljava/lang/String;

    return-object p0
.end method

.method public setMipushAppKey(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->mipushAppKey:Ljava/lang/String;

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setPlatformName(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->platformName:Ljava/lang/String;

    return-object p0
.end method

.method public setReleaseChannel(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->releaseChannel:Ljava/lang/String;

    return-object p0
.end method

.method public setServiceProcessName(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->serviceProcessName:Ljava/lang/String;

    return-object p0
.end method

.method public setVersionCode(I)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->versionCode:I

    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->versionName:Ljava/lang/String;

    return-object p0
.end method
