.class public Lcom/xiaomi/game/plugin/stat/a/d;
.super Ljava/lang/Object;


# static fields
.field private static volatile c:Lcom/xiaomi/game/plugin/stat/a/d;

.field private static i:Ljava/util/Map;
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

.field private static j:Ljava/util/Map;
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

.field private volatile b:Z

.field private d:Ljava/lang/String;

.field private e:Landroid/app/ActivityManager;

.field private f:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

.field private h:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/game/plugin/stat/a/d;->i:Ljava/util/Map;

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    const-string v2, "SDK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/game/plugin/stat/a/d;->i:Ljava/util/Map;

    const-string v1, "com.xiaomi.gamecenter"

    const-string v2, "\u6e38\u620f\u4e2d\u5fc3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/game/plugin/stat/a/d;->i:Ljava/util/Map;

    const-string v1, "com.wali.live"

    const-string v2, "\u76f4\u64ad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/game/plugin/stat/a/d;->j:Ljava/util/Map;

    const-string v1, "com.xiaomi.gamecenter.wxwap.HyWxWappayActivity"

    const-string v2, "wxwap"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/game/plugin/stat/a/d;->j:Ljava/util/Map;

    const-string v1, "com.xiaomi.gamecenter.wxpay.HyWxWappayActivity"

    const-string v2, "wxpay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/game/plugin/stat/a/d;->j:Ljava/util/Map;

    const-string v1, "com.xiaomi.gamecenter.awpay.HyMixpayActivity"

    const-string v2, "awpay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/game/plugin/stat/a/d;->j:Ljava/util/Map;

    const-string v1, "com.xiaomi.gamecenter.alipay.HyAlipayActivity"

    const-string v2, "alipay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/game/plugin/stat/a/d;->j:Ljava/util/Map;

    const-string v1, "com.xiaomi.gamecenter.qqwap.HyQQWappayActivity"

    const-string v2, "QPAY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->b:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->h:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/xiaomi/game/plugin/stat/a/d;->g:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {p1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->e:Landroid/app/ActivityManager;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->f:Ljava/util/Stack;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/game/plugin/stat/a/d;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->g:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    return-object v0
.end method

.method public static a()Lcom/xiaomi/game/plugin/stat/a/d;
    .locals 2

    sget-object v0, Lcom/xiaomi/game/plugin/stat/a/d;->c:Lcom/xiaomi/game/plugin/stat/a/d;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "please HyWxWapPay.init() in application before use this method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/xiaomi/game/plugin/stat/a/d;->c:Lcom/xiaomi/game/plugin/stat/a/d;

    return-object v0
.end method

.method public static a(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/game/plugin/stat/a/d;->c:Lcom/xiaomi/game/plugin/stat/a/d;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/game/plugin/stat/a/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/game/plugin/stat/a/d;->c:Lcom/xiaomi/game/plugin/stat/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/game/plugin/stat/a/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/game/plugin/stat/a/d;-><init>(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;)V

    sput-object v0, Lcom/xiaomi/game/plugin/stat/a/d;->c:Lcom/xiaomi/game/plugin/stat/a/d;

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->g:Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    invoke-virtual {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.xiaomi.gamecenter"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/game/plugin/stat/a/d;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/xiaomi/game/plugin/stat/a/d$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/xiaomi/game/plugin/stat/a/d$1;-><init>(Lcom/xiaomi/game/plugin/stat/a/d;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/content/ComponentName;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tencent.mm"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "com.tencent.mm.plugin.wallet.pay.ui.WalletPayUI"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "wxpay"

    iput-object v1, p0, Lcom/xiaomi/game/plugin/stat/a/d;->d:Ljava/lang/String;

    :goto_0
    return v0

    :cond_0
    const-string v4, "com.eg.android.AlipayGphone"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.alipay.android.app.flybird.ui.window.FlyBirdWindowActivity"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "alipay"

    iput-object v1, p0, Lcom/xiaomi/game/plugin/stat/a/d;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v4, "com.tencent.mobileqq"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.tencent.mobileqq.activity.QQBrowserActivity"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "qpay"

    iput-object v1, p0, Lcom/xiaomi/game/plugin/stat/a/d;->d:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->b:Z

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lcom/xiaomi/game/plugin/stat/a/d;->b:Z

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/xiaomi/game/plugin/stat/a/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/game/plugin/stat/a/d;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method private c()Z
    .locals 3

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.mm"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.eg.android.AlipayGphone"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.tencent.mobileqq"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/game/plugin/stat/a/d;->j:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xiaomi/game/plugin/stat/a/d;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/game/plugin/stat/a/d;->j:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private e()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v0, "android.app.ActivityThread"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "currentActivityThread"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "mActivities"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public b()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->e:Landroid/app/ActivityManager;

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    sget-object v1, Lcom/xiaomi/game/plugin/stat/a/d;->i:Ljava/util/Map;

    iget-object v2, p0, Lcom/xiaomi/game/plugin/stat/a/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/xiaomi/game/plugin/stat/a/d;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->f:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->f:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    invoke-direct {p0, v1, v0}, Lcom/xiaomi/game/plugin/stat/a/d;->a(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/xiaomi/game/plugin/stat/a/d;->a(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/xiaomi/game/plugin/stat/a/d;->b:Z

    if-nez v2, :cond_0

    iput-boolean v4, p0, Lcom/xiaomi/game/plugin/stat/a/d;->b:Z

    invoke-direct {p0}, Lcom/xiaomi/game/plugin/stat/a/d;->c()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/game/plugin/stat/a/d;->d()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Report the result"

    invoke-static {v2}, Lcom/xiaomi/game/plugin/stat/c/a;->b(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/game/plugin/stat/a/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->f:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/xiaomi/game/plugin/stat/a/d;->b:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/xiaomi/game/plugin/stat/a/d;->b:Z

    goto :goto_0
.end method
