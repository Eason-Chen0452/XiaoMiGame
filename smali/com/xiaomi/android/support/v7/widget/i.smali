.class final Lcom/xiaomi/android/support/v7/widget/i;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;

.field final synthetic b:Landroid/view/ViewPropertyAnimator;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;Landroid/view/ViewPropertyAnimator;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/i;->d:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    iput-object p2, p0, Lcom/xiaomi/android/support/v7/widget/i;->a:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;

    iput-object p3, p0, Lcom/xiaomi/android/support/v7/widget/i;->b:Landroid/view/ViewPropertyAnimator;

    iput-object p4, p0, Lcom/xiaomi/android/support/v7/widget/i;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/i;->b:Landroid/view/ViewPropertyAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/i;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/i;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/i;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/i;->d:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/i;->a:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/SimpleItemAnimator;->f(Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/i;->d:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    iget-object v0, v0, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;->g:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/i;->a:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;

    iget-object v1, v1, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator$a;->a:Lcom/xiaomi/android/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/i;->d:Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;

    invoke-virtual {v0}, Lcom/xiaomi/android/support/v7/widget/DefaultItemAnimator;->c()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
