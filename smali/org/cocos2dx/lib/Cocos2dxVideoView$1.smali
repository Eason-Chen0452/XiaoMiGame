.class Lorg/cocos2dx/lib/Cocos2dxVideoView$1;
.super Ljava/lang/Object;
.source "Cocos2dxVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/lib/Cocos2dxVideoView;->onTouchEvent(Landroid/view/MotionEvent;)Z
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
    .line 221
    iput-object p1, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxVideoView$1;->this$0:Lorg/cocos2dx/lib/Cocos2dxVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxVideoView;->access$002(Lorg/cocos2dx/lib/Cocos2dxVideoView;Z)Z

    .line 225
    return-void
.end method
