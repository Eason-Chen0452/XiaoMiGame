.class Lcom/xiaomi/hy/dj/fragment/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/hy/dj/fragment/y;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/fragment/BaseFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/BaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/a;->a:Lcom/xiaomi/hy/dj/fragment/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/a;->a:Lcom/xiaomi/hy/dj/fragment/BaseFragment;

    const/16 v1, 0xbf9

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->b(I)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/a;->a:Lcom/xiaomi/hy/dj/fragment/BaseFragment;

    iget-object v0, v0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/a;->a:Lcom/xiaomi/hy/dj/fragment/BaseFragment;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->a(Lcom/xiaomi/hy/dj/fragment/BaseFragment;)V

    return-void
.end method
