.class Lcom/xiaomi/hy/dj/fragment/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/t;->a:Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/t;->a:Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;

    iget-object v1, v1, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-virtual {v1}, Lcom/xiaomi/hy/dj/d/b;->d()V

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v1

    const/16 v2, 0xb2

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/t;->a:Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;

    const/16 v2, 0xb9

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->b(I)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
