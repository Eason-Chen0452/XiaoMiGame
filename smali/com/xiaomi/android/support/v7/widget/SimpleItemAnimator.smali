.class public abstract Lcom/xiaomi/android/support/v7/widget/SimpleItemAnimator;
.super Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;


# instance fields
.field h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/SimpleItemAnimator;->h:Z

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public abstract a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 7
    .param p1    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget v2, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a:I

    iget v3, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->b:I

    iget-object v0, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    if-nez p3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    :goto_0
    if-nez p3, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    :goto_1
    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->n()Z

    move-result v1

    if-nez v1, :cond_3

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_3

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {v0, v4, v5, v1, v6}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/android/support/v7/widget/SimpleItemAnimator;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    :goto_2
    return v0

    :cond_1
    iget v4, p3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a:I

    goto :goto_0

    :cond_2
    iget v5, p3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->b:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/SimpleItemAnimator;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    goto :goto_2
.end method

.method public abstract a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 7
    .param p1    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget v3, p3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a:I

    iget v4, p3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->b:I

    invoke-virtual {p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v5, p3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a:I

    iget v6, p3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->b:I

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/android/support/v7/widget/SimpleItemAnimator;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    :cond_0
    iget v5, p4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a:I

    iget v6, p4, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->b:I

    goto :goto_0
.end method

.method public abstract b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z
.end method

.method public final b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 6
    .param p1    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    iget v0, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a:I

    iget v1, p3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->b:I

    iget v1, p3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->b:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v2, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a:I

    iget v3, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->b:I

    iget v4, p3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a:I

    iget v5, p3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/android/support/v7/widget/SimpleItemAnimator;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/SimpleItemAnimator;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    goto :goto_0
.end method

.method public final c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z
    .locals 6
    .param p1    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a:I

    iget v1, p3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->b:I

    iget v1, p3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->b:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v2, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a:I

    iget v3, p2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->b:I

    iget v4, p3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->a:I

    iget v5, p3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/android/support/v7/widget/SimpleItemAnimator;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/SimpleItemAnimator;->f(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/SimpleItemAnimator;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
