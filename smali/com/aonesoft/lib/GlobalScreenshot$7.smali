.class Lcom/aonesoft/lib/GlobalScreenshot$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


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


# direct methods
.method constructor <init>(Lcom/aonesoft/lib/GlobalScreenshot;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aonesoft/lib/GlobalScreenshot$7;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    .line 369
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$7;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$11(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 372
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$7;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$9(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 373
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$7;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$9(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$7;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 375
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$7;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 376
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$7;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 377
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$7;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/aonesoft/lib/GlobalScreenshot$7;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v1}, Lcom/aonesoft/lib/GlobalScreenshot;->access$10(Lcom/aonesoft/lib/GlobalScreenshot;)F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 378
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$7;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/aonesoft/lib/GlobalScreenshot$7;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v1}, Lcom/aonesoft/lib/GlobalScreenshot;->access$10(Lcom/aonesoft/lib/GlobalScreenshot;)F

    move-result v1

    add-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 379
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$7;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$7;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$11(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 381
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$7;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$11(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 382
    return-void
.end method
