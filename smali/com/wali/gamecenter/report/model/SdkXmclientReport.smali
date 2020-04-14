.class public Lcom/wali/gamecenter/report/model/SdkXmclientReport;
.super Lcom/wali/gamecenter/report/model/BaseReport;


# instance fields
.field private CID:Ljava/lang/String;

.field private appid:Ljava/lang/String;

.field private cpChannel:Ljava/lang/String;

.field private cuipage:Ljava/lang/String;

.field private cuipageid:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/wali/gamecenter/report/model/BaseReport;-><init>(Landroid/content/Context;)V

    const-string v0, "xm_client"

    invoke-virtual {p0, v0}, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->setAc(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getCID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->CID:Ljava/lang/String;

    return-object v0
.end method

.method public getCpChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->cpChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getCuipage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->cuipage:Ljava/lang/String;

    return-object v0
.end method

.method public getCuipageid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->cuipageid:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->appid:Ljava/lang/String;

    return-void
.end method

.method public setCID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->CID:Ljava/lang/String;

    return-void
.end method

.method public setCpChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->cpChannel:Ljava/lang/String;

    return-void
.end method

.method public setCuipage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->cuipage:Ljava/lang/String;

    return-void
.end method

.method public setCuipageid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->cuipageid:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->from:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->position:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->uid:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/SdkXmclientReport;->version:Ljava/lang/String;

    return-void
.end method
