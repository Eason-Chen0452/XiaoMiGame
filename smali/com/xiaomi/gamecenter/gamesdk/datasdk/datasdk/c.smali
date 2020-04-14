.class public final Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Z

.field private static c:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;

.field private static d:Ljava/lang/String;


# direct methods
.method public static a()V
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->d:Ljava/lang/String;

    return-void
.end method

.method static a(Landroid/app/Application;)V
    .locals 5

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DataSDK"

    const-string v1, "Don\'t init DataSDK again!"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->a(Landroid/app/Application;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "data_statistic"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const-string v1, "DataSDK"

    const-string v2, "Init SDK with fromApp : %s, environment : %s"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-object v4, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->a:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x1

    sget-boolean v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->b:Z

    if-eqz v0, :cond_2

    const-string v0, "develop"

    :goto_1
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->c:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;->getInstance()Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;

    move-result-object v0

    sget-boolean v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->b:Z

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSender;->setSandbox(Z)V

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c$a;-><init>(B)V

    invoke-static {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->a(Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v0, "product"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static a(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            ">;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/ItemBean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;-><init>()V

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->setTrackId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->setEvent(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->setPage(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->setFromPage(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    invoke-virtual {v0, p2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->setEventParam(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;)V

    invoke-virtual {v0, p5}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;->setItems(Ljava/util/List;)V

    const-string v1, "DataSDK"

    const-string v2, "DataSDK::%s Message :\n %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->c:Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/b;->a(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/BBean;)V

    return-void
.end method

.method static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->b:Z

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->d:Ljava/lang/String;

    return-object v0
.end method
