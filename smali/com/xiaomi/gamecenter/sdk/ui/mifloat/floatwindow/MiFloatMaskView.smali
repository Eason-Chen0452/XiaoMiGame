.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->c:I

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "float_window_hide"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "float_hide_tip_icon"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "float_hide_tip_text"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "float_hide_tip_black_height"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->c:I

    invoke-virtual {p0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->a(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "float_hide_tip_rootlayout"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/z;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/z;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "float_hide_tip_sel"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->b:Landroid/widget/TextView;

    const v1, -0x1ba600

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "float_hide_tip_nor"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->b:Landroid/widget/TextView;

    const v1, -0x4b4b4c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatMaskView;->c:I

    return v0
.end method
