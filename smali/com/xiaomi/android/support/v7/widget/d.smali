.class final Lcom/xiaomi/android/support/v7/widget/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/d;->b:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/xiaomi/android/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v2, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;

    iget-object v5, p0, Lcom/xiaomi/android/support/v7/widget/d;->b:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    iget-object v1, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v1, :cond_2

    move-object v1, v2

    :goto_1
    iget-object v3, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;->h()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v7, v5, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;->g:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v7, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;->e:I

    iget v8, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;->c:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    iget v7, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;->f:I

    iget v8, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;->d:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v8, Lcom/xiaomi/android/support/v7/widget/i;

    invoke-direct {v8, v5, v0, v6, v1}, Lcom/xiaomi/android/support/v7/widget/i;-><init>(Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v6, v5, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;->g:Ljava/util/ArrayList;

    iget-object v7, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;->b:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v5}, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;->h()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/xiaomi/android/support/v7/widget/j;

    invoke-direct {v7, v5, v0, v1, v3}, Lcom/xiaomi/android/support/v7/widget/j;-><init>(Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    goto :goto_1

    :cond_3
    move-object v3, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/d;->b:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
