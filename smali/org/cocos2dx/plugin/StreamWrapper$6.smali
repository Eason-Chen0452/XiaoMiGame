.class Lorg/cocos2dx/plugin/StreamWrapper$6;
.super Ljava/lang/Object;
.source "StreamWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/plugin/StreamWrapper;->onPublishStop(Lorg/cocos2dx/plugin/InterfaceStream;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$curAdapter:Lorg/cocos2dx/plugin/InterfaceStream;

.field private final synthetic val$curRet:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/plugin/InterfaceStream;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/plugin/StreamWrapper$6;->val$curAdapter:Lorg/cocos2dx/plugin/InterfaceStream;

    iput p2, p0, Lorg/cocos2dx/plugin/StreamWrapper$6;->val$curRet:I

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 99
    iget-object v1, p0, Lorg/cocos2dx/plugin/StreamWrapper$6;->val$curAdapter:Lorg/cocos2dx/plugin/InterfaceStream;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 101
    iget v1, p0, Lorg/cocos2dx/plugin/StreamWrapper$6;->val$curRet:I

    invoke-static {v0, v1}, Lorg/cocos2dx/plugin/StreamWrapper;->access$5(Ljava/lang/String;I)V

    .line 102
    return-void
.end method
