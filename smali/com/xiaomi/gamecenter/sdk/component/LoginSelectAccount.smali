.class public Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

.field private c:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 10

    const/4 v9, -0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x2

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->setGravity(I)V

    invoke-virtual {p0, v3}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->setOrientation(I)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v0

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {p0, v2}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setId(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const v1, -0xcccccd

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextColor(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x3c

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v1

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->b:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v5, "mio_icon_login_wait"

    invoke-static {v2, v5}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x25

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v1

    const/16 v2, 0x25

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x2b

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const v2, 0x43b38000    # 359.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->e:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->e:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->e:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->e:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextSize(F)V

    const/high16 v1, 0x66000000

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextColor(I)V

    const-string v1, "\u6b63\u5728\u767b\u5f55......"

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->a:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->c:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->c:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->c:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setId(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->c:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const-string v1, "\u5207\u6362\u8d26\u53f7"

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->c:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const v1, -0xd15a1b

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->c:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "mio_btn_change_account_nor"

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mio_btn_change_account_sel"

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/MiSelector;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->c:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;->setGravity(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x1f3

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v1

    const/16 v2, 0x4f

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->b(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x30

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->a(I)I

    move-result v1

    const/16 v2, 0x30

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->a(I)I

    move-result v2

    invoke-virtual {v0, v8, v1, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->c:Lcom/xiaomi/gamecenter/sdk/ui/MiTextView;

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/gamecenter/sdk/component/LoginSelectAccount;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
