.class public abstract Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;
.super Landroid/app/Activity;


# static fields
.field protected static d:I

.field protected static e:I

.field public static f:F

.field public static g:Landroid/util/DisplayMetrics;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/widget/RelativeLayout;

.field protected c:Landroid/widget/RelativeLayout;

.field protected h:Landroid/content/Intent;

.field protected i:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected abstract b()Landroid/view/View;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v3, 0x400

    const/4 v6, 0x3

    const/4 v2, 0x1

    const/4 v5, -0x1

    invoke-virtual {p0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "MiGameSDK.BaseMiActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    iput-object p0, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->g:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->f:F

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->h:Landroid/content/Intent;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->h:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->h:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->i:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->d:I

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->e:I

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->b:Landroid/widget/RelativeLayout;

    const v1, -0x121213

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->c:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->c:Landroid/widget/RelativeLayout;

    const-string v1, "img_title"

    invoke-static {p0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->c:Landroid/widget/RelativeLayout;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    sget v3, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->f:F

    const v4, 0x424aaaab

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->b()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->a()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/BaseMiActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method
