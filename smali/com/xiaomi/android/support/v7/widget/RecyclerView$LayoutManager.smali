.class public abstract Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$Properties;,
        Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/android/support/v7/widget/ad$b;

.field private final b:Lcom/xiaomi/android/support/v7/widget/ad$b;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field p:Lcom/xiaomi/android/support/v7/widget/b;

.field q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

.field r:Lcom/xiaomi/android/support/v7/widget/ad;

.field s:Lcom/xiaomi/android/support/v7/widget/ad;

.field t:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field u:Z

.field v:Z

.field w:Z

.field x:I

.field y:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/aa;

    invoke-direct {v0, p0}, Lcom/xiaomi/android/support/v7/widget/aa;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/ad$b;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/ab;

    invoke-direct {v0, p0}, Lcom/xiaomi/android/support/v7/widget/ab;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b:Lcom/xiaomi/android/support/v7/widget/ad$b;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/ad;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a:Lcom/xiaomi/android/support/v7/widget/ad$b;

    invoke-direct {v0, v1}, Lcom/xiaomi/android/support/v7/widget/ad;-><init>(Lcom/xiaomi/android/support/v7/widget/ad$b;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->r:Lcom/xiaomi/android/support/v7/widget/ad;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/ad;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b:Lcom/xiaomi/android/support/v7/widget/ad$b;

    invoke-direct {v0, v1}, Lcom/xiaomi/android/support/v7/widget/ad;-><init>(Lcom/xiaomi/android/support/v7/widget/ad$b;)V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->s:Lcom/xiaomi/android/support/v7/widget/ad;

    iput-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->u:Z

    iput-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->v:Z

    iput-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->w:Z

    iput-boolean v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->c:Z

    iput-boolean v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->d:Z

    return-void
.end method

.method public static a(III)I
    .locals 2

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v1, :sswitch_data_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(IIIIZ)I
    .locals 6

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/high16 v3, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x0

    sub-int v0, p0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz p4, :cond_4

    if-ltz p3, :cond_1

    move p1, v2

    move v0, p3

    :cond_0
    :goto_0
    :sswitch_0
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0

    :cond_1
    if-ne p3, v5, :cond_2

    sparse-switch p1, :sswitch_data_0

    :sswitch_1
    move p1, v1

    move v0, v1

    goto :goto_0

    :cond_2
    if-ne p3, v4, :cond_7

    move v0, v1

    :cond_3
    move p1, v1

    goto :goto_0

    :cond_4
    if-ltz p3, :cond_5

    move p1, v2

    move v0, p3

    goto :goto_0

    :cond_5
    if-eq p3, v5, :cond_0

    if-ne p3, v4, :cond_7

    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_3

    :cond_6
    move p1, v3

    goto :goto_0

    :cond_7
    move p1, v1

    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$Properties;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$Properties;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$Properties;-><init>()V

    const-string v1, "RecyclerView"

    invoke-static {p0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->d(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const-string v2, "RecyclerView_android_orientation"

    invoke-static {p0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$Properties;->a:I

    const-string v2, "RecyclerView_spanCount"

    invoke-static {p0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$Properties;->b:I

    const-string v2, "RecyclerView_reverseLayout"

    invoke-static {p0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$Properties;->c:Z

    const-string v2, "RecyclerView_stackFromEnd"

    invoke-static {p0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$Properties;->d:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private a(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/b;->a(I)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;IIII)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    iget v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p2

    iget v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v4, p3, v4

    iget v5, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p4, v1

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int v0, v1, v0

    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 8

    const/4 v4, -0x1

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-nez p3, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/ae;->d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->h()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->f()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->f()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->g()V

    :goto_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v7}, Lcom/xiaomi/android/support/v7/widget/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_2
    :goto_2
    iget-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->f:Z

    if-eqz v1, :cond_3

    iget-object v1, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    iput-boolean v7, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->f:Z

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/ae;->e(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->i()V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v1, p1}, Lcom/xiaomi/android/support/v7/widget/b;->c(Landroid/view/View;)I

    move-result v1

    if-ne p2, v4, :cond_7

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/b;->a()I

    move-result p2

    :cond_7
    if-ne v1, v4, :cond_8

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    if-eq v1, p2, :cond_2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v3, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot move a child from non-existing index:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-direct {v3, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->c(I)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    invoke-static {v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v6, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v6, v5}, Lcom/xiaomi/android/support/v7/widget/ae;->d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    :goto_3
    iget-object v3, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v5

    invoke-virtual {v3, v4, p2, v1, v5}, Lcom/xiaomi/android/support/v7/widget/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto/16 :goto_2

    :cond_a
    iget-object v6, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v6, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v6, v5}, Lcom/xiaomi/android/support/v7/widget/ae;->e(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v1, p1, p2, v7}, Lcom/xiaomi/android/support/v7/widget/b;->a(Landroid/view/View;IZ)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->e:Z

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->t:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->t:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->t:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v1, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->a(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method static synthetic a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->t:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->t:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;

    :cond_0
    return-void
.end method

.method private static b(III)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    if-lez p2, :cond_1

    if-eq p0, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    if-lt v3, p0, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :sswitch_2
    if-ne v3, p0, :cond_0

    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method private c(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f(I)Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/b;->d(I)V

    return-void
.end method

.method public static e(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v0

    return v0
.end method

.method public static f(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static g(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static h(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sub-int v0, v1, v0

    return v0
.end method

.method public static i(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, v1, v0

    return v0
.end method

.method public static j(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    return v0
.end method

.method public static k(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    instance-of v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    check-cast p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method final a(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->g:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e:I

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e:I

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b:Z

    if-nez v0, :cond_0

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->g:I

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->h:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f:I

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b:Z

    if-nez v0, :cond_1

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->h:I

    :cond_1
    return-void
.end method

.method public a(IILcom/xiaomi/android/support/v7/widget/RecyclerView$State;Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$a;)V
    .locals 0

    return-void
.end method

.method public a(ILcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$a;)V
    .locals 0

    return-void
.end method

.method public final a(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(I)V

    invoke-virtual {p2, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->u()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->w()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->v()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->x()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v2

    invoke-static {p2, v0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(III)I

    move-result v0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    invoke-static {p3, v1, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(III)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->d(II)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->d:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v4

    invoke-virtual {p2, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->k:Landroid/graphics/RectF;

    invoke-virtual {v1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget v2, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->right:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-virtual {p2, v0, v2, v3, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method final a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/b;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setItemCount(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v3, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->b()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(I)V

    invoke-virtual {p1, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->c(I)V

    invoke-virtual {p1, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->c(Landroid/view/View;)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->g:Lcom/xiaomi/android/support/v7/widget/ae;

    invoke-virtual {v1, v2}, Lcom/xiaomi/android/support/v7/widget/ae;->e(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e(Landroid/view/View;)I

    move-result v2

    :goto_1
    move v3, v1

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    return-void

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1
.end method

.method public a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)V
    .locals 0

    return-void
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 3

    const/4 v2, 0x0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->g:I

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->h:I

    :goto_0
    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e:I

    iput v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f:I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->g:I

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->h:I

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V
    .locals 0
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final a(Landroid/view/View;IILcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 14

    const/4 v1, 0x2

    new-array v4, v1, [I

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->u()I

    move-result v5

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->v()I

    move-result v6

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->g:I

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->w()I

    move-result v2

    sub-int v7, v1, v2

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->h:I

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->x()I

    move-result v2

    sub-int v8, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v1

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int v9, v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    move-object/from16 v0, p3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int v10, v1, v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    add-int v11, v9, v1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int v12, v10, v1

    const/4 v1, 0x0

    sub-int v2, v9, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v1, 0x0

    sub-int v3, v10, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v1, 0x0

    sub-int v13, v11, v7

    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v13, 0x0

    sub-int v8, v12, v8

    invoke-static {v13, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v12, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v12}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    if-eqz v1, :cond_3

    :goto_0
    move v2, v1

    :goto_1
    if-eqz v3, :cond_6

    move v1, v3

    :goto_2
    const/4 v3, 0x0

    aput v2, v4, v3

    const/4 v2, 0x1

    aput v1, v4, v2

    const/4 v1, 0x0

    aget v1, v4, v1

    const/4 v2, 0x1

    aget v2, v4, v2

    if-eqz p5, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_7

    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_f

    :cond_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_f

    :cond_1
    if-eqz p4, :cond_a

    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->scrollBy(II)V

    :cond_2
    :goto_4
    const/4 v1, 0x1

    :goto_5
    return v1

    :cond_3
    sub-int v1, v11, v7

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    move v1, v2

    :goto_6
    move v2, v1

    goto :goto_1

    :cond_5
    sub-int v2, v9, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_6

    :cond_6
    sub-int v1, v10, v6

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->u()I

    move-result v4

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->v()I

    move-result v5

    iget v6, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->g:I

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->w()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->h:I

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->x()I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v8, v8, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-static {v3, v8}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v3, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    if-ge v3, v6, :cond_8

    iget v3, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    if-le v3, v4, :cond_8

    iget v3, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    if-ge v3, v7, :cond_8

    iget v3, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v2

    if-gt v3, v5, :cond_9

    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    const/4 v3, 0x1

    goto :goto_3

    :cond_a
    iget-object v3, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_b

    const-string v1, "RecyclerView"

    const-string v2, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_b
    iget-boolean v3, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->u:Z

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v3

    if-nez v3, :cond_c

    const/4 v1, 0x0

    :cond_c
    iget-object v3, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->j()Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v2, 0x0

    :cond_d
    if-nez v1, :cond_e

    if-eqz v2, :cond_2

    :cond_e
    iget-object v3, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->y:Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;

    invoke-virtual {v3, v1, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$h;->c(II)V

    goto :goto_4

    :cond_f
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public b(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->l:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Adapter;->a()I

    move-result v0

    goto :goto_0
.end method

.method public b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-boolean v4, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method final b(II)V
    .locals 8

    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p()I

    move-result v7

    if-nez v7, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->c(II)V

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x0

    move v3, v5

    move v1, v5

    move v2, v6

    move v0, v6

    :goto_1
    if-ge v4, v7, :cond_5

    invoke-virtual {p0, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v6, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-static {v5, v6}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v5, v6, Landroid/graphics/Rect;->left:I

    if-ge v5, v0, :cond_1

    iget v0, v6, Landroid/graphics/Rect;->left:I

    :cond_1
    iget v5, v6, Landroid/graphics/Rect;->right:I

    if-le v5, v1, :cond_2

    iget v1, v6, Landroid/graphics/Rect;->right:I

    :cond_2
    iget v5, v6, Landroid/graphics/Rect;->top:I

    if-ge v5, v2, :cond_3

    iget v2, v6, Landroid/graphics/Rect;->top:I

    :cond_3
    iget v5, v6, Landroid/graphics/Rect;->bottom:I

    if-le v5, v3, :cond_4

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/graphics/Rect;II)V

    goto :goto_0
.end method

.method public final b(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public final b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    invoke-virtual {p2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method final b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->o()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v4, v0, v5}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v4, v4, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v4, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    if-lez v2, :cond_5

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->invalidate()V

    :cond_5
    return-void
.end method

.method final b(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 3

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getWidth()I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(II)V

    return-void
.end method

.method final b(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->v:Z

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V

    return-void
.end method

.method final b(Landroid/view/View;IILcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->width:I

    invoke-static {v0, p2, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(III)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->height:I

    invoke-static {v0, p3, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->b(III)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final c(II)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->c(II)V

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public final c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)V
    .locals 2

    const-string v0, "RecyclerView"

    const-string v1, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public final d(II)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;II)V

    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public e(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/b;->b(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract f()Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;
.end method

.method public g(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final g(I)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->B:Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v3, v1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->scrollBy(II)V

    move v1, v2

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->h:I

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->v()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->x()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    :goto_2
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->g:I

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->u()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->w()I

    move-result v4

    sub-int/2addr v3, v4

    neg-int v3, v3

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->h:I

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->v()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->x()I

    move-result v3

    sub-int/2addr v0, v3

    :goto_3
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->g:I

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->u()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->w()I

    move-result v4

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public h()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->d:Z

    return v0
.end method

.method public final p()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->e:I

    return v0
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f:I

    return v0
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->g:I

    return v0
.end method

.method public final t()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->h:I

    return v0
.end method

.method public final u()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final v()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final w()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final y()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->t:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->t:Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$SmoothScroller;->c()V

    :cond_0
    return-void
.end method

.method public final z()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->u:Z

    return-void
.end method
