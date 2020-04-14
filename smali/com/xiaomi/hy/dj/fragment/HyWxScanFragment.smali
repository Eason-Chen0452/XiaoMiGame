.class public Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;
.super Lcom/xiaomi/hy/dj/fragment/BaseFragment;


# static fields
.field public static final d:Ljava/lang/String; = "HyWxScanFragment"


# instance fields
.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;-><init>()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "-1"

    iget-object v2, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->f:Landroid/widget/TextView;

    const-string v2, "\u8bf7\u4f7f\u7528<font color=\"#fda13c\"> \u5fae\u4fe1 </font>\u626b\u7801\u652f\u4ed8"

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->g:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    :try_start_0
    const-string v1, "com.xiaomi.hy.zxing.QRGenerator"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/hy/dj/b/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->h:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v1, "%.02f"

    new-array v4, v4, [Ljava/lang/Object;

    long-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->f:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bf7\u4f7f\u7528<font color=\"#fda13c\"> \u5fae\u4fe1 </font>\u626b\u7801\u652f\u4ed8<font color=\"#fda13c\">"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u5143</font>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 v2, 0x1

    const/16 v3, 0x12c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v2, "create2DCode"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    invoke-direct {p0, p2}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->d(Ljava/lang/String;)V

    const-wide/32 v2, 0x493e0

    const-wide/16 v4, 0xbb8

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->a(Ljava/lang/String;JJ)V

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

    const-string v0, "feeValue"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->a:Lcom/xiaomi/hy/dj/d/b;

    const-string v1, "WXNATIVE"

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/d/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()I
    .locals 2

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_0

    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x44c00000    # 1536.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public c(I)I
    .locals 2

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_0

    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x44c00000    # 1536.0f

    div-float/2addr v0, v1

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    const/16 v1, 0xb1

    const-string v0, "TRADE_SUCCESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    invoke-virtual {p0, v1}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->b(I)V

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->e:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->e:Landroid/widget/RelativeLayout;

    const v1, -0x181819

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->e:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->onStop()V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->c:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->c:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->c:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x320

    const/4 v5, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-super {p0, p1, p2}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->f:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->f:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->b()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->g:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v6}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->c(I)I

    move-result v2

    invoke-virtual {p0, v6}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->c(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->c(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/t;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/fragment/t;-><init>(Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
