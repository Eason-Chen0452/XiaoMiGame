.class public Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Ljava/lang/String;

.field private c:Lcom/xiaomi/gamecenter/sdk/web/g;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/g;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->c:Lcom/xiaomi/gamecenter/sdk/web/g;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 3

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->c:Lcom/xiaomi/gamecenter/sdk/web/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->c:Lcom/xiaomi/gamecenter/sdk/web/g;

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/web/g;->b()V

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->b()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiAlertDialog;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6839\u636e\u56fd\u5bb6\u89c4\u5b9a,\u60a8\u9700\u8981\u5b8c\u6210\u5b9e\u540d\u8ba4\u8bc1\uff0c\u5426\u5219\u65e0\u6cd5\u7ee7\u7eed\u6e38\u620f\u3002"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u5b9e\u540d\u8ba4\u8bc1\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u9a6c\u4e0a\u767b\u8bb0"

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/web/e;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/web/e;-><init>(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u9000\u51fa\u6e38\u620f"

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/web/f;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/web/f;-><init>(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x194
        :pswitch_0
    .end packed-switch
.end method

.method private b()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const-string v2, "VerifyWebView"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->b()V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gamecenter/sdk/web/g;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->c:Lcom/xiaomi/gamecenter/sdk/web/g;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->d:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x43a00000    # 320.0f

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/DensityUtils;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x43960000    # 300.0f

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/DensityUtils;->a(Landroid/content/Context;F)I

    move-result v2

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;

    invoke-direct {v2, p0, v4}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment$a;-><init>(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;B)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a:Landroid/webkit/WebView;

    new-instance v2, Landroid/webkit/WebChromeClient;

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "YAHAHA"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/web/d;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/web/d;-><init>(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    const/16 v2, 0x7e6

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    const/16 v2, 0x7e8

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a()V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
