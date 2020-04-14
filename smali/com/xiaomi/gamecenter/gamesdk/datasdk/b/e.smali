.class final Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->b()I

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->c()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->d()Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->d()Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c$a;

    :cond_0
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->e()I

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->c()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->d()Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c;->d()Lcom/xiaomi/gamecenter/gamesdk/datasdk/b/c$a;

    :cond_0
    return-void
.end method
