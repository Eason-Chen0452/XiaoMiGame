.class Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->b(I)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->b(I)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;->a:Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;

    const/16 v1, 0xaf

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;->b(I)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/u;

    invoke-direct {v1, p0, p2}, Lcom/xiaomi/hy/dj/fragment/u;-><init>(Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment$a;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    goto :goto_0
.end method
