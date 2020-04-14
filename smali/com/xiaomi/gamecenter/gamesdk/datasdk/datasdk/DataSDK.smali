.class public Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;
.super Ljava/lang/Object;


# static fields
.field private static hBean:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->hBean:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eventBack(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            ">;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;",
            ")V"
        }
    .end annotation

    const-string v3, "EVENT_BACK"

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->eventTrigger(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static eventBack(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            ">;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/ItemBean;",
            ">;)V"
        }
    .end annotation

    const-string v3, "EVENT_BACK"

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->b()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->eventTrigger(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static eventClick(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            ">;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;",
            ")V"
        }
    .end annotation

    const-string v3, "EVENT_CLICK"

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->eventTrigger(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static eventClick(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            ">;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/ItemBean;",
            ">;)V"
        }
    .end annotation

    const-string v3, "EVENT_CLICK"

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->b()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->eventTrigger(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static eventTrigger(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
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

    invoke-static/range {p0 .. p5}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->a(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static eventView(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            ">;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;",
            ")V"
        }
    .end annotation

    const-string v3, "EVENT_VIEW"

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->eventTrigger(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static eventView(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;",
            ">;",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/ItemBean;",
            ">;)V"
        }
    .end annotation

    const-string v3, "EVENT_VIEW"

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->b()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->eventTrigger(Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/PageBean;Ljava/util/concurrent/ConcurrentLinkedQueue;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/EventBean;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static getHeader()Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->hBean:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    return-object v0
.end method

.method public static initDataSDK(Landroid/app/Application;Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;)V
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/b;->a(Landroid/content/Context;)V

    if-eqz p1, :cond_0

    sput-object p1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->hBean:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->hBean:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->hBean:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    sget-object v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->setOaid(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->hBean:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    sget-object v1, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/b;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->setUdid(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->a(Landroid/app/Application;)V

    return-void
.end method

.method public static initHeader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->hBean:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->hBean:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/DataSDK;->hBean:Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/bean/HBean;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setLogEnabled(Z)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/i;->a(Z)V

    return-void
.end method

.method public static setSandboxEnabled(Z)V
    .locals 0

    invoke-static {p0}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->a(Z)V

    return-void
.end method

.method public static updataTraceId()V
    .locals 0

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/datasdk/c;->a()V

    return-void
.end method
