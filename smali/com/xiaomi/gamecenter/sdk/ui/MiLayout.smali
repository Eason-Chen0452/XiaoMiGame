.class public abstract Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;
.super Landroid/widget/RelativeLayout;


# static fields
.field protected static d:I

.field protected static e:I

.field public static f:F

.field public static g:Landroid/util/DisplayMetrics;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/widget/RelativeLayout;

.field protected c:Landroid/widget/RelativeLayout;

.field protected h:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

.field private i:Landroid/content/Intent;

.field private j:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, -0x1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    move-object v0, p1

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->f:F

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->i:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "action_bundle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "action_request"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->j:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    :cond_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMiAppInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->h:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->setId(I)V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->a:Landroid/content/Context;

    move-object v0, p1

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->d:I

    move-object v0, p1

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->e:I

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b:Landroid/widget/RelativeLayout;

    const v1, -0x121213

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->c:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->c:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mio_img_title"

    invoke-static {p1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->c()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->c:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x4c

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->a(I)I

    move-result v3

    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(I)I
    .locals 6

    sget v0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->f:F

    int-to-double v2, p0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    div-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method protected static a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static b(I)I
    .locals 6

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    sget v0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->f:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    sget v0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->f:F

    div-int/lit8 v1, p0, 0x2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->f:F

    int-to-double v2, p0

    div-double/2addr v2, v4

    div-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->j:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->j:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    iput-object p1, v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->b:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->j:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    iput p2, v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->j:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;)V

    goto :goto_0
.end method

.method protected b()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected abstract c()V
.end method

.method protected abstract d()Landroid/view/View;
.end method

.method protected abstract e()V
.end method

.method protected abstract f()V
.end method

.method protected abstract g()V
.end method

.method public abstract h()V
.end method

.method protected final i()Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->j:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    return-object v0
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method
