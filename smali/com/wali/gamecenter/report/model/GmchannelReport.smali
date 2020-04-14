.class public Lcom/wali/gamecenter/report/model/GmchannelReport;
.super Lcom/wali/gamecenter/report/model/BaseReport;


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/wali/gamecenter/report/model/BaseReport;-><init>(Landroid/content/Context;)V

    const-string v0, "gm_channel"

    invoke-virtual {p0, v0}, Lcom/wali/gamecenter/report/model/GmchannelReport;->setAc(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/GmchannelReport;->j:Ljava/lang/String;

    return-object v0
.end method

.method public setJ(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/GmchannelReport;->j:Ljava/lang/String;

    return-void
.end method
