.class final Lcom/xiaomi/gamecenter/sdk/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/bd$a;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/bh;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/bh;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/bi;->a:Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bi;->a:Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bh;->a(Lcom/xiaomi/gamecenter/sdk/bh;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bi;->a:Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bh;->b(Lcom/xiaomi/gamecenter/sdk/bh;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bi;->a:Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bh;->b(Lcom/xiaomi/gamecenter/sdk/bh;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bi;->a:Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bh;->b(Lcom/xiaomi/gamecenter/sdk/bh;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "MiGameSDK.SplashScreenManager"

    const-string v1, "end splash onDestory"

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bi;->a:Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bh;->c(Lcom/xiaomi/gamecenter/sdk/bh;)Lcom/xiaomi/gamecenter/sdk/bh$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bi;->a:Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bh;->c(Lcom/xiaomi/gamecenter/sdk/bh;)Lcom/xiaomi/gamecenter/sdk/bh$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/bh$a;->a()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "MiGameSDK.SplashScreenManager"

    const-string v1, "end splash onDestory"

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bi;->a:Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bh;->c(Lcom/xiaomi/gamecenter/sdk/bh;)Lcom/xiaomi/gamecenter/sdk/bh$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bi;->a:Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/bh;->c(Lcom/xiaomi/gamecenter/sdk/bh;)Lcom/xiaomi/gamecenter/sdk/bh$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/bh$a;->a()V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MiGameSDK.SplashScreenManager"

    const-string v2, "end splash onDestory"

    invoke-static {v1, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bi;->a:Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/bh;->c(Lcom/xiaomi/gamecenter/sdk/bh;)Lcom/xiaomi/gamecenter/sdk/bh$a;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bi;->a:Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/bh;->c(Lcom/xiaomi/gamecenter/sdk/bh;)Lcom/xiaomi/gamecenter/sdk/bh$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/gamecenter/sdk/bh$a;->a()V

    :cond_1
    throw v0
.end method

.method public final c(Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/bh;->a()Lcom/xiaomi/gamecenter/sdk/bh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/bh;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/bh;->a()Lcom/xiaomi/gamecenter/sdk/bh;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bi;->a:Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/bh;->d(Lcom/xiaomi/gamecenter/sdk/bh;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/bl;

    invoke-direct {v3, v0, p1, v1}, Lcom/xiaomi/gamecenter/sdk/bl;-><init>(Lcom/xiaomi/gamecenter/sdk/bh;Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
