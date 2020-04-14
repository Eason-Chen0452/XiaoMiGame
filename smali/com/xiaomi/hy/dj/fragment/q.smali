.class Lcom/xiaomi/hy/dj/fragment/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/HyWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/q;->a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/q;->a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->c(Lcom/xiaomi/hy/dj/fragment/HyWebFragment;)Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    return-void
.end method
