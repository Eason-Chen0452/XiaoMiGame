.class public Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;
.super Landroid/widget/RelativeLayout;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "mio_login_item_method_square"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mio_method_square_item_title"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->c:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "mio_method_square_item_icon"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->b:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->d:Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;

    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;->c()Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->d:Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->b:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->d:Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
