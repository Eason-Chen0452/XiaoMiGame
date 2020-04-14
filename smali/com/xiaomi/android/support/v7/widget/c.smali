.class final Lcom/xiaomi/android/support/v7/widget/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/c;->b:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/xiaomi/android/support/v7/widget/c;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$b;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/c;->b:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    iget-object v2, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$b;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iget v3, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$b;->b:I

    iget v5, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$b;->c:I

    iget v6, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$b;->d:I

    iget v0, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$b;->e:I

    iget-object v4, v2, Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    sub-int v3, v6, v3

    sub-int v5, v0, v5

    if-eqz v3, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget-object v0, v1, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;->e()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v0, Lcom/xiaomi/android/support/v7/widget/h;

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/android/support/v7/widget/h;-><init>(Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {v8, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/c;->b:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
