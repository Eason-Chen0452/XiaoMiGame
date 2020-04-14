.class final Lcom/xiaomi/android/support/v7/widget/t;
.super Lcom/xiaomi/android/support/v7/widget/r;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/android/support/v7/widget/r;-><init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->i(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/t;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/b;->a()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->f:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v3, v0}, Lcom/xiaomi/android/support/v7/widget/b;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->k(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/t;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->v()I

    move-result v0

    return v0
.end method

.method public final c(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/t;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/t;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/t;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/t;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->t()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/t;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->x()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/t;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/t;->b:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/t;->b:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/t;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->t()I

    move-result v0

    return v0
.end method

.method public final e(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->g(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final f()I
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/t;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->t()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/t;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->v()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/t;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->x()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final f(Landroid/view/View;)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->f(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/t;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->x()I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/t;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->r()I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/t;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->q()I

    move-result v0

    return v0
.end method
