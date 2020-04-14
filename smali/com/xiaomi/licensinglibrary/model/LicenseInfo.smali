.class public final Lcom/xiaomi/licensinglibrary/model/LicenseInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/licensinglibrary/model/LicenseInfo;->a:J

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/model/LicenseInfo;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/model/LicenseInfo;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/model/LicenseInfo;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/licensinglibrary/model/LicenseInfo;->e:I

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/model/LicenseInfo;->f:Ljava/lang/String;

    const-string v0, "expireTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/licensinglibrary/model/LicenseInfo;->a:J

    const-string v0, "miid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/model/LicenseInfo;->b:Ljava/lang/String;

    const-string v0, "imei"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/model/LicenseInfo;->c:Ljava/lang/String;

    const-string v0, "mac"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/model/LicenseInfo;->d:Ljava/lang/String;

    const-string v0, "versionCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/licensinglibrary/model/LicenseInfo;->e:I

    const-string v0, "productCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/model/LicenseInfo;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/licensinglibrary/model/LicenseInfo;->a:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/model/LicenseInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/model/LicenseInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/model/LicenseInfo;->d:Ljava/lang/String;

    return-object v0
.end method
