.class public Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround$a;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/a;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/a;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;->d:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround$a;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;)I
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    return v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;I)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;->b:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;->b:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;->d:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;->d:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround$a;

    invoke-interface {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround$a;->a(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;)I
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v0

    return v0
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;I)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;->c:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;->c:I

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;->d:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround;->d:Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround$a;

    invoke-interface {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/AndroidBug54971Workaround$a;->b(I)V

    :cond_0
    return-void
.end method
