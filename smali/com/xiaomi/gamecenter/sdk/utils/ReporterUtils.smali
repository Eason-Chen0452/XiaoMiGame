.class public Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/wali/gamecenter/report/utils/MD5;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d:Ljava/lang/String;

    return-void
.end method

.method public static ChangeIndex()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/wali/gamecenter/report/utils/MD5;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d:Ljava/lang/String;

    return-void
.end method

.method public static FastXmsdkReport(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->FastXmsdkReport(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method public static FastXmsdkReport(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->FastXmsdkReport(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method public static FastXmsdkReport(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 2

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/utils/k;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/gamecenter/sdk/utils/k;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d:Ljava/lang/String;

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->k:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "mid"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->v:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/xiaomi/licensinglibrary/util/RSAUtils;->b([BLjava/lang/String;)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    invoke-static {v2}, Lcn/com/wali/basetool/utils/a;->a([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->b:Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->b:Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/wali/gamecenter/report/ReportManager;->Init(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/wali/gamecenter/report/ReportManager;->getInstance()Lcom/wali/gamecenter/report/ReportManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/ReportManager;->forceSendReport()V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->b:Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    :cond_0
    sput-object p1, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->c:Ljava/lang/String;

    return-void
.end method

.method public static setFuid(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public report(I)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/wali/gamecenter/report/model/XmsdkReport;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setAppid(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setNum(Ljava/lang/String;)V

    const-string v1, "mioauthjar"

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setClient(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCpChannel(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setMd5imei(Ljava/lang/String;)V

    const-string v1, "SDK_MI_SP_3.1.2"

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->ver:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->index:Ljava/lang/String;

    iget-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUdid(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setOaid(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/XmsdkReport;->getExt()Lcom/wali/gamecenter/report/model/EXT;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "mioauthjarbase"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/EXT;->from:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/XmsdkReport;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public report(ILjava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/wali/gamecenter/report/model/XmsdkReport;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setAppid(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setNum(Ljava/lang/String;)V

    const-string v1, "mioauthjar"

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setClient(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCpChannel(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setMd5imei(Ljava/lang/String;)V

    const-string v1, "SDK_MI_SP_3.1.2"

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->ver:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->index:Ljava/lang/String;

    iget-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUdid(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setOaid(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setStep(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/XmsdkReport;->getExt()Lcom/wali/gamecenter/report/model/EXT;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "mioauthjarbase"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/EXT;->from:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/XmsdkReport;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public report(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/wali/gamecenter/report/model/XmsdkReport;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setAppid(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setNum(Ljava/lang/String;)V

    const-string v1, "mioauthjar"

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setClient(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCpChannel(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setMd5imei(Ljava/lang/String;)V

    const-string v1, "SDK_MI_SP_3.1.2"

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->ver:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->index:Ljava/lang/String;

    iget-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUdid(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setOaid(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/XmsdkReport;->getExt()Lcom/wali/gamecenter/report/model/EXT;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/wali/gamecenter/report/model/EXT;->getPayInfo()Lcom/wali/gamecenter/report/model/PayInfo;

    move-result-object v2

    iput-object p3, v2, Lcom/wali/gamecenter/report/model/PayInfo;->orderId:Ljava/lang/String;

    const-string v2, "mioauthjarbase"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/EXT;->from:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/XmsdkReport;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reportLive()V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/wali/gamecenter/report/model/Bid522Report;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/wali/gamecenter/report/model/Bid522Report;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/Bid522Report;->setAppid(Ljava/lang/String;)V

    const-string v1, "SDK_MI_SP_3.1.2"

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/Bid522Report;->ver:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/Bid522Report;->setChannelId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/Bid522Report;->setCpChannel(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/wali/gamecenter/report/model/Bid522Report;->imei:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/Bid522Report;->imei:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/Bid522Report;->setUdid(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/Bid522Report;->setOaid(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/Bid522Report;->setMd5imei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/Bid522Report;->getExt()Lcom/wali/gamecenter/report/model/EXT;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "mioauthjarbase"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/EXT;->from:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/Bid522Report;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reportMilink(JILjava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/wali/gamecenter/report/model/XmsdkReport;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/wali/gamecenter/report/ReportType;->MILINK:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setType(Lcom/wali/gamecenter/report/ReportType;)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setAppid(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setNum(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setWasteTime(Ljava/lang/String;)V

    const-string v1, "mioauthjar"

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setClient(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCpChannel(Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setMd5imei(Ljava/lang/String;)V

    const-string v1, "SDK_MI_SP_3.1.2"

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->ver:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->index:Ljava/lang/String;

    iget-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    :cond_0
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUdid(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setOaid(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/XmsdkReport;->getExt()Lcom/wali/gamecenter/report/model/EXT;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "mioauthjarbase"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/EXT;->from:Ljava/lang/String;

    iput-object p4, v1, Lcom/wali/gamecenter/report/model/EXT;->exname:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/XmsdkReport;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public xmsdkReport(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(ILjava/lang/Throwable;)V

    return-void
.end method

.method public xmsdkReport(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(ILjava/lang/String;Z)V

    return-void
.end method

.method public xmsdkReport(ILjava/lang/String;Z)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMiAppInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v0

    new-instance v1, Lcom/wali/gamecenter/report/model/XmsdkReport;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;-><init>(Landroid/content/Context;)V

    const-string v2, "mioauthjar"

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setClient(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setStep(Ljava/lang/String;)V

    const-string v2, "SDK_MI_SP_3.1.2"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->ver:Ljava/lang/String;

    iget-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setAppid(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUid(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCID(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCpChannel(Ljava/lang/String;)V

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->LOGIN:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setType(Lcom/wali/gamecenter/report/ReportType;)V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setMd5imei(Ljava/lang/String;)V

    :cond_2
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUdid(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setOaid(Ljava/lang/String;)V

    :cond_4
    const/4 v2, -0x1

    if-eq p1, v2, :cond_5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setNum(Ljava/lang/String;)V

    :cond_5
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->index:Ljava/lang/String;

    const-string v2, "3010002"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->jarver:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->getExt()Lcom/wali/gamecenter/report/model/EXT;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iput-object v3, v2, Lcom/wali/gamecenter/report/model/EXT;->sext:Ljava/lang/String;

    :cond_6
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wali/gamecenter/report/model/EXT;->packageName:Ljava/lang/String;

    :cond_7
    const-string v0, "mioauthjarbase"

    iput-object v0, v2, Lcom/wali/gamecenter/report/model/EXT;->from:Ljava/lang/String;

    :cond_8
    invoke-virtual {v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public xmsdkReport(ILjava/lang/Throwable;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMiAppInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v0

    new-instance v1, Lcom/wali/gamecenter/report/model/XmsdkReport;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;-><init>(Landroid/content/Context;)V

    const-string v2, "mioauthjar"

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setClient(Ljava/lang/String;)V

    const-string v2, "SDK_MI_SP_3.1.2"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->ver:Ljava/lang/String;

    iget-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setAppid(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUid(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCID(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCpChannel(Ljava/lang/String;)V

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->LOGIN:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setType(Lcom/wali/gamecenter/report/ReportType;)V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setMd5imei(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUdid(Ljava/lang/String;)V

    :cond_4
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setOaid(Ljava/lang/String;)V

    :cond_5
    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setNum(Ljava/lang/String;)V

    :cond_6
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->index:Ljava/lang/String;

    const-string v2, "3010002"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->jarver:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->getExt()Lcom/wali/gamecenter/report/model/EXT;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iput-object v3, v2, Lcom/wali/gamecenter/report/model/EXT;->sext:Ljava/lang/String;

    :cond_7
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wali/gamecenter/report/model/EXT;->packageName:Ljava/lang/String;

    :cond_8
    const-string v0, "mioauthjarbase"

    iput-object v0, v2, Lcom/wali/gamecenter/report/model/EXT;->from:Ljava/lang/String;

    if-eqz p2, :cond_9

    if-nez p2, :cond_a

    const-string v0, ""

    :goto_0
    iput-object v0, v2, Lcom/wali/gamecenter/report/model/EXT;->exStack:Ljava/lang/String;

    :cond_9
    invoke-virtual {v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->send()V

    :goto_1
    return-void

    :cond_a
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public xmsdkReportBonus(Ljava/lang/String;I)V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMiAppInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v0

    new-instance v1, Lcom/wali/gamecenter/report/model/XmsdkReport;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;-><init>(Landroid/content/Context;)V

    const-string v2, "mioauthjar"

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setClient(Ljava/lang/String;)V

    const-string v2, "SDK_MI_SP_3.1.2"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->ver:Ljava/lang/String;

    iget-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setAppid(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUid(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCID(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCpChannel(Ljava/lang/String;)V

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->LOGIN:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setType(Lcom/wali/gamecenter/report/ReportType;)V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setMd5imei(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUdid(Ljava/lang/String;)V

    :cond_4
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setOaid(Ljava/lang/String;)V

    :cond_5
    const/4 v2, -0x1

    if-eq p2, v2, :cond_6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setNum(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v1, p1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setStep(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setWasteTime(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->index:Ljava/lang/String;

    const-string v2, "3010002"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->jarver:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->getExt()Lcom/wali/gamecenter/report/model/EXT;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iput-object v3, v2, Lcom/wali/gamecenter/report/model/EXT;->sext:Ljava/lang/String;

    :cond_7
    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wali/gamecenter/report/model/EXT;->packageName:Ljava/lang/String;

    :cond_8
    const-string v0, "mioauthjarbase"

    iput-object v0, v2, Lcom/wali/gamecenter/report/model/EXT;->from:Ljava/lang/String;

    :cond_9
    invoke-virtual {v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public xmsdkReportCp(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMiAppInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v0

    new-instance v1, Lcom/wali/gamecenter/report/model/XmsdkReport;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;-><init>(Landroid/content/Context;)V

    const-string v2, "mioauthjar"

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setClient(Ljava/lang/String;)V

    const-string v2, "SDK_MI_SP_3.1.2"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->ver:Ljava/lang/String;

    iget-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setAppid(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUid(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCID(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCpChannel(Ljava/lang/String;)V

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->LOGIN:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setType(Lcom/wali/gamecenter/report/ReportType;)V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setMd5imei(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUdid(Ljava/lang/String;)V

    :cond_4
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setOaid(Ljava/lang/String;)V

    :cond_5
    const-string v2, "4091"

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setNum(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setStep(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setWasteTime(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->index:Ljava/lang/String;

    const-string v2, "3010002"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->jarver:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->getExt()Lcom/wali/gamecenter/report/model/EXT;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iput-object v3, v2, Lcom/wali/gamecenter/report/model/EXT;->sext:Ljava/lang/String;

    :cond_6
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wali/gamecenter/report/model/EXT;->packageName:Ljava/lang/String;

    :cond_7
    const-string v0, "mioauthjarbase"

    iput-object v0, v2, Lcom/wali/gamecenter/report/model/EXT;->from:Ljava/lang/String;

    :cond_8
    invoke-virtual {v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public xmsdkReportCrash(I)V
    .locals 5

    :try_start_0
    new-instance v0, Lcom/wali/gamecenter/report/model/XmsdkReport;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMiAppInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v1

    const-string v2, "mioauthjar"

    invoke-virtual {v0, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setClient(Ljava/lang/String;)V

    const-string v2, "SDK_MI_SP_3.1.2"

    iput-object v2, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->ver:Ljava/lang/String;

    iget-object v2, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    iput-object v2, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setAppid(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUid(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCID(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCpChannel(Ljava/lang/String;)V

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->JARCRASH:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v0, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setType(Lcom/wali/gamecenter/report/ReportType;)V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setMd5imei(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUdid(Ljava/lang/String;)V

    :cond_4
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setOaid(Ljava/lang/String;)V

    :cond_5
    const/4 v2, -0x1

    if-eq p1, v2, :cond_6

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setNum(Ljava/lang/String;)V

    :cond_6
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->index:Ljava/lang/String;

    const-string v2, "3010002"

    iput-object v2, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->jarver:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/XmsdkReport;->getExt()Lcom/wali/gamecenter/report/model/EXT;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iput-object v3, v2, Lcom/wali/gamecenter/report/model/EXT;->sext:Ljava/lang/String;

    :cond_7
    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/wali/gamecenter/report/model/EXT;->packageName:Ljava/lang/String;

    :cond_8
    const-string v1, "mioauthjarbase"

    iput-object v1, v2, Lcom/wali/gamecenter/report/model/EXT;->from:Ljava/lang/String;

    :cond_9
    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/XmsdkReport;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public xmsdkReportForegroundTime(ILjava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMiAppInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v0

    new-instance v1, Lcom/wali/gamecenter/report/model/XmsdkReport;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;-><init>(Landroid/content/Context;)V

    const-string v2, "mioauthjar"

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setClient(Ljava/lang/String;)V

    const-string v2, "SDK_MI_SP_3.1.2"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->ver:Ljava/lang/String;

    iget-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setAppid(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUid(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCID(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCpChannel(Ljava/lang/String;)V

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->LOGIN:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setType(Lcom/wali/gamecenter/report/ReportType;)V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setMd5imei(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUdid(Ljava/lang/String;)V

    :cond_4
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setOaid(Ljava/lang/String;)V

    :cond_5
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setNum(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setStep(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setWasteTime(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->index:Ljava/lang/String;

    const-string v2, "3010002"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->jarver:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->getExt()Lcom/wali/gamecenter/report/model/EXT;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iput-object v3, v2, Lcom/wali/gamecenter/report/model/EXT;->sext:Ljava/lang/String;

    :cond_6
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wali/gamecenter/report/model/EXT;->packageName:Ljava/lang/String;

    :cond_7
    const-string v0, "mioauthjarbase"

    iput-object v0, v2, Lcom/wali/gamecenter/report/model/EXT;->from:Ljava/lang/String;

    :cond_8
    invoke-virtual {v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public xmsdkReportOpenId(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMiAppInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v0

    new-instance v1, Lcom/wali/gamecenter/report/model/XmsdkReport;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;-><init>(Landroid/content/Context;)V

    const-string v2, "mioauthjar"

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setClient(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUid(Ljava/lang/String;)V

    const-string v2, "SDK_MI_SP_3.1.2"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->ver:Ljava/lang/String;

    iget-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->imei:Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setAppid(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCID(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCpChannel(Ljava/lang/String;)V

    sget-object v2, Lcom/wali/gamecenter/report/ReportType;->LOGIN:Lcom/wali/gamecenter/report/ReportType;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setType(Lcom/wali/gamecenter/report/ReportType;)V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setMd5imei(Ljava/lang/String;)V

    :cond_2
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setUdid(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/b;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setOaid(Ljava/lang/String;)V

    :cond_4
    const-string v2, "2100"

    invoke-virtual {v1, v2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setNum(Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d:Ljava/lang/String;

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->index:Ljava/lang/String;

    const-string v2, "3010002"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/XmsdkReport;->jarver:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->getExt()Lcom/wali/gamecenter/report/model/EXT;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    iput-object v3, v2, Lcom/wali/gamecenter/report/model/EXT;->sext:Ljava/lang/String;

    :cond_5
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/wali/gamecenter/report/model/EXT;->packageName:Ljava/lang/String;

    :cond_6
    const-string v0, "mioauthjarbase"

    iput-object v0, v2, Lcom/wali/gamecenter/report/model/EXT;->from:Ljava/lang/String;

    :cond_7
    invoke-virtual {v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
