.class public Lcom/xiaomi/accountsdk/utils/AccountServerTimeComputer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$a;


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile b:J

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/xiaomi/accountsdk/utils/AccountServerTimeComputer;->a:Ljava/util/Set;

    new-array v1, v5, [Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/accountsdk/account/URLs;->b:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    sget-object v3, Lcom/xiaomi/accountsdk/account/URLs;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v2, v1, v0

    :try_start_0
    sget-object v3, Lcom/xiaomi/accountsdk/utils/AccountServerTimeComputer;->a:Ljava/util/Set;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/accountsdk/utils/AccountServerTimeComputer;->b:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/AccountServerTimeComputer;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/AccountServerTimeComputer;->d:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/f;->a()Lcom/xiaomi/accountsdk/utils/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/utils/f;->b()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/accountsdk/utils/AccountServerTimeComputer;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "AccountServerTimeCompu"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/AccountServerTimeComputer;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/accountsdk/utils/AccountServerTimeComputer;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p2}, Lcom/xiaomi/accountsdk/utils/c;->a(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "serverDate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "AccountServerTimeCompu"

    invoke-static {v1, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->b(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/accountsdk/utils/AccountServerTimeComputer;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/xiaomi/accountsdk/utils/AccountServerTimeComputer;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v1, p0, Lcom/xiaomi/accountsdk/utils/AccountServerTimeComputer;->d:Landroid/content/Context;

    const-string v4, "accountsdk_servertime"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "system_time_diff"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->b()V

    invoke-static {}, Lcom/xiaomi/accountsdk/utils/f;->a()Lcom/xiaomi/accountsdk/utils/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/accountsdk/utils/f;->a(Ljava/util/Date;)V

    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/AccountServerTimeComputer;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
