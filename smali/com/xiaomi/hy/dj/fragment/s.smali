.class Lcom/xiaomi/hy/dj/fragment/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/s;->a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/s;->a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;

    iget-object v1, v1, Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment;

    invoke-static {v1}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->c(Lcom/xiaomi/hy/dj/fragment/HyWebFragment;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
