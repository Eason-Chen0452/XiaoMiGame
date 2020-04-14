.class final Lcom/xiaomi/android/support/v7/widget/helper/c;
.super Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic c:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;IIFFFFILcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/helper/c;->c:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iput p9, p0, Lcom/xiaomi/android/support/v7/widget/helper/c;->a:I

    iput-object p10, p0, Lcom/xiaomi/android/support/v7/widget/helper/c;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-direct/range {p0 .. p8}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;-><init>(Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;IIFFFF)V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/c;->n:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/c;->a:I

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/c;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->b(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/c;->c:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->s:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/c;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/c;->c:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/c;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->b(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/c;->c:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/c;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/c;->k:Z

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/c;->a:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/c;->c:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget v1, p0, Lcom/xiaomi/android/support/v7/widget/helper/c;->a:I

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/xiaomi/android/support/v7/widget/helper/d;

    invoke-direct {v3, v0, p0, v1}, Lcom/xiaomi/android/support/v7/widget/helper/d;-><init>(Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;I)V

    invoke-virtual {v2, v3}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
