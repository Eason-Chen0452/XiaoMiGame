.class Lcom/aonesoft/lib/GlobalScreenshot$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/GlobalScreenshot;->startAnimation(Ljava/lang/Runnable;IIZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aonesoft/lib/GlobalScreenshot;

.field private final synthetic val$finisher:Ljava/lang/Runnable;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/aonesoft/lib/GlobalScreenshot;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aonesoft/lib/GlobalScreenshot$3;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    iput-object p2, p0, Lcom/aonesoft/lib/GlobalScreenshot$3;->val$finisher:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/aonesoft/lib/GlobalScreenshot$3;->val$path:Ljava/lang/String;

    .line 315
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$3;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    iget-object v1, p0, Lcom/aonesoft/lib/GlobalScreenshot$3;->val$finisher:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/aonesoft/lib/GlobalScreenshot;->access$2(Lcom/aonesoft/lib/GlobalScreenshot;Ljava/lang/Runnable;)V

    .line 320
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$3;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$3(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/aonesoft/lib/GlobalScreenshot$3;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v1}, Lcom/aonesoft/lib/GlobalScreenshot;->access$4(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 322
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$3;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    iget-object v1, p0, Lcom/aonesoft/lib/GlobalScreenshot$3;->val$path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/aonesoft/lib/GlobalScreenshot;->access$5(Lcom/aonesoft/lib/GlobalScreenshot;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$3;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0, v2}, Lcom/aonesoft/lib/GlobalScreenshot;->access$6(Lcom/aonesoft/lib/GlobalScreenshot;Landroid/graphics/Bitmap;)V

    .line 326
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$3;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 327
    return-void
.end method
