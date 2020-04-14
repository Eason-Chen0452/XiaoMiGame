.class Lcom/aonesoft/lib/GlobalScreenshot$8;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/GlobalScreenshot;->createScreenshotDropInAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aonesoft/lib/GlobalScreenshot;

.field private final synthetic val$flashAlphaInterpolator:Landroid/view/animation/Interpolator;

.field private final synthetic val$scaleInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Lcom/aonesoft/lib/GlobalScreenshot;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aonesoft/lib/GlobalScreenshot$8;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    iput-object p2, p0, Lcom/aonesoft/lib/GlobalScreenshot$8;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    iput-object p3, p0, Lcom/aonesoft/lib/GlobalScreenshot$8;->val$flashAlphaInterpolator:Landroid/view/animation/Interpolator;

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 392
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 393
    .local v1, "t":F
    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/aonesoft/lib/GlobalScreenshot$8;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v3}, Lcom/aonesoft/lib/GlobalScreenshot;->access$10(Lcom/aonesoft/lib/GlobalScreenshot;)F

    move-result v3

    add-float/2addr v2, v3

    .line 394
    iget-object v3, p0, Lcom/aonesoft/lib/GlobalScreenshot$8;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 395
    const v4, 0x3e8ccccc    # 0.27499998f

    .line 394
    mul-float/2addr v3, v4

    .line 393
    sub-float v0, v2, v3

    .line 396
    .local v0, "scaleT":F
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot$8;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v2}, Lcom/aonesoft/lib/GlobalScreenshot;->access$9(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/aonesoft/lib/GlobalScreenshot$8;->val$scaleInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 397
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot$8;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v2}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 398
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot$8;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v2}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 399
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot$8;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v2}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 400
    iget-object v2, p0, Lcom/aonesoft/lib/GlobalScreenshot$8;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v2}, Lcom/aonesoft/lib/GlobalScreenshot;->access$11(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/aonesoft/lib/GlobalScreenshot$8;->val$flashAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 401
    return-void
.end method
