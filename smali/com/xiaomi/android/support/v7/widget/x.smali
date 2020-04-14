.class final Lcom/xiaomi/android/support/v7/widget/x;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/android/support/v7/widget/ae$b;


# instance fields
.field final synthetic a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/x;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/x;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->m:Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/x;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v2, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$LayoutManager;->p:Lcom/xiaomi/android/support/v7/widget/b;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/b;->b(Landroid/view/View;)V

    invoke-virtual {v2, v1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->a(Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p2    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/x;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->d:Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$Recycler;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/x;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method public final b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/x;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method public final c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p2    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a(Z)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/x;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->w:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/x;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p1, p2, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->a(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/x;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/x;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->x:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->c(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/x;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->j()V

    goto :goto_0
.end method
