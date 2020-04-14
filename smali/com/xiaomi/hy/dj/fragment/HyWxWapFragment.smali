.class public Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;
.super Lcom/xiaomi/hy/dj/fragment/BaseFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;
    }
.end annotation


# static fields
.field public static final d:Ljava/lang/String; = "HyWxWapFragment"


# instance fields
.field private e:[B

.field private f:Landroid/webkit/WebView;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->e:[B

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;)[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->e:[B

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->g:Ljava/lang/String;

    invoke-static {p2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->f:Landroid/webkit/WebView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<script>\n        window.location.href=\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\";\n    </script>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->a:Lcom/xiaomi/hy/dj/d/b;

    const-string v1, "WXMWEB"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/d/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0xad

    const-string v0, "TRADE_SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->b(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->f:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->f:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->f:Landroid/webkit/WebView;

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->f:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->f:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->f:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->f:Landroid/webkit/WebView;

    new-instance v3, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;

    invoke-direct {v3, p0}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;-><init>(Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->f:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->onResume()V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->e:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->e:[B

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
