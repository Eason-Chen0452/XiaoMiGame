.class final Lcom/xiaomi/android/support/v7/widget/helper/j$c;
.super Lcom/xiaomi/android/support/v7/widget/helper/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/helper/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/helper/j$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V
    .locals 8

    if-eqz p7, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "item_touch_helper_previous_elevation"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v6

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v6, :cond_0

    invoke-virtual {p2, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eq v0, p3, :cond_2

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v0

    cmpl-float v7, v0, v1

    if-lez v7, :cond_2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    add-float v0, v5, v1

    invoke-static {p3, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    invoke-virtual {p3, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    invoke-super/range {p0 .. p7}, Lcom/xiaomi/android/support/v7/widget/helper/j$b;->a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "item_touch_helper_previous_elevation"

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/lang/Float;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/xiaomi/android/support/v7/widget/helper/j$b;->a(Landroid/view/View;)V

    return-void
.end method
