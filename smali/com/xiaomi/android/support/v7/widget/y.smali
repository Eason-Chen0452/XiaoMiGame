.class final Lcom/xiaomi/android/support/v7/widget/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/android/support/v7/widget/b$b;


# instance fields
.field final synthetic a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/y;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/y;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/y;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/y;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/y;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/y;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->removeViewAt(I)V

    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/y;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/y;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->i(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->o()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called attach on a child which is not detached: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->j()V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/y;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/y;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/y;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/y;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Lcom/xiaomi/android/support/v7/widget/y;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->h(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/y;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->removeAllViews()V

    return-void
.end method

.method public final c(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/xiaomi/android/support/v7/widget/y;->b(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "called detach on an already detached child "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(I)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/y;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/y;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/y;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V

    :cond_0
    return-void
.end method
