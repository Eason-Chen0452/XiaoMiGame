.class Lcom/xiaomi/hy/dj/fragment/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/u;->b:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;

    iput-object p2, p0, Lcom/xiaomi/hy/dj/fragment/u;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/xiaomi/hy/dj/fragment/u;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/u;->b:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;

    iget-object v1, v1, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;

    invoke-virtual {v1, v0}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/u;->b:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->a(Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;)[B

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/u;->b:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->a(Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;)[B

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

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/u;->b:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/x;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/fragment/x;-><init>(Lcom/xiaomi/hy/dj/fragment/u;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/u;->b:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/v;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/fragment/v;-><init>(Lcom/xiaomi/hy/dj/fragment/u;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/u;->b:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/xiaomi/hy/dj/fragment/w;

    invoke-direct {v2, p0}, Lcom/xiaomi/hy/dj/fragment/w;-><init>(Lcom/xiaomi/hy/dj/fragment/u;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
