.class public Lcom/xiaomi/hy/dj/fragment/HyWebFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Lcom/xiaomi/hy/dj/fragment/y;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    iget v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->c:Lcom/xiaomi/hy/dj/fragment/y;

    invoke-interface {v0}, Lcom/xiaomi/hy/dj/fragment/y;->b()V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "WEBVIEW"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->a:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u60a8\u672a\u5b8c\u6210\u771f\u5b9e\u8eab\u4efd\u767b\u8bb0,\u6839\u636e\u56fd\u5bb6\u89c4\u5b9a\uff0c\u65e0\u6cd5\u4e3a\u6e38\u620f\u5145\u503c\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u53bb\u767b\u8bb0"

    new-instance v2, Lcom/xiaomi/hy/dj/fragment/q;

    invoke-direct {v2, p0}, Lcom/xiaomi/hy/dj/fragment/q;-><init>(Lcom/xiaomi/hy/dj/fragment/HyWebFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/xiaomi/hy/dj/fragment/r;

    invoke-direct {v2, p0}, Lcom/xiaomi/hy/dj/fragment/r;-><init>(Lcom/xiaomi/hy/dj/fragment/HyWebFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->c:Lcom/xiaomi/hy/dj/fragment/y;

    invoke-interface {v0}, Lcom/xiaomi/hy/dj/fragment/y;->b()V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "WEBVIEW"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->c:Lcom/xiaomi/hy/dj/fragment/y;

    invoke-interface {v0}, Lcom/xiaomi/hy/dj/fragment/y;->b()V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "WEBVIEW"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x194
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/xiaomi/hy/dj/fragment/HyWebFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->a()V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/hy/dj/fragment/HyWebFragment;)Lcom/xiaomi/hy/dj/fragment/y;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->c:Lcom/xiaomi/hy/dj/fragment/y;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/hy/dj/fragment/HyWebFragment;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->a:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaomi/hy/dj/fragment/y;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->c:Lcom/xiaomi/hy/dj/fragment/y;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "load data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/hy/dj/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    const v4, 0x43a68000    # 333.0f

    const/high16 v3, 0x43960000    # 300.0f

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "#b0000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/xiaomi/hy/dj/f/h;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/xiaomi/hy/dj/f/h;->a(Landroid/content/Context;F)I

    move-result v0

    :goto_0
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    iput v0, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment$a;-><init>(Lcom/xiaomi/hy/dj/fragment/HyWebFragment;Lcom/xiaomi/hy/dj/fragment/q;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->a:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/xiaomi/hy/dj/f/h;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/xiaomi/hy/dj/f/h;->a(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->a()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
