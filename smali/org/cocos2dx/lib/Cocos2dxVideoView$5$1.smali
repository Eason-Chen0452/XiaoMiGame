.class Lorg/cocos2dx/lib/Cocos2dxVideoView$5$1;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoView$5;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/cocos2dx/lib/Cocos2dxVideoView$5;


# direct methods
.method constructor <init>(Lorg/cocos2dx/lib/Cocos2dxVideoView$5;)V
    .locals 0
    .param p1, "this$1"    # Lorg/cocos2dx/lib/Cocos2dxVideoView$5;

    .prologue
    .line 484
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$5$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxVideoView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 489
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$5$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxVideoView$5;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$900(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$5$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxVideoView$5;

    iget-object v0, v0, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v0}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$900(Lorg/cocos2dx/lib/Cocos2dxVideoView;)Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$5$1;->this$1:Lorg/cocos2dx/lib/Cocos2dxVideoView$5;

    iget-object v1, v1, Lorg/cocos2dx/lib/Cocos2dxVideoView$5;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-static {v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$1000(Lorg/cocos2dx/lib/Cocos2dxVideoView;)I

    move-result v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lorg/cocos2dx/lib/Cocos2dxVideoView$OnVideoEventListener;->onVideoEvent(II)V

    .line 492
    :cond_0
    return-void
.end method
