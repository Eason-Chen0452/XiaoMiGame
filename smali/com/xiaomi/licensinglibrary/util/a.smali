.class public final Lcom/xiaomi/licensinglibrary/util/a;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/xiaomi/licensinglibrary/util/a;


# instance fields
.field private a:Ljava/lang/Object;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/licensinglibrary/util/a;

    invoke-direct {v0}, Lcom/xiaomi/licensinglibrary/util/a;-><init>()V

    sput-object v0, Lcom/xiaomi/licensinglibrary/util/a;->b:Lcom/xiaomi/licensinglibrary/util/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/util/a;->a:Ljava/lang/Object;

    iput-object v1, p0, Lcom/xiaomi/licensinglibrary/util/a;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaomi/licensinglibrary/util/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/util/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/xiaomi/licensinglibrary/util/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/licensinglibrary/util/d;-><init>(Lcom/xiaomi/licensinglibrary/util/a;)V

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/util/a;->g:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/licensinglibrary/util/a;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/licensinglibrary/util/a;->e:I

    return p1
.end method

.method public static a()Lcom/xiaomi/licensinglibrary/util/a;
    .locals 1

    sget-object v0, Lcom/xiaomi/licensinglibrary/util/a;->b:Lcom/xiaomi/licensinglibrary/util/a;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/licensinglibrary/util/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/licensinglibrary/util/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/util/a;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/app/Activity;Lcom/xiaomi/licensinglibrary/ILicenseService;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const/16 v0, 0x1389

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/licensinglibrary/util/a;->b(Landroid/app/Activity;Lcom/xiaomi/licensinglibrary/ILicenseService;)Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/a;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/licensinglibrary/util/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/licensinglibrary/ILicenseService;)Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "errcode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "orderid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x138d

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/xiaomi/licensinglibrary/util/b;

    invoke-direct {v0, p0, p1, v1}, Lcom/xiaomi/licensinglibrary/util/b;-><init>(Lcom/xiaomi/licensinglibrary/util/a;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/util/a;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/a;->a:Ljava/lang/Object;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget v0, p0, Lcom/xiaomi/licensinglibrary/util/a;->e:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const/16 v0, 0x138a

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/licensinglibrary/ILicenseService;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/xiaomi/licensinglibrary/util/a;->b(Landroid/app/Activity;Lcom/xiaomi/licensinglibrary/ILicenseService;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "fuid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pkgName"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "versionCode"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p3, v1}, Lcom/xiaomi/licensinglibrary/ILicenseService;->b(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "orderid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errcode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x138d

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/util/a;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final b(Landroid/app/Activity;Lcom/xiaomi/licensinglibrary/ILicenseService;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p2}, Lcom/xiaomi/licensinglibrary/ILicenseService;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/util/a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/a;->c:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iput-object v2, p0, Lcom/xiaomi/licensinglibrary/util/a;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/xiaomi/licensinglibrary/util/a;->d:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/util/a;->g:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/util/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/a;->a:Ljava/lang/Object;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/xiaomi/licensinglibrary/ILicenseService;->a()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/licensinglibrary/util/a;->d:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/util/a;->c:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
