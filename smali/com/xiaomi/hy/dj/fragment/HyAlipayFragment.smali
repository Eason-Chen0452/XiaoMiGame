.class public Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;
.super Lcom/xiaomi/hy/dj/fragment/BaseFragment;


# static fields
.field public static final d:Ljava/lang/String; = "HyAlipayFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "onPay--alipay"

    const-string v1, "\u51c6\u5907\u652f\u4ed8\u5b9d\u652f\u4ed8\u4e2d..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/c;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaomi/hy/dj/fragment/c;-><init>(Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;->a:Lcom/xiaomi/hy/dj/d/b;

    const-string v1, "ALIPAY"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/d/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0xa9

    const-string v0, "TRADE_SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;->b(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
