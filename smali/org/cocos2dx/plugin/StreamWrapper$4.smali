.class Lorg/cocos2dx/plugin/StreamWrapper$4;
.super Ljava/lang/Object;
.source "StreamWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/plugin/StreamWrapper;->onCaptureStop(Lorg/cocos2dx/plugin/InterfaceStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$curAdapter:Lorg/cocos2dx/plugin/InterfaceStream;


# direct methods
.method constructor <init>(Lorg/cocos2dx/plugin/InterfaceStream;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/plugin/StreamWrapper$4;->val$curAdapter:Lorg/cocos2dx/plugin/InterfaceStream;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lorg/cocos2dx/plugin/StreamWrapper$4;->val$curAdapter:Lorg/cocos2dx/plugin/InterfaceStream;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0}, Lorg/cocos2dx/plugin/StreamWrapper;->access$3(Ljava/lang/String;)V

    .line 70
    return-void
.end method
