.class Lcom/aonesoft/lib/GlobalScreenshot$12;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/GlobalScreenshot;->createScreenshotDropOutAnimation(IIZZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aonesoft/lib/GlobalScreenshot;

.field private final synthetic val$finalPos:Landroid/graphics/PointF;

.field private final synthetic val$scaleInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Lcom/aonesoft/lib/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/graphics/PointF;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aonesoft/lib/GlobalScreenshot$12;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    iput-object p2, p0, Lcom/aonesoft/lib/GlobalScreenshot$12;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/aonesoft/lib/GlobalScreenshot$12;->val$finalPos:Landroid/graphics/PointF;

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 466
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 467
    .local v1, "t":F
    const v2, 0x3f39999a    # 0.725f

    iget-object v3, p0, Lcom/aonesoft/lib/GlobalScreenshot$12;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v3}, Lcom/aonesoft/lib/GlobalScreenshot;->access$10(Lcom/aonesoft/lib/GlobalScreenshot;)F

    move-result v3

    add-float/2addr v2, v3

    .line 468
    iget-object v3, p0, Lcom/aonesoft/lib/GlobalScreenshot$12;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 469
    const v4, 0x3e8cccce    # 0.27500004f

    .line 468
    mul-float/2addr v3, v4

    .line 467
    sub-float v0, v2, v3

    .line 470
    .local v0, "scaleT":F
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot$12;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v2}, Lcom/aonesoft/lib/GlobalScreenshot;->access$9(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    sub-float v3, v5, v1

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 471
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot$12;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v2}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/aonesoft/lib/GlobalScreenshot$12;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float v3, v5, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 472
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot$12;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v2}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 473
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot$12;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v2}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 474
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot$12;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v2}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/aonesoft/lib/GlobalScreenshot$12;->val$finalPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 475
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot$12;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v2}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/aonesoft/lib/GlobalScreenshot$12;->val$finalPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 476
    return-void
.end method
