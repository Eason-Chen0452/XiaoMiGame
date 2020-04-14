.class public Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;
.super Landroid/widget/TextView;


# instance fields
.field private a:I

.field private b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->a:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->b:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->a:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->b:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    const/16 v0, 0x64

    if-gez p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-le v1, v0, :cond_0

    :goto_1
    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->a:I

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->invalidate()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->b:Landroid/graphics/Paint;

    const v2, -0xd56220

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->b:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v1, v3, v3, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiProgressView;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method
