.class final Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;


# direct methods
.method private constructor <init>(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;-><init>(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)V

    return-void
.end method


# virtual methods
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/g;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->b(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->c(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/web/g;->a()V

    goto :goto_0

    :cond_1
    const-string v0, "migamesdk://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x7e7

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->e(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->c(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->c(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0

    :cond_3
    const-string v1, "success"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x7ed

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/g;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/web/g;->b()V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->b(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;->a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->c(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method
