.class public abstract Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# static fields
.field private static final a:Lcom/xiaomi/android/support/v7/widget/helper/i;

.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/helper/f;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/helper/f;-><init>()V

    sput-object v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->b:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/helper/g;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/helper/g;-><init>()V

    sput-object v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->c:Landroid/view/animation/Interpolator;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/helper/j$c;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/helper/j$c;-><init>()V

    sput-object v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a:Lcom/xiaomi/android/support/v7/widget/helper/i;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/helper/j$b;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/helper/j$b;-><init>()V

    sput-object v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a:Lcom/xiaomi/android/support/v7/widget/helper/i;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xiaomi/android/support/v7/widget/helper/j$a;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/helper/j$a;-><init>()V

    sput-object v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a:Lcom/xiaomi/android/support/v7/widget/helper/i;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->d:I

    return-void
.end method

.method public static a(F)F
    .locals 0

    return p0
.end method

.method public static a(II)I
    .locals 5

    const v4, 0xc0c0c

    and-int v0, p0, v4

    if-nez v0, :cond_0

    :goto_0
    return p0

    :cond_0
    xor-int/lit8 v1, v0, -0x1

    and-int/2addr v1, p0

    if-nez p1, :cond_1

    shl-int/lit8 v0, v0, 0x2

    or-int p0, v1, v0

    goto :goto_0

    :cond_1
    shl-int/lit8 v2, v0, 0x1

    const v3, -0xc0c0d

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    shl-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x2

    or-int p0, v1, v0

    goto :goto_0
.end method

.method public static a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;I)J
    .locals 2

    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->i()Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_0

    const-wide/16 v0, 0xc8

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0xfa

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->e()J

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->g()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;",
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;",
            ">;II)",
            "Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v5, p2, v0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int v6, p3, v0

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v7, p2, v0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v8, p3, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v0, 0x0

    move v4, v0

    move-object v3, v2

    :goto_0
    if-ge v4, v9, :cond_0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-lez v7, :cond_1

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    sub-int/2addr v2, v5

    if-gez v2, :cond_1

    iget-object v10, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    iget-object v11, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    if-le v10, v11, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v1, :cond_1

    move-object v3, v0

    :goto_1
    if-gez v7, :cond_4

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, p2

    if-lez v1, :cond_4

    iget-object v10, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v11, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    if-ge v10, v11, :cond_4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v2, :cond_4

    move-object v3, v0

    :goto_2
    if-gez v8, :cond_3

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v2, p3

    if-lez v2, :cond_3

    iget-object v10, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    if-ge v10, v11, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v1, :cond_3

    move-object v3, v0

    :goto_3
    if-lez v8, :cond_2

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, v6

    if-gez v1, :cond_2

    iget-object v10, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    iget-object v11, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v10, v11, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v2, :cond_2

    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v0

    goto/16 :goto_0

    :cond_0
    return-object v3

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v1, v2

    move-object v0, v3

    goto :goto_4

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public static a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;FFI)V
    .locals 7

    sget-object v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a:Lcom/xiaomi/android/support/v7/widget/helper/i;

    iget-object v3, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/xiaomi/android/support/v7/widget/helper/i;->a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;Landroid/view/View;FFI)V

    return-void
.end method

.method public static a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8

    sget-object v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a:Lcom/xiaomi/android/support/v7/widget/helper/i;

    iget-object v3, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/xiaomi/android/support/v7/widget/helper/i;->a(Landroid/graphics/Canvas;Lcom/xiaomi/android/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    return-void
.end method

.method public static a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a:Lcom/xiaomi/android/support/v7/widget/helper/i;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/xiaomi/android/support/v7/widget/helper/i;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b()Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$b;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$b;

    iget-object v1, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    iget-object v2, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$b;->a(Landroid/view/View;Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->h(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    if-gt v1, v2, :cond_2

    invoke-virtual {p0, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(I)V

    :cond_2
    iget-object v1, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_3

    invoke-virtual {p0, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(I)V

    :cond_3
    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    if-gt v0, v1, :cond_4

    invoke-virtual {p0, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(I)V

    :cond_4
    iget-object v0, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->k(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(I)V

    goto :goto_0
.end method

.method public static b(F)F
    .locals 0

    return p0
.end method

.method public static b(II)I
    .locals 5

    const v4, 0x303030

    and-int v0, p0, v4

    if-nez v0, :cond_0

    :goto_0
    return p0

    :cond_0
    xor-int/lit8 v1, v0, -0x1

    and-int/2addr v1, p0

    if-nez p1, :cond_1

    shr-int/lit8 v0, v0, 0x2

    or-int p0, v1, v0

    goto :goto_0

    :cond_1
    shr-int/lit8 v2, v0, 0x1

    const v3, -0x303031

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    shr-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x2

    or-int p0, v1, v0

    goto :goto_0
.end method

.method public static b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    sget-object v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a:Lcom/xiaomi/android/support/v7/widget/helper/i;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/xiaomi/android/support/v7/widget/helper/i;->a(Landroid/view/View;)V

    return-void
.end method

.method public static b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static f()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public static g()F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method


# virtual methods
.method public abstract a()I
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)I
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->a()I

    move-result v0

    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->b(II)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;IIJ)I
    .locals 6

    const/4 v1, -0x1

    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->d:I

    if-ne v2, v1, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "item_touch_helper_max_drag_scroll_per_frame"

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->d:I

    :cond_0
    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->d:I

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v4, p3

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    int-to-float v5, p2

    div-float/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    mul-int/2addr v2, v4

    int-to-float v2, v2

    sget-object v4, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->c:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    const-wide/16 v4, 0x7d0

    cmp-long v3, p4, v4

    if-lez v3, :cond_2

    :goto_0
    int-to-float v2, v2

    sget-object v3, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->b:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    if-nez v0, :cond_1

    if-lez p3, :cond_3

    const/4 v0, 0x1

    :cond_1
    :goto_1
    return v0

    :cond_2
    long-to-float v0, p4

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v3

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public abstract c()Z
.end method

.method public abstract h()V
.end method
