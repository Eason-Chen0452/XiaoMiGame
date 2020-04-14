.class public Lcom/xiaomi/accountsdk/account/XMPassportSettings;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static volatile b:Ljava/lang/String;

.field private static volatile c:Ljava/lang/String;

.field private static d:Z

.field private static volatile e:Landroid/app/Application;

.field private static f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->d:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->e:Landroid/app/Application;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->e:Landroid/app/Application;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->e:Landroid/app/Application;

    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/AppInfoUserAgentUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/xiaomi/accountsdk/utils/AppInfoUserAgentUtil;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/accountsdk/utils/AppInfoUserAgentUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/utils/AppInfoUserAgentUtil;->a()Ljava/lang/String;

    move-result-object p1

    monitor-exit v1

    :cond_0
    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c()Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized d()Landroid/app/Application;
    .locals 3

    const-class v1, Lcom/xiaomi/accountsdk/account/XMPassportSettings;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->d:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->e:Landroid/app/Application;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "getApplicationContext should be called after setApplicationContext() or ensureApplicationContext()"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->e:Landroid/app/Application;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method
