.class Lorg/cocos2dx/plugin/UserWrapper$1;
.super Ljava/lang/Object;
.source "UserWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/plugin/UserWrapper;->onActionResult(Lorg/cocos2dx/plugin/InterfaceUser;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$curAdapter:Lorg/cocos2dx/plugin/InterfaceUser;

.field private final synthetic val$curMsg:Ljava/lang/String;

.field private final synthetic val$curRet:I


# direct methods
.method constructor <init>(Lorg/cocos2dx/plugin/InterfaceUser;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/plugin/UserWrapper$1;->val$curAdapter:Lorg/cocos2dx/plugin/InterfaceUser;

    iput p2, p0, Lorg/cocos2dx/plugin/UserWrapper$1;->val$curRet:I

    iput-object p3, p0, Lorg/cocos2dx/plugin/UserWrapper$1;->val$curMsg:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 41
    iget-object v1, p0, Lorg/cocos2dx/plugin/UserWrapper$1;->val$curAdapter:Lorg/cocos2dx/plugin/InterfaceUser;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "name":Ljava/lang/String;
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 43
    iget v1, p0, Lorg/cocos2dx/plugin/UserWrapper$1;->val$curRet:I

    iget-object v2, p0, Lorg/cocos2dx/plugin/UserWrapper$1;->val$curMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/cocos2dx/plugin/UserWrapper;->access$0(Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    return-void
.end method
