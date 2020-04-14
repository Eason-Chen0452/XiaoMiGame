.class Lcom/xiaomi/hy/dj/fragment/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/k;->c:Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;

    iput-object p2, p0, Lcom/xiaomi/hy/dj/fragment/k;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/hy/dj/fragment/k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/xiaomi/hy/dj/fragment/k;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/k;->c:Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;

    invoke-virtual {v1, v0}, Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/k;->c:Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;->a(Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;)[B

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/k;->c:Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;->a(Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/k;->c:Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/n;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/fragment/n;-><init>(Lcom/xiaomi/hy/dj/fragment/k;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/k;->c:Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/l;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/fragment/l;-><init>(Lcom/xiaomi/hy/dj/fragment/k;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v2, 0xb7

    invoke-virtual {v0, v2}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/k;->c:Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/hy/dj/fragment/m;

    invoke-direct {v2, p0}, Lcom/xiaomi/hy/dj/fragment/m;-><init>(Lcom/xiaomi/hy/dj/fragment/k;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
