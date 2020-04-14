.class public Lcom/wali/gamecenter/report/model/XmclientReport;
.super Lcom/wali/gamecenter/report/model/BaseReport;


# instance fields
.field private adsCv:Ljava/lang/String;
    .annotation runtime Lcom/xiaomi/gamecenter/sdk/bo;
        a = "cv"
    .end annotation
.end field

.field private adsId:Ljava/lang/String;
    .annotation runtime Lcom/xiaomi/gamecenter/sdk/bo;
        a = "adId"
    .end annotation
.end field

.field private adsType:Ljava/lang/String;

.field private cid:Ljava/lang/String;

.field private curPage:Ljava/lang/String;

.field private curPageId:Ljava/lang/String;

.field private from:Ljava/lang/String;

.field private fromId:Ljava/lang/String;

.field private fromLabel:Ljava/lang/String;

.field private moduleId:Ljava/lang/String;

.field private origin:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private pp1:Ljava/lang/String;

.field private pp2:Ljava/lang/String;

.field private tm:Ljava/lang/String;

.field private tt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/wali/gamecenter/report/model/BaseReport;-><init>(Landroid/content/Context;)V

    const-string v0, "game_center"

    invoke-virtual {p0, v0}, Lcom/wali/gamecenter/report/model/XmclientReport;->setAc(Ljava/lang/String;)V

    invoke-static {}, Lcom/wali/gamecenter/report/ReportBaseParams;->getInstance()Lcom/wali/gamecenter/report/ReportBaseParams;

    move-result-object v0

    iget-object v0, v0, Lcom/wali/gamecenter/report/ReportBaseParams;->uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->curPageId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/wali/gamecenter/report/model/XmclientReport;->getType()Lcom/wali/gamecenter/report/ReportType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wali/gamecenter/report/ReportType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/wali/gamecenter/report/utils/ReportUtils;->getSecurityParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/wali/gamecenter/report/model/XmclientReport;->setPp1(Ljava/lang/String;)V

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/wali/gamecenter/report/model/XmclientReport;->setPp2(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wali/gamecenter/report/model/XmclientReport;->setTm(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAdsCv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->adsCv:Ljava/lang/String;

    return-object v0
.end method

.method public getAdsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->adsId:Ljava/lang/String;

    return-object v0
.end method

.method public getAdsType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->adsType:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->cid:Ljava/lang/String;

    return-object v0
.end method

.method public getCurPage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->curPage:Ljava/lang/String;

    return-object v0
.end method

.method public getCurPageId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->curPageId:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getFromId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->fromId:Ljava/lang/String;

    return-object v0
.end method

.method public getFromLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->fromLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->moduleId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->position:Ljava/lang/String;

    return-object v0
.end method

.method public getPp1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->pp1:Ljava/lang/String;

    return-object v0
.end method

.method public getPp2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->pp2:Ljava/lang/String;

    return-object v0
.end method

.method public getTm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->tm:Ljava/lang/String;

    return-object v0
.end method

.method public getTt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->tt:Ljava/lang/String;

    return-object v0
.end method

.method public setAdsCv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->adsCv:Ljava/lang/String;

    return-void
.end method

.method public setAdsId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->adsId:Ljava/lang/String;

    return-void
.end method

.method public setAdsType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->adsType:Ljava/lang/String;

    return-void
.end method

.method public setCid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->cid:Ljava/lang/String;

    return-void
.end method

.method public setCurPage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->curPage:Ljava/lang/String;

    return-void
.end method

.method public setCurPageId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->curPageId:Ljava/lang/String;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->from:Ljava/lang/String;

    return-void
.end method

.method public setFromId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->fromId:Ljava/lang/String;

    return-void
.end method

.method public setFromLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->fromLabel:Ljava/lang/String;

    return-void
.end method

.method public setModuleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->moduleId:Ljava/lang/String;

    return-void
.end method

.method public setOrigin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->origin:Ljava/lang/String;

    return-void
.end method

.method public setPosition(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->position:Ljava/lang/String;

    return-void
.end method

.method public setPp1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->pp1:Ljava/lang/String;

    return-void
.end method

.method public setPp2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->pp2:Ljava/lang/String;

    return-void
.end method

.method public setTm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->tm:Ljava/lang/String;

    return-void
.end method

.method public setTt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmclientReport;->tt:Ljava/lang/String;

    return-void
.end method
