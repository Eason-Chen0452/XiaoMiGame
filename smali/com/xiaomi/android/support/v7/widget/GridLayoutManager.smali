.class public Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;
.super Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;,
        Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;,
        Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;
    }
.end annotation


# instance fields
.field a:Z

.field b:I

.field c:[I

.field d:[Landroid/view/View;

.field final e:Landroid/util/SparseIntArray;

.field final f:Landroid/util/SparseIntArray;

.field g:Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;

.field final h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->g:Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    invoke-direct {p0, p1, p3, p4}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->g:Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;

    invoke-direct {v0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$DefaultSpanSizeLookup;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->g:Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    invoke-static {p1, p2, p3, p4}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$Properties;

    move-result-object v0

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$Properties;->b:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(I)V

    return-void
.end method

.method private A()V
    .locals 2

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->s()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->w()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->u()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->h(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->t()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->x()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->v()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private B()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    :cond_1
    return-void
.end method

.method private a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;I)I
    .locals 3

    iget-boolean v0, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    invoke-static {p3, v0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;->c(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find span size for pre layout position. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    invoke-static {v0, v1}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;->c(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    if-eqz p4, :cond_1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IILcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;IILcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->d:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iget v3, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v3, v1

    iget v1, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    iget v4, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    invoke-direct {p0, v1, v4}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->e(II)I

    move-result v1

    iget v4, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->i:I

    if-ne v4, v5, :cond_0

    iget v4, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v1, p2, v3, v4, v6}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v1

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/r;->f()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->r()I

    move-result v4

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v3, v4, v2, v0, v5}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v0

    move v2, v1

    :goto_0
    invoke-direct {p0, p1, v2, v0, p3}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    return-void

    :cond_0
    iget v4, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    invoke-static {v1, p2, v2, v4, v6}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/r;->f()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->q()I

    move-result v4

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    invoke-static {v2, v4, v3, v0, v5}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v2

    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;IZ)V
    .locals 5

    const/4 v3, 0x0

    const/4 v0, -0x1

    if-eqz p4, :cond_0

    const/4 v0, 0x1

    move v1, v0

    move v2, v3

    :goto_0
    if-eq v2, p3, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v4, v0, v2

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-static {v4}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->e(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;I)I

    move-result v4

    iput v4, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    iput v3, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    add-int/2addr v3, v0

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, p3, -0x1

    move v1, v0

    move p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;I)I
    .locals 3

    const/4 v1, -0x1

    iget-boolean v0, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->g:Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v0, p3, v1}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;->b(II)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    const-string v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->g:Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method private c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;I)I
    .locals 4

    const/4 v0, 0x1

    const/4 v2, -0x1

    iget-boolean v1, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p3, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    const-string v1, "GridLayoutManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private e(II)I
    .locals 3

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c:[I

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c:[I

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private h(I)V
    .locals 9

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c:[I

    iget v7, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    if-eqz v0, :cond_0

    array-length v1, v0

    add-int/lit8 v2, v7, 0x1

    if-ne v1, v2, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    if-eq v1, p1, :cond_1

    :cond_0
    add-int/lit8 v0, v7, 0x1

    new-array v0, v0, [I

    :cond_1
    aput v5, v0, v5

    div-int v2, p1, v7

    rem-int v8, p1, v7

    const/4 v1, 0x1

    move v4, v1

    move v3, v5

    move v6, v5

    :goto_0
    if-gt v4, v7, :cond_2

    add-int/2addr v3, v8

    if-lez v3, :cond_3

    sub-int v1, v7, v3

    if-ge v1, v8, :cond_3

    add-int/lit8 v1, v2, 0x1

    sub-int/2addr v3, v7

    :goto_1
    add-int v5, v6, v1

    aput v5, v0, v4

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v6, v5

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c:[I

    return-void

    :cond_3
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->A()V

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->B()V

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/view/View;ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 25

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move-object/from16 v18, v4

    :goto_0
    if-nez v18, :cond_4

    const/4 v12, 0x0

    :cond_0
    :goto_1
    return-object v12

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v18, v4

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v5, v4}, Lcom/xiaomi/android/support/v7/widget/b;->d(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    move-object/from16 v18, v4

    goto :goto_0

    :cond_3
    move-object/from16 v18, v4

    goto :goto_0

    :cond_4
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;

    iget v0, v4, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    move/from16 v19, v0

    iget v5, v4, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    iget v4, v4, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    add-int v20, v5, v4

    invoke-super/range {p0 .. p4}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_5

    const/4 v12, 0x0

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->e(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->k:Z

    if-eq v4, v5, :cond_8

    const/4 v4, 0x1

    :goto_3
    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->p()I

    move-result v4

    add-int/lit8 v7, v4, -0x1

    const/4 v6, -0x1

    const/4 v4, -0x1

    move v5, v4

    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->i:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->k()Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x1

    move v8, v4

    :goto_5
    const/4 v15, 0x0

    const/4 v14, -0x1

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v7}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;I)I

    move-result v21

    move/from16 v17, v7

    :goto_6
    move/from16 v0, v17

    if-eq v0, v5, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;I)I

    move-result v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, v18

    if-eq v12, v0, :cond_6

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_b

    move/from16 v0, v21

    if-eq v4, v0, :cond_b

    if-eqz v15, :cond_1a

    :cond_6
    if-eqz v15, :cond_19

    move-object v12, v15

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->p()I

    move-result v4

    move v5, v4

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    move v8, v4

    goto :goto_5

    :cond_b
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;

    iget v0, v4, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    move/from16 v22, v0

    iget v7, v4, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    iget v0, v4, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    move/from16 v16, v0

    add-int v23, v7, v16

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_c

    move/from16 v0, v22

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    move/from16 v0, v23

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    :cond_c
    const/4 v7, 0x0

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-eqz v16, :cond_d

    if-eqz v15, :cond_e

    :cond_d
    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-nez v16, :cond_10

    if-nez v11, :cond_10

    :cond_e
    const/4 v7, 0x1

    :cond_f
    :goto_7
    if-eqz v7, :cond_1a

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_18

    iget v14, v4, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v13, v4, v7

    move v4, v9

    move v7, v10

    move-object v15, v12

    :goto_8
    add-int v12, v17, v6

    move v9, v4

    move v10, v7

    move/from16 v17, v12

    goto/16 :goto_6

    :cond_10
    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v24

    sub-int v24, v24, v16

    invoke-virtual {v12}, Landroid/view/View;->hasFocusable()Z

    move-result v16

    if-eqz v16, :cond_13

    move/from16 v0, v24

    if-le v0, v13, :cond_11

    const/4 v7, 0x1

    goto :goto_7

    :cond_11
    move/from16 v0, v24

    if-ne v0, v13, :cond_f

    move/from16 v0, v22

    if-le v0, v14, :cond_12

    const/16 v16, 0x1

    :goto_9
    move/from16 v0, v16

    if-ne v8, v0, :cond_f

    const/4 v7, 0x1

    goto :goto_7

    :cond_12
    const/16 v16, 0x0

    goto :goto_9

    :cond_13
    if-nez v15, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->r:Lcom/xiaomi/android/support/v7/widget/ad;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/xiaomi/android/support/v7/widget/ad;->a(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->s:Lcom/xiaomi/android/support/v7/widget/ad;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/xiaomi/android/support/v7/widget/ad;->a(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_14

    const/16 v16, 0x1

    :goto_a
    if-nez v16, :cond_15

    const/16 v16, 0x1

    :goto_b
    if-eqz v16, :cond_f

    move/from16 v0, v24

    if-le v0, v9, :cond_16

    const/4 v7, 0x1

    goto/16 :goto_7

    :cond_14
    const/16 v16, 0x0

    goto :goto_a

    :cond_15
    const/16 v16, 0x0

    goto :goto_b

    :cond_16
    move/from16 v0, v24

    if-ne v0, v9, :cond_f

    move/from16 v0, v22

    if-le v0, v10, :cond_17

    const/16 v16, 0x1

    :goto_c
    move/from16 v0, v16

    if-ne v8, v0, :cond_f

    const/4 v7, 0x1

    goto/16 :goto_7

    :cond_17
    const/16 v16, 0x0

    goto :goto_c

    :cond_18
    iget v7, v4, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v0, v22

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    sub-int/2addr v4, v9

    move-object v11, v12

    goto/16 :goto_8

    :cond_19
    move-object v12, v11

    goto/16 :goto_1

    :cond_1a
    move v4, v9

    move v7, v10

    goto/16 :goto_8
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;III)Landroid/view/View;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->l()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->c()I

    move-result v5

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/r;->d()I

    move-result v6

    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v2, v3

    move-object v4, v3

    :goto_1
    if-eq p3, p4, :cond_3

    invoke-virtual {p0, p3}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->e(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_6

    if-ge v0, p5, :cond_6

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v4, :cond_6

    move-object v0, v2

    move-object v4, v3

    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0, v3}, Lcom/xiaomi/android/support/v7/widget/r;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v0, v3}, Lcom/xiaomi/android/support/v7/widget/r;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_5

    move-object v3, v2

    :cond_4
    :goto_3
    return-object v3

    :cond_5
    move-object v3, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup$LayoutParams;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, p1}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->g:Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final a(I)V
    .locals 3

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a:Z

    if-gtz p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Span count should be at least 1. Provided "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->g:Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->n()V

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Rect;II)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c:[I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Landroid/graphics/Rect;II)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->u()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->w()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->v()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->x()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    invoke-static {p3, v0, v2}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c:[I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->d(II)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v1

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c:[I

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    invoke-static {p3, v0, v2}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;

    if-nez v1, :cond_0

    invoke-super {p0, p3, p4}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    :goto_0
    return-void

    :cond_0
    move-object v6, v0

    check-cast v6, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;

    iget-object v0, v6, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;I)I

    move-result v2

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_2

    iget v0, v6, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    iget v1, v6, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    const/4 v3, 0x1

    iget v4, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    iget v4, v6, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    iget v5, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    iget v4, v6, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    iget v5, v6, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget v0, v6, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;I)V
    .locals 4

    const/4 v0, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;I)V

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->A()V

    invoke-virtual {p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v1

    if-lez v1, :cond_3

    iget-boolean v1, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-nez v1, :cond_3

    if-ne p4, v0, :cond_0

    :goto_0
    iget v1, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a:I

    invoke-direct {p0, p1, p2, v1}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    if-eqz v0, :cond_1

    :goto_1
    if-lez v1, :cond_3

    iget v0, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a:I

    if-lez v0, :cond_3

    iget v0, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a:I

    iget v0, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    iget v0, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a:I

    :goto_2
    if-ge v0, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, p2, v2}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;I)I

    move-result v2

    if-le v2, v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    :cond_2
    iput v0, p3, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$a;->a:I

    :cond_3
    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->B()V

    return-void
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;)V
    .locals 13

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/r;->i()I

    move-result v9

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v9, v1, :cond_2

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->p()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c:[I

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    aget v1, v1, v3

    move v8, v1

    :goto_1
    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->A()V

    :cond_0
    move-object/from16 v0, p3

    iget v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->e:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    move v3, v1

    :goto_2
    const/4 v4, 0x0

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    if-nez v3, :cond_1

    move-object/from16 v0, p3

    iget v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    invoke-direct {p0, p1, p2, v1}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;I)I

    move-result v1

    move-object/from16 v0, p3

    iget v5, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    invoke-direct {p0, p1, p2, v5}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;I)I

    move-result v5

    add-int/2addr v1, v5

    :cond_1
    :goto_3
    iget v5, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    if-ge v4, v5, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {v0, p2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-lez v1, :cond_6

    move-object/from16 v0, p3

    iget v5, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    invoke-direct {p0, p1, p2, v5}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;I)I

    move-result v6

    iget v7, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    if-le v6, v7, :cond_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Item at position "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spans but GridLayoutManager has only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spans."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    move v8, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    move v3, v1

    goto :goto_2

    :cond_5
    sub-int/2addr v1, v6

    if-ltz v1, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v6, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aput-object v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    if-nez v4, :cond_7

    const/4 v1, 0x1

    move-object/from16 v0, p4

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->b:Z

    :goto_4
    return-void

    :cond_7
    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, v4, v3}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;IZ)V

    const/4 v1, 0x0

    move v7, v1

    :goto_5
    if-ge v7, v4, :cond_c

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v10, v1, v7

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->k:Ljava/util/List;

    if-nez v1, :cond_a

    if-eqz v3, :cond_9

    invoke-virtual {p0, v10}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c(Landroid/view/View;)V

    :goto_6
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v10, v1}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    invoke-direct {p0, v10, v9, v1}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IZ)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1, v10}, Lcom/xiaomi/android/support/v7/widget/r;->e(Landroid/view/View;)I

    move-result v1

    if-le v1, v6, :cond_8

    move v6, v1

    :cond_8
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    iget-object v12, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v12, v10}, Lcom/xiaomi/android/support/v7/widget/r;->f(Landroid/view/View;)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v11

    iget v1, v1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    int-to-float v1, v1

    div-float v1, v10, v1

    cmpl-float v10, v1, v5

    if-lez v10, :cond_1b

    :goto_7
    add-int/lit8 v7, v7, 0x1

    move v5, v1

    goto :goto_5

    :cond_9
    invoke-virtual {p0, v10}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->d(Landroid/view/View;)V

    goto :goto_6

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {p0, v10}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;)V

    goto :goto_6

    :cond_b
    invoke-virtual {p0, v10}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;)V

    goto :goto_6

    :cond_c
    if-eqz v2, :cond_d

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->h(I)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v3, v1

    :goto_8
    if-ge v3, v4, :cond_e

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v1, v1, v3

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    invoke-direct {p0, v1, v5, v6}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IZ)V

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v5, v1}, Lcom/xiaomi/android/support/v7/widget/r;->e(Landroid/view/View;)I

    move-result v1

    if-le v1, v2, :cond_1a

    :goto_9
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_8

    :cond_d
    move v2, v6

    :cond_e
    const/4 v1, 0x0

    move v6, v1

    :goto_a
    if-ge v6, v4, :cond_11

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v7, v1, v6

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v1, v7}, Lcom/xiaomi/android/support/v7/widget/r;->e(Landroid/view/View;)I

    move-result v1

    if-eq v1, v2, :cond_f

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;

    iget-object v3, v1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->d:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->topMargin:I

    add-int/2addr v5, v8

    iget v8, v1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v8

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v8

    iget v8, v1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->leftMargin:I

    add-int/2addr v3, v8

    iget v8, v1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->rightMargin:I

    add-int/2addr v3, v8

    iget v8, v1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    iget v9, v1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    invoke-direct {p0, v8, v9}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->e(II)I

    move-result v8

    iget v9, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->i:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    const/high16 v9, 0x40000000    # 2.0f

    iget v1, v1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->width:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v3, v1, v10}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v1

    sub-int v3, v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move v5, v3

    :goto_b
    const/4 v3, 0x1

    invoke-direct {p0, v7, v1, v5, v3}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    :cond_f
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_a

    :cond_10
    sub-int v3, v2, v3

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v9, 0x40000000    # 2.0f

    iget v1, v1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->height:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v5, v1, v10}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v5

    move v1, v3

    goto :goto_b

    :cond_11
    move-object/from16 v0, p4

    iput v2, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->a:I

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget v7, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->i:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_15

    move-object/from16 v0, p3

    iget v3, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_14

    move-object/from16 v0, p3

    iget v3, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    sub-int v5, v3, v2

    move v2, v3

    :goto_c
    const/4 v10, 0x0

    move v3, v1

    move v7, v2

    move v8, v5

    move v9, v6

    :goto_d
    if-ge v10, v4, :cond_19

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v11, v1, v10

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->i:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_18

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->k()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->u()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c:[I

    iget v5, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    iget v6, v1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    sub-int/2addr v5, v6

    aget v3, v3, v5

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2, v11}, Lcom/xiaomi/android/support/v7/widget/r;->f(Landroid/view/View;)I

    move-result v2

    sub-int v2, v3, v2

    move v5, v7

    move v6, v8

    move v9, v3

    :goto_e
    invoke-static {v11, v2, v6, v9, v5}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIII)V

    iget-object v3, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v3

    if-nez v3, :cond_12

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->t()Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_12
    const/4 v1, 0x1

    move-object/from16 v0, p4

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->c:Z

    :cond_13
    move-object/from16 v0, p4

    iget-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->d:Z

    invoke-virtual {v11}, Landroid/view/View;->hasFocusable()Z

    move-result v3

    or-int/2addr v1, v3

    move-object/from16 v0, p4

    iput-boolean v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$b;->d:Z

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    move v3, v2

    move v7, v5

    move v8, v6

    goto :goto_d

    :cond_14
    move-object/from16 v0, p3

    iget v3, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    add-int/2addr v2, v3

    move v5, v3

    goto :goto_c

    :cond_15
    move-object/from16 v0, p3

    iget v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->f:I

    const/4 v6, -0x1

    if-ne v1, v6, :cond_16

    move-object/from16 v0, p3

    iget v6, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    sub-int v1, v6, v2

    move v2, v3

    goto :goto_c

    :cond_16
    move-object/from16 v0, p3

    iget v1, v0, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->b:I

    add-int v6, v1, v2

    move v2, v3

    goto :goto_c

    :cond_17
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->u()I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c:[I

    iget v5, v1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    aget v3, v3, v5

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v3, v11}, Lcom/xiaomi/android/support/v7/widget/r;->f(Landroid/view/View;)I

    move-result v3

    add-int/2addr v3, v2

    move v5, v7

    move v6, v8

    move v9, v3

    goto :goto_e

    :cond_18
    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->v()I

    move-result v2

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->c:[I

    iget v6, v1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    aget v5, v5, v6

    add-int v6, v2, v5

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->j:Lcom/xiaomi/android/support/v7/widget/r;

    invoke-virtual {v2, v11}, Lcom/xiaomi/android/support/v7/widget/r;->f(Landroid/view/View;)I

    move-result v2

    add-int v5, v6, v2

    move v2, v3

    goto :goto_e

    :cond_19
    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1a
    move v1, v2

    goto/16 :goto_9

    :cond_1b
    move v1, v5

    goto/16 :goto_7
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a:Z

    return-void
.end method

.method final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$a;)V
    .locals 5

    const/4 v1, 0x0

    iget v2, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p2, p1}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-lez v2, :cond_0

    iget v3, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    iget v4, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->g:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-interface {p3, v3, v4}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager$a;->a(II)V

    add-int/lit8 v2, v2, -0x1

    iget v3, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    iget v4, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->e:I

    add-int/2addr v3, v4

    iput v3, p2, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$c;->d:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->a(Z)V

    return-void
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;

    return v0
.end method

.method public final b(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->A()V

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->B()V

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->b(ILcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I

    move-result v0

    return v0
.end method

.method public final b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)I
    .locals 2

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->b:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->g:Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->g:Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)V
    .locals 6

    iget-boolean v0, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->p()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;

    iget-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->c:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->d()I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    iget v5, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->b:I

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;->a:I

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;Lcom/xiaomi/android/support/v7/widget/RecyclerView$State;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->g:Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->g:Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$SpanSizeLookup;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final f()Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->n:Lcom/xiaomi/android/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/GridLayoutManager;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
