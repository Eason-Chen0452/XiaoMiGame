.class public Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;
.super Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private i:Landroid/view/View;

.field private j:Landroid/widget/Button;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/animation/ObjectAnimator;

.field private n:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

.field private o:Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->q:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->i()Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x7531

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->c(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/k;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/k;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->q:Landroid/os/Handler;

    const/16 v1, 0x4e20

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;)Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->n:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;)Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->o:Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)V
    .locals 1

    const/16 v0, 0x7531

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;I)V
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->h:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    return-object v0
.end method

.method private c(I)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->q:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->q:Landroid/os/Handler;

    const/16 v2, 0x2710

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->n:Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->o:Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;

    return-object v0
.end method

.method static synthetic g(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->h:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    return-object v0
.end method

.method static synthetic h(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->q:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k()Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->l()Z

    move-result v0

    return v0
.end method

.method private static l()Z
    .locals 1

    :try_start_0
    const-string v0, "com.bumptech.glide.Glide"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final b()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->b:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method protected final c()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method protected final d()Landroid/view/View;
    .locals 6

    const/4 v5, -0x2

    const/4 v4, -0x1

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mio_auto_login"

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->i:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->i:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "login_wait_change_btn"

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->j:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "login_wait_username"

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "login_wait_loading"

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->i:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "login_wait_icon"

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->p:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->l:Landroid/widget/ImageView;

    const-string v2, "rotation"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->m:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->m:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->m:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x30

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->i:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v2, 0x7e1

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    return-object v1

    :array_0
    .array-data 4
        0x0
        0x4433c000    # 719.0f
    .end array-data
.end method

.method protected final e()V
    .locals 0

    return-void
.end method

.method protected final f()V
    .locals 0

    return-void
.end method

.method protected final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->m:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->j:Landroid/widget/Button;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->j:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->q:Landroid/os/Handler;

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x7e3

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    const/16 v0, 0x7532

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->c(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
