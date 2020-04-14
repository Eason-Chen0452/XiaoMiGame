.class public Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;,
        Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil;->a()Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$b;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "plainDeviceIdFetcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->b:Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$b;

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->b:Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$b;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/PlainDeviceIdUtil$b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/DeviceIdHasher;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "HashedDeviceIdUtil"

    const-string v2, "can\'t get deviceid."

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hashedDeviceId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private c()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->a:Landroid/content/Context;

    const-string v1, "deviceId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;->a()Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;->a(Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$a;)Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;->RUNTIME_DEVICE_ID_ONLY:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->b()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v2, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;->CACHED_THEN_RUNTIME_THEN_PSEUDO:Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil$DeviceIdPolicy;

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknown policy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    invoke-static {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "hashedDeviceId"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "android_pseudo_"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
