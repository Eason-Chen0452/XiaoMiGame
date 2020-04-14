.class final Lcom/xiaomi/android/support/v7/widget/helper/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;

.field final synthetic b:I

.field final synthetic c:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/helper/d;->c:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iput-object p2, p0, Lcom/xiaomi/android/support/v7/widget/helper/d;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;

    iput p3, p0, Lcom/xiaomi/android/support/v7/widget/helper/d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/d;->c:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/d;->c:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/d;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->n:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/d;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->h:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->e()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/d;->c:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->i()Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ItemAnimator;->b()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/xiaomi/android/support/v7/widget/helper/d;->c:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v3, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    iget-object v0, v3, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;

    iget-boolean v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->o:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/d;->c:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->l:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$Callback;->h()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/d;->c:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;->p:Lcom/xiaomi/android/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lcom/xiaomi/android/support/v7/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
