.class public Lcom/xiaomi/hy/dj/e/b;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/xiaomi/hy/dj/e/b;

.field private static c:Ljava/lang/String;

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/hy/dj/e/b;->e:Ljava/util/Map;

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    const-string v2, "SDK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/hy/dj/e/b;->e:Ljava/util/Map;

    const-string v1, "com.xiaomi.gamecenter"

    const-string v2, "\u6e38\u620f\u4e2d\u5fc3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/hy/dj/e/b;->a:Landroid/content/Context;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/wali/gamecenter/report/utils/MD5;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/e/b;->d:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/xiaomi/hy/dj/e/b;
    .locals 1

    sget-object v0, Lcom/xiaomi/hy/dj/e/b;->b:Lcom/xiaomi/hy/dj/e/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/hy/dj/e/b;->b:Lcom/xiaomi/hy/dj/e/b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/wali/gamecenter/report/ReportManager;->Init(Landroid/content/Context;)V

    new-instance v0, Lcom/xiaomi/hy/dj/e/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/hy/dj/e/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/hy/dj/e/b;->b:Lcom/xiaomi/hy/dj/e/b;

    :cond_0
    sput-object p1, Lcom/xiaomi/hy/dj/e/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "report---->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/b/a;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/wali/gamecenter/report/model/XmsdkReport;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/e/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/xiaomi/hy/dj/e/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setAppid(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setNum(Ljava/lang/String;)V

    const-string v1, "djpay"

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setClient(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/e/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/hy/dj/f/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCpChannel(Ljava/lang/String;)V

    const-string v1, "SDK_VISITOR_DJPAY_1.1.6"

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->ver:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/e/b;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->index:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/XmsdkReport;->send()V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/wali/gamecenter/report/model/XmsdkReport;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/e/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/xiaomi/hy/dj/e/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setAppid(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setNum(Ljava/lang/String;)V

    const-string v1, "djpay"

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setClient(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/e/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/hy/dj/f/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCpChannel(Ljava/lang/String;)V

    const-string v1, "SDK_VISITOR_DJPAY_1.1.6"

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->ver:Ljava/lang/String;

    iput-object p1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->index:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/XmsdkReport;->send()V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/wali/gamecenter/report/ReportType;I)V
    .locals 2

    new-instance v0, Lcom/wali/gamecenter/report/model/XmsdkReport;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/e/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/xiaomi/hy/dj/e/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setAppid(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setNum(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setType(Lcom/wali/gamecenter/report/ReportType;)V

    const-string v1, "djpay"

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setClient(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/e/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/hy/dj/f/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/XmsdkReport;->setCpChannel(Ljava/lang/String;)V

    const-string v1, "SDK_VISITOR_DJPAY_1.1.6"

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->ver:Ljava/lang/String;

    iput-object p1, v0, Lcom/wali/gamecenter/report/model/XmsdkReport;->index:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/XmsdkReport;->send()V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/wali/gamecenter/report/utils/MD5;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/e/b;->d:Ljava/lang/String;

    return-void
.end method

.method public c()V
    .locals 3

    sget-object v0, Lcom/xiaomi/hy/dj/e/b;->e:Ljava/util/Map;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/e/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/wali/gamecenter/report/model/Bid522Report;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/e/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/wali/gamecenter/report/model/Bid522Report;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/xiaomi/hy/dj/e/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/Bid522Report;->setAppid(Ljava/lang/String;)V

    const-string v1, "SDK_VISITOR_DJPAY_1.1.6"

    iput-object v1, v0, Lcom/wali/gamecenter/report/model/Bid522Report;->ver:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/e/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/hy/dj/f/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wali/gamecenter/report/model/Bid522Report;->setChannelId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/Bid522Report;->getExt()Lcom/wali/gamecenter/report/model/EXT;

    move-result-object v1

    const-string v2, "djpay"

    iput-object v2, v1, Lcom/wali/gamecenter/report/model/EXT;->from:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/wali/gamecenter/report/model/Bid522Report;->send()V

    :cond_0
    return-void
.end method
