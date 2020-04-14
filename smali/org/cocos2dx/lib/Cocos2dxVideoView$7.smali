.class Lorg/cocos2dx/lib/Cocos2dxVideoView$7;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/cocos2dx/lib/Cocos2dxVideoView;

    .prologue
    .line 544
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 548
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v4}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$700(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v4}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1400(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 549
    .local v1, "isValidState":Z
    :goto_0
    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v4}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$100(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v4

    if-ne v4, p3, :cond_4

    iget-object v4, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v4}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$200(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v4

    if-ne v4, p4, :cond_4

    move v0, v3

    .line 550
    .local v0, "hasValidSize":Z
    :goto_1
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$500(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 551
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$600(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 552
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$600(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->seekTo(I)V

    .line 554
    :cond_1
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->start()V

    .line 556
    :cond_2
    return-void

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_3
    move v1, v2

    .line 548
    goto :goto_0

    .restart local v1    # "isValidState":Z
    :cond_4
    move v0, v2

    .line 549
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 560
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v0, p1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1502(Lorg/cocos2dx/lib/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 561
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1600(Lorg/cocos2dx/lib/Cocos2dxVideoView;)V

    .line 562
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v1, 0x1

    .line 567
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1502(Lorg/cocos2dx/lib/Cocos2dxVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 568
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$300(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 569
    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$500(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v3, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v3}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$500(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v2, v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1402(Lorg/cocos2dx/lib/Cocos2dxVideoView;Z)Z

    .line 570
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$500(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-static {v0, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$602(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I

    .line 572
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$7;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$800(Lorg/cocos2dx/lib/Cocos2dxVideoView;Z)V

    .line 573
    return-void

    .line 569
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
