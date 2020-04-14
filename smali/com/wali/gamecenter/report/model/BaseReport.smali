.class public Lcom/wali/gamecenter/report/model/BaseReport;
.super Ljava/lang/Object;


# instance fields
.field private ac:Ljava/lang/String;

.field public carrier:Ljava/lang/String;

.field private client:Ljava/lang/String;

.field protected ext:Lcom/wali/gamecenter/report/model/EXT;

.field public gmac:Ljava/lang/String;
    .annotation runtime Lcom/xiaomi/gamecenter/sdk/bo;
        a = "3gmac"
    .end annotation
.end field

.field public imei:Ljava/lang/String;
    .annotation runtime Lcom/xiaomi/gamecenter/sdk/bo;
        a = "IMEI"
    .end annotation
.end field

.field public index:Ljava/lang/String;

.field public jarver:Ljava/lang/String;

.field protected oaid:Ljava/lang/String;

.field private type:Lcom/wali/gamecenter/report/ReportType;

.field public ua:Ljava/lang/String;

.field protected udid:Ljava/lang/String;

.field public ver:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/wali/gamecenter/report/ReportType;->STATISTICS:Lcom/wali/gamecenter/report/ReportType;

    iput-object v0, p0, Lcom/wali/gamecenter/report/model/BaseReport;->type:Lcom/wali/gamecenter/report/ReportType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/wali/gamecenter/report/utils/TelUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/model/BaseReport;->ver:Ljava/lang/String;

    invoke-static {p1}, Lcom/wali/gamecenter/report/utils/TelUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/model/BaseReport;->imei:Ljava/lang/String;

    invoke-static {}, Lcom/wali/gamecenter/report/utils/TelUtils;->getRandomIndex()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/model/BaseReport;->index:Ljava/lang/String;

    invoke-static {p1}, Lcom/wali/gamecenter/report/utils/TelUtils;->getSIMOperatorName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/model/BaseReport;->carrier:Ljava/lang/String;

    invoke-static {p1}, Lcom/wali/gamecenter/report/utils/TelUtils;->get3gMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/model/BaseReport;->gmac:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/wali/gamecenter/report/utils/TelUtils;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/model/BaseReport;->jarver:Ljava/lang/String;

    invoke-static {p1}, Lcom/wali/gamecenter/report/utils/TelUtils;->get_device_agent_(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wali/gamecenter/report/model/BaseReport;->ua:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/BaseReport;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public getClient()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/BaseReport;->client:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Lcom/wali/gamecenter/report/model/EXT;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/BaseReport;->ext:Lcom/wali/gamecenter/report/model/EXT;

    return-object v0
.end method

.method public getOaid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/BaseReport;->oaid:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/wali/gamecenter/report/ReportType;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/BaseReport;->type:Lcom/wali/gamecenter/report/ReportType;

    return-object v0
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/BaseReport;->udid:Ljava/lang/String;

    return-object v0
.end method

.method public send()V
    .locals 1

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/wali/gamecenter/report/ReportManager;->sendReport(Lcom/wali/gamecenter/report/model/BaseReport;)V

    return-void
.end method

.method public setAc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/BaseReport;->ac:Ljava/lang/String;

    return-void
.end method

.method public setClient(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/BaseReport;->client:Ljava/lang/String;

    return-void
.end method

.method public setExt(Lcom/wali/gamecenter/report/model/EXT;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/BaseReport;->ext:Lcom/wali/gamecenter/report/model/EXT;

    return-void
.end method

.method public setOaid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/BaseReport;->oaid:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/wali/gamecenter/report/ReportType;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/BaseReport;->type:Lcom/wali/gamecenter/report/ReportType;

    return-void
.end method

.method public setUdid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/BaseReport;->udid:Ljava/lang/String;

    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/xiaomi/gson/Gson;

    invoke-direct {v0}, Lcom/xiaomi/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/wali/gamecenter/report/model/BaseReport;->toJson()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gson/Gson;

    invoke-direct {v1}, Lcom/xiaomi/gson/Gson;-><init>()V

    new-instance v2, Lcom/wali/gamecenter/report/model/BaseReport$1;

    invoke-direct {v2, p0}, Lcom/wali/gamecenter/report/model/BaseReport$1;-><init>(Lcom/wali/gamecenter/report/model/BaseReport;)V

    invoke-virtual {v2}, Lcom/wali/gamecenter/report/model/BaseReport$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/gson/Gson;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "&"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
