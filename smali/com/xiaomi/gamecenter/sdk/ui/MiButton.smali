.class public Lcom/xiaomi/gamecenter/sdk/ui/MiButton;
.super Landroid/widget/Button;


# static fields
.field private static final a:Landroid/graphics/LightingColorFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/4 v1, -0x1

    const/16 v2, 0xff

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->a:Landroid/graphics/LightingColorFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->setEnabled(Z)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->setId(I)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->setTextSize(F)V

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->setTextColor(I)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "mio_btn_bg"

    invoke-static {p1, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "mio_btn_bg_click"

    invoke-static {p1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/MiSelector;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a()Landroid/graphics/LightingColorFilter;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->a:Landroid/graphics/LightingColorFilter;

    return-object v0
.end method

.method private b()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/ui/b;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/MiButton;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
