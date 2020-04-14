.class public Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/xiaomi/gamecenter/sdk/web/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Lcom/xiaomi/gamecenter/sdk/web/i;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/i;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->c:Lcom/xiaomi/gamecenter/sdk/web/i;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "LoginWebView"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a()V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->g:Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->g:Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->a(I)V

    if-lez p1, :cond_1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->g:Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->g:Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->g:Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/web/i;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->c:Lcom/xiaomi/gamecenter/sdk/web/i;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->c:Lcom/xiaomi/gamecenter/sdk/web/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->c:Lcom/xiaomi/gamecenter/sdk/web/i;

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/web/i;->b()V

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_accountType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->d:I

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->e:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "#b0000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v2, 0x43c80000    # 400.0f

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/DensityUtils;->a(Landroid/content/Context;F)I

    move-result v0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;

    invoke-direct {v3, p0, v1}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment$a;-><init>(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;B)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/web/GameSdkChromeClient;

    invoke-direct {v3, p0}, Lcom/xiaomi/gamecenter/sdk/web/GameSdkChromeClient;-><init>(Lcom/xiaomi/gamecenter/sdk/web/a;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v2, v7}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v3, "Chrome/63.0.3239.84"

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearFormData()V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v7}, Landroid/webkit/WebView;->clearCache(Z)V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    invoke-virtual {v2}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setId(I)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/web/b;

    invoke-direct {v3, p0}, Lcom/xiaomi/gamecenter/sdk/web/b;-><init>(Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v8, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "mio_close"

    invoke-static {v4, v5}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->f:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setId(I)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v8}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v2, v8, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->g:Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->g:Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->setClickable(Z)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->g:Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->g:Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->setId(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->g:Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->g:Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->f:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->g:Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;

    invoke-virtual {v6, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    const-string v1, "www.mi.com"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<script>\n        window.location.href=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    new-instance v0, Lcom/xiaomi/accountsdk/utils/WebViewDeviceIdUtil;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/WebViewDeviceIdUtil;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/utils/WebViewDeviceIdUtil;->b(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->c:Lcom/xiaomi/gamecenter/sdk/web/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->c:Lcom/xiaomi/gamecenter/sdk/web/i;

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/web/i;->c()V

    :cond_1
    return-object v6

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v2, 0x44020000    # 520.0f

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/DensityUtils;->a(Landroid/content/Context;F)I

    move-result v0

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    move v0, v1

    goto/16 :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->c:Lcom/xiaomi/gamecenter/sdk/web/i;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->c:Lcom/xiaomi/gamecenter/sdk/web/i;

    invoke-interface {v1}, Lcom/xiaomi/gamecenter/sdk/web/i;->b()V

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->a()V

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/LoginWebFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
