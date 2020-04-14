.class final Lcom/xiaomi/android/support/v7/widget/h;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:I

.field final synthetic c:Landroid/view/View;

.field final synthetic d:I

.field final synthetic e:Landroid/view/ViewPropertyAnimator;

.field final synthetic f:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;ILandroid/view/View;ILandroid/view/ViewPropertyAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/h;->f:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/xiaomi/android/support/v7/widget/h;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/xiaomi/android/support/v7/widget/h;->b:I

    iput-object p4, p0, Lcom/xiaomi/android/support/v7/widget/h;->c:Landroid/view/View;

    iput p5, p0, Lcom/xiaomi/android/support/v7/widget/h;->d:I

    iput-object p6, p0, Lcom/xiaomi/android/support/v7/widget/h;->e:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/h;->b:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/h;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget v0, p0, Lcom/xiaomi/android/support/v7/widget/h;->d:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/h;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/h;->e:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/h;->f:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/h;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/SimpleItemAnimator;->f(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/h;->f:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/h;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/h;->f:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;->c()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
