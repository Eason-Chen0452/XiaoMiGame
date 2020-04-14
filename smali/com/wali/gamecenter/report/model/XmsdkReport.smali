.class public Lcom/wali/gamecenter/report/model/XmsdkReport;
.super Lcom/wali/gamecenter/report/model/BaseReport;


# instance fields
.field private CID:Ljava/lang/String;

.field private appid:Ljava/lang/String;

.field private cpChannel:Ljava/lang/String;

.field private md5imei:Ljava/lang/String;

.field private num:Ljava/lang/String;

.field private p1:Ljava/lang/String;

.field private p2:Ljava/lang/String;

.field private step:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private wasteTime:Ljava/lang/String;
    .annotation runtime Lcom/xiaomi/gamecenter/sdk/bo;
        a = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/wali/gamecenter/report/model/BaseReport;-><init>(Landroid/content/Context;)V

    const-string v0, "xmsdk"

    invoke-virtual {p0, v0}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setAc(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/wali/gamecenter/report/utils/MD5;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/wali/gamecenter/report/utils/TelUtils;->getRandom(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v2}, Lcom/wali/gamecenter/report/utils/TelUtils;->getRandom(I)I

    move-result v2

    add-int v3, v1, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setP1(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setP2(Ljava/lang/String;)V

    new-instance v0, Lcom/wali/gamecenter/report/model/EXT;

    invoke-direct {v0}, Lcom/wali/gamecenter/report/model/EXT;-><init>()V

    iput-object v0, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->ext:Lcom/wali/gamecenter/report/model/EXT;

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->ext:Lcom/wali/gamecenter/report/model/EXT;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/EXT;->localtime:Ljava/lang/String;

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->ext:Lcom/wali/gamecenter/report/model/EXT;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/EXT;->packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getCID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->CID:Ljava/lang/String;

    return-object v0
.end method

.method public getCpChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->cpChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5imei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->md5imei:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->num:Ljava/lang/String;

    return-object v0
.end method

.method public getP1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->p1:Ljava/lang/String;

    return-object v0
.end method

.method public getP2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->p2:Ljava/lang/String;

    return-object v0
.end method

.method public getStep()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->step:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getWasteTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->wasteTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAppid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->appid:Ljava/lang/String;

    return-void
.end method

.method public setCID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->CID:Ljava/lang/String;

    return-void
.end method

.method public setCpChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->cpChannel:Ljava/lang/String;

    return-void
.end method

.method public setMd5imei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->md5imei:Ljava/lang/String;

    return-void
.end method

.method public setNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->num:Ljava/lang/String;

    return-void
.end method

.method public setP1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->p1:Ljava/lang/String;

    return-void
.end method

.method public setP2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->p2:Ljava/lang/String;

    return-void
.end method

.method public setStep(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->step:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->uid:Ljava/lang/String;

    return-void
.end method

.method public setWasteTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/wali/gamecenter/report/model/XmsdkReport;->wasteTime:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/wali/gamecenter/report/model/XmsdkReport;->toJson()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ext"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "ext"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/xiaomi/gson/Gson;

    invoke-direct {v1}, Lcom/xiaomi/gson/Gson;-><init>()V

    new-instance v2, Lcom/wali/gamecenter/report/model/XmsdkReport$1;

    invoke-direct {v2, p0}, Lcom/wali/gamecenter/report/model/XmsdkReport$1;-><init>(Lcom/wali/gamecenter/report/model/XmsdkReport;)V

    invoke-virtual {v2}, Lcom/wali/gamecenter/report/model/XmsdkReport$1;->getType()Ljava/lang/reflect/Type;

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
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
