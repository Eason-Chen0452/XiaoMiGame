.class Lorg/cocos2dx/plugin/UserMi$4;
.super Ljava/lang/Object;
.source "UserMi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/plugin/UserMi;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/plugin/UserMi;


# direct methods
.method constructor <init>(Lorg/cocos2dx/plugin/UserMi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/plugin/UserMi$4;->this$0:Lorg/cocos2dx/plugin/UserMi;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lorg/cocos2dx/plugin/UserMi$4;->this$0:Lorg/cocos2dx/plugin/UserMi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cocos2dx/plugin/UserMi;->access$0(Lorg/cocos2dx/plugin/UserMi;Z)V

    .line 113
    iget-object v0, p0, Lorg/cocos2dx/plugin/UserMi$4;->this$0:Lorg/cocos2dx/plugin/UserMi;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/cocos2dx/plugin/UserMi;->access$1(Lorg/cocos2dx/plugin/UserMi;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lorg/cocos2dx/plugin/UserMi;->mAdapter:Lorg/cocos2dx/plugin/InterfaceUser;

    const/4 v1, 0x3

    const-string v2, "logout success"

    invoke-static {v0, v1, v2}, Lorg/cocos2dx/plugin/UserWrapper;->onActionResult(Lorg/cocos2dx/plugin/InterfaceUser;ILjava/lang/String;)V

    .line 115
    return-void
.end method
