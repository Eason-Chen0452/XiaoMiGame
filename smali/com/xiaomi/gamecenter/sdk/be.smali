.class final Lcom/xiaomi/gamecenter/sdk/be;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/bd;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/bd;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/be;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/be;->a:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityCreated:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/bd$a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-virtual {v1, p1}, Lcom/xiaomi/gamecenter/sdk/bd;->b(Landroid/app/Activity;)Z

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/bd;->b(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/bd;->b(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/bd;->b(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Lcom/xiaomi/gamecenter/sdk/bd$a;->c(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/be;->a:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityDestroyed:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/bd$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/xiaomi/gamecenter/sdk/bd$a;->b(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/be;->a:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityPaused:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/be;->a:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityResumed:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/bd$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/xiaomi/gamecenter/sdk/bd$a;->a(Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/be;->a:Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivitySaveInstanceState:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    invoke-static {v0, p1, p2, v1, v2}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/be;->a:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityStarted:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/be;->a:Ljava/lang/String;

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;->onActivityStopped:Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;Landroid/app/Activity;Landroid/os/Bundle;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/LifecycleInfo$LifecycleType;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/be;->b:Lcom/xiaomi/gamecenter/sdk/bd;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
