.class Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/hy/dj/fragment/HyWebFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment;


# direct methods
.method private constructor <init>(Lcom/xiaomi/hy/dj/fragment/HyWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/hy/dj/fragment/HyWebFragment;Lcom/xiaomi/hy/dj/fragment/q;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;-><init>(Lcom/xiaomi/hy/dj/fragment/HyWebFragment;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/xiaomi/hy/dj/b/a;->a(Ljava/lang/String;)V

    const-string v0, "migamesdk://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->a(Lcom/xiaomi/hy/dj/fragment/HyWebFragment;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->b(Lcom/xiaomi/hy/dj/fragment/HyWebFragment;)Lcom/xiaomi/hy/dj/fragment/y;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/hy/dj/fragment/y;->b()V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment;

    invoke-virtual {v1}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "WEBVIEW"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment;

    invoke-static {v0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->c(Lcom/xiaomi/hy/dj/fragment/HyWebFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWebFragment;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/s;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/fragment/s;-><init>(Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method
