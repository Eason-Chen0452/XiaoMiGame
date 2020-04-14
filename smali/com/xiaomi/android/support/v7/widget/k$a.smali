.class final Lcom/xiaomi/android/support/v7/widget/k$a;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/android/support/v7/widget/k;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/xiaomi/android/support/v7/widget/k;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/k$a;->a:Lcom/xiaomi/android/support/v7/widget/k;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/k$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/android/support/v7/widget/k;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/k$a;-><init>(Lcom/xiaomi/android/support/v7/widget/k;)V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/k$a;->b:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/xiaomi/android/support/v7/widget/k$a;->b:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/xiaomi/android/support/v7/widget/k$a;->b:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k$a;->a:Lcom/xiaomi/android/support/v7/widget/k;

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/k;->a(Lcom/xiaomi/android/support/v7/widget/k;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k$a;->a:Lcom/xiaomi/android/support/v7/widget/k;

    invoke-static {v0, v2}, Lcom/xiaomi/android/support/v7/widget/k;->a(Lcom/xiaomi/android/support/v7/widget/k;I)I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k$a;->a:Lcom/xiaomi/android/support/v7/widget/k;

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/k;->b(Lcom/xiaomi/android/support/v7/widget/k;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k$a;->a:Lcom/xiaomi/android/support/v7/widget/k;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/xiaomi/android/support/v7/widget/k;->a(Lcom/xiaomi/android/support/v7/widget/k;I)I

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k$a;->a:Lcom/xiaomi/android/support/v7/widget/k;

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/k;->c(Lcom/xiaomi/android/support/v7/widget/k;)V

    goto :goto_0
.end method
