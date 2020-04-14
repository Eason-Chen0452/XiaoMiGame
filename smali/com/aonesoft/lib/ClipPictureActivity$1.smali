.class Lcom/aonesoft/lib/ClipPictureActivity$1;
.super Ljava/lang/Object;
.source "ClipPictureActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aonesoft/lib/ClipPictureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aonesoft/lib/ClipPictureActivity;


# direct methods
.method constructor <init>(Lcom/aonesoft/lib/ClipPictureActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aonesoft/lib/ClipPictureActivity$1;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/aonesoft/lib/ClipPictureActivity$1;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v0}, Lcom/aonesoft/lib/ClipPictureActivity;->access$0(Lcom/aonesoft/lib/ClipPictureActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 86
    iget-object v0, p0, Lcom/aonesoft/lib/ClipPictureActivity$1;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    iget-object v1, p0, Lcom/aonesoft/lib/ClipPictureActivity$1;->this$0:Lcom/aonesoft/lib/ClipPictureActivity;

    invoke-static {v1}, Lcom/aonesoft/lib/ClipPictureActivity;->access$0(Lcom/aonesoft/lib/ClipPictureActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/aonesoft/lib/ClipPictureActivity;->access$1(Lcom/aonesoft/lib/ClipPictureActivity;I)V

    .line 87
    return-void
.end method
