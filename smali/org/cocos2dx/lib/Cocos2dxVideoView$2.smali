.class Lorg/cocos2dx/lib/Cocos2dxVideoView$2;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 385
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$102(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I

    .line 388
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$202(Lorg/cocos2dx/lib/Cocos2dxVideoView;I)I

    .line 389
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$100(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$200(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$100(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v1

    iget-object v2, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$2;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$200(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 392
    :cond_0
    return-void
.end method
