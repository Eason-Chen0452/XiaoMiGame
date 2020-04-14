.class final Lcom/xiaomi/android/support/v7/widget/k$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/android/support/v7/widget/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/android/support/v7/widget/k;


# direct methods
.method private constructor <init>(Lcom/xiaomi/android/support/v7/widget/k;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/android/support/v7/widget/k$b;->a:Lcom/xiaomi/android/support/v7/widget/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/android/support/v7/widget/k;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/android/support/v7/widget/k$b;-><init>(Lcom/xiaomi/android/support/v7/widget/k;)V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const/high16 v1, 0x437f0000    # 255.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k$b;->a:Lcom/xiaomi/android/support/v7/widget/k;

    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/k;->d(Lcom/xiaomi/android/support/v7/widget/k;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/xiaomi/android/support/v7/widget/k$b;->a:Lcom/xiaomi/android/support/v7/widget/k;

    invoke-static {v1}, Lcom/xiaomi/android/support/v7/widget/k;->e(Lcom/xiaomi/android/support/v7/widget/k;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/xiaomi/android/support/v7/widget/k$b;->a:Lcom/xiaomi/android/support/v7/widget/k;

    invoke-static {v0}, Lcom/xiaomi/android/support/v7/widget/k;->c(Lcom/xiaomi/android/support/v7/widget/k;)V

    return-void
.end method
