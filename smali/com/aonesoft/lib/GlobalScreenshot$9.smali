.class Lcom/aonesoft/lib/GlobalScreenshot$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


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


# direct methods
.method constructor <init>(Lcom/aonesoft/lib/GlobalScreenshot;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aonesoft/lib/GlobalScreenshot$9;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    .line 411
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 415
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$9;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$9(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$9;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$9;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 418
    return-void
.end method
