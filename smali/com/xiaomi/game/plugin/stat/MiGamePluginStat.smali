.class public final Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "migamesdk_plugin"

    const-string v1, "build time:20170714164513,branch:mistat_170713,commitid:7b7394ef2e0b566b2cfdd40a8c6a94f773ec2cf0,version:31"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getsInstance()Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;
    .locals 2

    sget-object v0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;->a:Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;->a:Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;

    invoke-direct {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;-><init>()V

    sput-object v0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;->a:Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;->a:Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static setCheckInitEnv(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;->b:Z

    return-void
.end method

.method public static setDebug(Z)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/game/plugin/stat/c/a;->a(Z)V

    return-void
.end method

.method public static verifyEntry()V
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "onCreate"

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    const-class v5, Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MUST CALL FROM APPLICATION ONCREATE METHOD!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final initWithChannelAndPkgNameList(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;)V
    .locals 2

    sget-boolean v0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;->verifyEntry()V

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->f()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/game/plugin/stat/c/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/game/plugin/stat/a/d;->a(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;)V

    invoke-static {}, Lcom/xiaomi/game/plugin/stat/b/a;->a()Lcom/xiaomi/game/plugin/stat/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/game/plugin/stat/b/a;->a(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;)V

    new-instance v0, Lcom/xiaomi/game/plugin/stat/a/b;

    invoke-direct {v0, p1}, Lcom/xiaomi/game/plugin/stat/a/b;-><init>(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;)V

    return-void
.end method
