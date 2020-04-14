.class public Lcom/wali/gamecenter/report/ReplaceReport$Builder;
.super Ljava/lang/Object;


# instance fields
.field P:Lcom/wali/gamecenter/report/ReplaceReportParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/wali/gamecenter/report/ReplaceReportParams;

    invoke-direct {v0}, Lcom/wali/gamecenter/report/ReplaceReportParams;-><init>()V

    iput-object v0, p0, Lcom/wali/gamecenter/report/ReplaceReport$Builder;->P:Lcom/wali/gamecenter/report/ReplaceReportParams;

    return-void
.end method


# virtual methods
.method public create()Lcom/wali/gamecenter/report/ReplaceReport;
    .locals 2

    new-instance v0, Lcom/wali/gamecenter/report/ReplaceReport;

    invoke-direct {v0}, Lcom/wali/gamecenter/report/ReplaceReport;-><init>()V

    iget-object v1, p0, Lcom/wali/gamecenter/report/ReplaceReport$Builder;->P:Lcom/wali/gamecenter/report/ReplaceReportParams;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/ReplaceReport;->apply(Lcom/wali/gamecenter/report/ReplaceReportParams;)V

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/wali/gamecenter/report/ReplaceReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReplaceReport$Builder;->P:Lcom/wali/gamecenter/report/ReplaceReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReplaceReportParams;->action:Ljava/lang/String;

    return-object p0
.end method

.method public setClient(Ljava/lang/String;)Lcom/wali/gamecenter/report/ReplaceReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReplaceReport$Builder;->P:Lcom/wali/gamecenter/report/ReplaceReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReplaceReportParams;->client:Ljava/lang/String;

    return-object p0
.end method

.method public setCurPageId(Ljava/lang/String;)Lcom/wali/gamecenter/report/ReplaceReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReplaceReport$Builder;->P:Lcom/wali/gamecenter/report/ReplaceReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReplaceReportParams;->curPageid:Ljava/lang/String;

    return-object p0
.end method

.method public setFromApp(Ljava/lang/String;)Lcom/wali/gamecenter/report/ReplaceReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReplaceReport$Builder;->P:Lcom/wali/gamecenter/report/ReplaceReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReplaceReportParams;->fromApp:Ljava/lang/String;

    return-object p0
.end method

.method public setFromPkgName(Ljava/lang/String;)Lcom/wali/gamecenter/report/ReplaceReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReplaceReport$Builder;->P:Lcom/wali/gamecenter/report/ReplaceReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReplaceReportParams;->fromPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public setImei(Ljava/lang/String;)Lcom/wali/gamecenter/report/ReplaceReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReplaceReport$Builder;->P:Lcom/wali/gamecenter/report/ReplaceReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReplaceReportParams;->iuid:Ljava/lang/String;

    return-object p0
.end method

.method public setInstallType(Ljava/lang/String;)Lcom/wali/gamecenter/report/ReplaceReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReplaceReport$Builder;->P:Lcom/wali/gamecenter/report/ReplaceReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReplaceReportParams;->installtype:Ljava/lang/String;

    return-object p0
.end method

.method public setLoginStatus(Ljava/lang/String;)Lcom/wali/gamecenter/report/ReplaceReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReplaceReport$Builder;->P:Lcom/wali/gamecenter/report/ReplaceReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReplaceReportParams;->loginstatus:Ljava/lang/String;

    return-object p0
.end method

.method public setMiPkgName(Ljava/lang/String;)Lcom/wali/gamecenter/report/ReplaceReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReplaceReport$Builder;->P:Lcom/wali/gamecenter/report/ReplaceReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReplaceReportParams;->mipackagename:Ljava/lang/String;

    return-object p0
.end method

.method public setOtherPlatform(Ljava/lang/String;)Lcom/wali/gamecenter/report/ReplaceReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReplaceReport$Builder;->P:Lcom/wali/gamecenter/report/ReplaceReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReplaceReportParams;->otherplatform:Ljava/lang/String;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/wali/gamecenter/report/ReplaceReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReplaceReport$Builder;->P:Lcom/wali/gamecenter/report/ReplaceReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReplaceReportParams;->path:Ljava/lang/String;

    return-object p0
.end method

.method public setPkgName(Ljava/lang/String;)Lcom/wali/gamecenter/report/ReplaceReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReplaceReport$Builder;->P:Lcom/wali/gamecenter/report/ReplaceReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReplaceReportParams;->packagename:Ljava/lang/String;

    return-object p0
.end method

.method public setPvcode(Ljava/lang/String;)Lcom/wali/gamecenter/report/ReplaceReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReplaceReport$Builder;->P:Lcom/wali/gamecenter/report/ReplaceReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReplaceReportParams;->pvcode:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/wali/gamecenter/report/ReplaceReport$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/ReplaceReport$Builder;->P:Lcom/wali/gamecenter/report/ReplaceReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReplaceReportParams;->type:Ljava/lang/String;

    return-object p0
.end method
