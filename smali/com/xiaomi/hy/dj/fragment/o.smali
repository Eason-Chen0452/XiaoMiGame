.class Lcom/xiaomi/hy/dj/fragment/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/hy/dj/fragment/HySzfPayFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/HySzfPayFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/o;->b:Lcom/xiaomi/hy/dj/fragment/HySzfPayFragment;

    iput-object p2, p0, Lcom/xiaomi/hy/dj/fragment/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/o;->b:Lcom/xiaomi/hy/dj/fragment/HySzfPayFragment;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/fragment/HySzfPayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/p;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/fragment/p;-><init>(Lcom/xiaomi/hy/dj/fragment/o;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
