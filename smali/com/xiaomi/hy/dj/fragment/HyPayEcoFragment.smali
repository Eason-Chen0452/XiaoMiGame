.class public Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;
.super Lcom/xiaomi/hy/dj/fragment/BaseFragment;


# static fields
.field public static final d:Ljava/lang/String; = "HyAlipayFragment"


# instance fields
.field private final e:Ljava/lang/String;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;-><init>()V

    const-string v0, "BROADCAST_PAY_END"

    iput-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;->e:Ljava/lang/String;

    return-void
.end method

.method private b()V
    .locals 3

    new-instance v0, Lcom/xiaomi/hy/dj/fragment/h;

    invoke-direct {v0, p0}, Lcom/xiaomi/hy/dj/fragment/h;-><init>(Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;)V

    iput-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;->f:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "BROADCAST_PAY_END"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "onPay--payeco"

    const-string v1, "\u51c6\u5907\u94f6\u884c\u5361\u652f\u4ed8\u4e2d..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/g;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/hy/dj/fragment/g;-><init>(Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;->a:Lcom/xiaomi/hy/dj/d/b;

    const-string v1, "PAYECO"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/d/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0xbb

    const-string v0, "TRADE_SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;->b(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;->b()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->onDestroy()V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
