.class Lcom/xiaomi/hy/dj/fragment/b;
.super Landroid/os/CountDownTimer;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaomi/hy/dj/fragment/BaseFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/BaseFragment;JJLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/b;->b:Lcom/xiaomi/hy/dj/fragment/BaseFragment;

    iput-object p6, p0, Lcom/xiaomi/hy/dj/fragment/b;->a:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/b;->a:Ljava/lang/String;

    const-string v1, "WXMWEB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xae

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/b;->b:Lcom/xiaomi/hy/dj/fragment/BaseFragment;

    const/16 v1, 0xb9

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->b(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/b;->a:Ljava/lang/String;

    const-string v1, "WXNATIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xb2

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/b;->a:Ljava/lang/String;

    const-string v1, "ALIPAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/b;->a:Ljava/lang/String;

    const-string v1, "PAYECO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xbc

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/b;->a:Ljava/lang/String;

    const-string v1, "SZFPAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xb6

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    goto :goto_0
.end method

.method public onTick(J)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/b;->b:Lcom/xiaomi/hy/dj/fragment/BaseFragment;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/d/b;->c()V

    return-void
.end method
