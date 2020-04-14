.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;


# instance fields
.field private a:Ljava/lang/String;

.field private c:Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;

.field private g:Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

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
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->d:J

    return-void
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->g:Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;

    return-void
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->c:Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    return-void
.end method

.method public final declared-synchronized a(Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->f:Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->e:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->a:Ljava/lang/String;

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->c:Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    return-void
.end method

.method public final d()Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->c:Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->c:Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->c:Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getHeadUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->c:Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->c:Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getUserName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->c:Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->c:Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getSession()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final h()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->d:J

    return-wide v0
.end method

.method public final i()Z
    .locals 2

    const-string v0, "N"

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->g:Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;

    return-object v0
.end method

.method public final declared-synchronized k()Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->f:Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
