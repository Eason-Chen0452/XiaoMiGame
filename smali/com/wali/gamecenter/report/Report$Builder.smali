.class public Lcom/wali/gamecenter/report/Report$Builder;
.super Ljava/lang/Object;


# instance fields
.field P:Lcom/wali/gamecenter/report/ReportParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/wali/gamecenter/report/ReportParams;

    invoke-direct {v0}, Lcom/wali/gamecenter/report/ReportParams;-><init>()V

    iput-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    return-void
.end method


# virtual methods
.method public create()Lcom/wali/gamecenter/report/Report;
    .locals 2

    new-instance v0, Lcom/wali/gamecenter/report/Report;

    invoke-direct {v0}, Lcom/wali/gamecenter/report/Report;-><init>()V

    iget-object v1, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/Report;->apply(Lcom/wali/gamecenter/report/ReportParams;)V

    return-object v0
.end method

.method public setAction(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->action:Ljava/lang/String;

    return-object p0
.end method

.method public setAdsCv(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->adsCv:Ljava/lang/String;

    return-object p0
.end method

.method public setAdsId(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->adsId:Ljava/lang/String;

    return-object p0
.end method

.method public setAdsType(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->adsType:Ljava/lang/String;

    return-object p0
.end method

.method public setCid(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->cid:Ljava/lang/String;

    return-object p0
.end method

.method public setClient(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->client:Ljava/lang/String;

    return-object p0
.end method

.method public setCurPage(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->curPage:Ljava/lang/String;

    return-object p0
.end method

.method public setCurPageId(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->curPageId:Ljava/lang/String;

    return-object p0
.end method

.method public setCurPagePkgName(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->curPagePkgName:Ljava/lang/String;

    return-object p0
.end method

.method public setDownloadMode(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public setFrom(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->from:Ljava/lang/String;

    return-object p0
.end method

.method public setFromId(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->fromId:Ljava/lang/String;

    return-object p0
.end method

.method public setFromLabel(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->fromLabel:Ljava/lang/String;

    return-object p0
.end method

.method public setModuleId(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->moduleId:Ljava/lang/String;

    return-object p0
.end method

.method public setOriginManual(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->originManual:Ljava/lang/String;

    return-object p0
.end method

.method public setPosition(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->position:Ljava/lang/String;

    return-object p0
.end method

.method public setTrace(Ljava/lang/String;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->trace:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Lcom/wali/gamecenter/report/ReportType;)Lcom/wali/gamecenter/report/Report$Builder;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/Report$Builder;->P:Lcom/wali/gamecenter/report/ReportParams;

    iput-object p1, v0, Lcom/wali/gamecenter/report/ReportParams;->type:Lcom/wali/gamecenter/report/ReportType;

    return-object p0
.end method
