.class Lcom/xiaomi/hy/dj/fragment/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/g;->b:Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;

    iput-object p2, p0, Lcom/xiaomi/hy/dj/fragment/g;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/g;->b:Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;

    invoke-virtual {v1}, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/payeco/android/plugin/loading/PayecoPluginLoadingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "upPay.Req"

    iget-object v2, p0, Lcom/xiaomi/hy/dj/fragment/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Broadcast"

    const-string v2, "BROADCAST_PAY_END"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Environment"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/g;->b:Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;

    invoke-virtual {v1, v0}, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Exception"

    const-string v1, "\u8bf7\u6dfb\u52a0\u94f6\u884c\u5361\u652f\u4ed8\u5b98\u65b9SDK\u76f8\u5173\u7684jar\u5305"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
