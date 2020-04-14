.class public Lcom/xiaomi/hy/dj/model/TokenManager;
.super Ljava/lang/Object;


# static fields
.field private static final FILENAME:Ljava/lang/String; = ".huyugamepaytoken_security_v2"

.field private static volatile instance:Lcom/xiaomi/hy/dj/model/TokenManager;


# instance fields
.field private serviceToken:Lcom/xiaomi/hy/dj/model/ServiceToken;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAESKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/f/l;->c([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;
    .locals 2

    sget-object v0, Lcom/xiaomi/hy/dj/model/TokenManager;->instance:Lcom/xiaomi/hy/dj/model/TokenManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/hy/dj/model/TokenManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/hy/dj/model/TokenManager;->instance:Lcom/xiaomi/hy/dj/model/TokenManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/hy/dj/model/TokenManager;

    invoke-direct {v0}, Lcom/xiaomi/hy/dj/model/TokenManager;-><init>()V

    sput-object v0, Lcom/xiaomi/hy/dj/model/TokenManager;->instance:Lcom/xiaomi/hy/dj/model/TokenManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/hy/dj/model/TokenManager;->instance:Lcom/xiaomi/hy/dj/model/TokenManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public deleteToken(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/hy/dj/model/TokenManager;->instance:Lcom/xiaomi/hy/dj/model/TokenManager;

    iput-object v0, p0, Lcom/xiaomi/hy/dj/model/TokenManager;->serviceToken:Lcom/xiaomi/hy/dj/model/ServiceToken;

    const-string v0, ".huyugamepaytoken_security_v2"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/hy/dj/model/TokenManager;->serviceToken:Lcom/xiaomi/hy/dj/model/ServiceToken;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/xiaomi/hy/dj/model/TokenManager;->isExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/xiaomi/hy/dj/model/TokenManager;->readToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/hy/dj/model/ServiceToken;

    invoke-direct {v0}, Lcom/xiaomi/hy/dj/model/ServiceToken;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/hy/dj/model/TokenManager;->serviceToken:Lcom/xiaomi/hy/dj/model/ServiceToken;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/model/TokenManager;->serviceToken:Lcom/xiaomi/hy/dj/model/ServiceToken;

    const-string v2, "session"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/hy/dj/model/ServiceToken;->setSession(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/model/TokenManager;->serviceToken:Lcom/xiaomi/hy/dj/model/ServiceToken;

    const-string v2, "openId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/hy/dj/model/ServiceToken;->setOpenId(Ljava/lang/String;)V

    const-string v0, "uid"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/model/TokenManager;->serviceToken:Lcom/xiaomi/hy/dj/model/ServiceToken;

    invoke-virtual {v1, v0}, Lcom/xiaomi/hy/dj/model/ServiceToken;->setUid(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/model/TokenManager;->serviceToken:Lcom/xiaomi/hy/dj/model/ServiceToken;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/hy/dj/model/TokenManager;->serviceToken:Lcom/xiaomi/hy/dj/model/ServiceToken;

    goto :goto_0
.end method

.method public isExist(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, ".huyugamepaytoken_security_v2"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public readToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ".huyugamepaytoken_security_v2"

    invoke-static {p1, v0}, Lcom/xiaomi/hy/dj/f/i;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/hy/dj/model/TokenManager;->getAESKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/xiaomi/hy/dj/f/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, ".huyugamepaytoken_security_v2"

    invoke-static {p1, v2}, Lcom/xiaomi/hy/dj/f/i;->b(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public save2File(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/xiaomi/hy/dj/model/TokenManager;->getAESKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/xiaomi/hy/dj/f/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".huyugamepaytoken_security_v2"

    invoke-static {p1, v1, v0}, Lcom/xiaomi/hy/dj/f/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
