.class final Lcom/xiaomi/android/support/v7/widget/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/e;->b:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/xiaomi/android/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, p0, Lcom/xiaomi/android/support/v7/widget/e;->b:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    iget-object v3, v0, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v5, v2, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v2}, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;->f()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/xiaomi/android/support/v7/widget/g;

    invoke-direct {v6, v2, v0, v3, v4}, Lcom/xiaomi/android/support/v7/widget/g;-><init>(Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;Landroid/view/View;Landroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/e;->b:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
