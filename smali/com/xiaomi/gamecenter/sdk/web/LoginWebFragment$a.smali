.class final Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;


# direct methods
.method private constructor <init>(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;-><init>(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->b(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)V

    :goto_0
    return v5

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->c(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/web/i;->a()V

    goto :goto_0

    :cond_1
    const-string v0, "http://game.xiaomi.com/oauthcallback/mioauth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "#"

    const-string v1, "?"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "state"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "error"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "error_description"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->e(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;

    move-result-object v0

    invoke-interface {v0, v1, v4, v4, v4}, Lcom/xiaomi/gamecenter/sdk/web/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->b(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)V

    :goto_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->c(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->c(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/web/i;->a()V

    goto :goto_1

    :cond_4
    const-string v0, "http://g.mi.com/mobilelogin/qq/redirect.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "#"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "expires_in"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "state"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "usercancel"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->e(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/web/c;

    invoke-direct {v3, p0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/web/c;-><init>(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->b(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/web/i;->a()V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->c(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_2
.end method
