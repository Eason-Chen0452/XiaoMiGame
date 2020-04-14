.class public Lcom/xiaomi/gamecenter/sdk/bd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/bd$a;,
        Lcom/xiaomi/gamecenter/sdk/bd$b;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/gamecenter/sdk/bd;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

.field private f:Lcom/xiaomi/gamecenter/sdk/bd$b;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/bd$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bd;->f:Lcom/xiaomi/gamecenter/sdk/bd$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bd;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/bd;Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;)Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/bd;->e:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    return-object p1
.end method

.method public static a()Lcom/xiaomi/gamecenter/sdk/bd;
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/bd;->a:Lcom/xiaomi/gamecenter/sdk/bd;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/gamecenter/sdk/bd;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/bd;->a:Lcom/xiaomi/gamecenter/sdk/bd;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/bd;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/bd;->a:Lcom/xiaomi/gamecenter/sdk/bd;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/bd;->a:Lcom/xiaomi/gamecenter/sdk/bd;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/bd;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/bd;->c:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private static a(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bd;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/bd;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bd;->e:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;-><init>()V

    invoke-virtual {v0, p4}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->setType(Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->setBundle(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->setActivity(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->setPackageName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bd;->b:Landroid/app/Activity;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bd;->b:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bd;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;->setIsMainAcitivity(Z)V

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bd;->e:Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    invoke-interface {v1, v0}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->lifecycleCallback(Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bd;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/bd;->b:Landroid/app/Activity;

    return-void
.end method

.method public final declared-synchronized a(Landroid/app/Application;)V
    .locals 5

    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bd;->f:Lcom/xiaomi/gamecenter/sdk/bd$b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/bd$b;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/gamecenter/sdk/bd$b;-><init>(Lcom/xiaomi/gamecenter/sdk/bd;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bd;->f:Lcom/xiaomi/gamecenter/sdk/bd$b;

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/bd;->f:Lcom/xiaomi/gamecenter/sdk/bd$b;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bd;->d:Ljava/util/List;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/be;

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gamecenter/sdk/be;-><init>(Lcom/xiaomi/gamecenter/sdk/bd;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized a(Lcom/xiaomi/gamecenter/sdk/bd$a;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bd;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bd;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bd;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public final b(Landroid/app/Activity;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bd;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bd;->b:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bd;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
