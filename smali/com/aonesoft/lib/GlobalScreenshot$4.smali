.class Lcom/aonesoft/lib/GlobalScreenshot$4;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


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


# direct methods
.method constructor <init>(Lcom/aonesoft/lib/GlobalScreenshot;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aonesoft/lib/GlobalScreenshot$4;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 335
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$4;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 336
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$4;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$7(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildLayer()V

    .line 337
    iget-object v0, p0, Lcom/aonesoft/lib/GlobalScreenshot$4;->this$0:Lcom/aonesoft/lib/GlobalScreenshot;

    invoke-static {v0}, Lcom/aonesoft/lib/GlobalScreenshot;->access$8(Lcom/aonesoft/lib/GlobalScreenshot;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 338
    return-void
.end method
