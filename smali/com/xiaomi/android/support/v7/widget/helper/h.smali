.class final Lcom/xiaomi/android/support/v7/widget/helper/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

.field final synthetic b:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;


# direct methods
.method constructor <init>(Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/helper/h;->b:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;

    iput-object p2, p0, Lcom/xiaomi/android/support/v7/widget/helper/h;->a:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/helper/h;->b:Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/android/support/v7/widget/helper/ItemTouchHelper$a;->a(F)V

    return-void
.end method
