.class Lorg/cocos2dx/plugin/UserMi$3;
.super Ljava/lang/Object;
.source "UserMi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/plugin/UserMi;->login()V
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
    iput-object p1, p0, Lorg/cocos2dx/plugin/UserMi$3;->this$0:Lorg/cocos2dx/plugin/UserMi;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    sget-boolean v0, Lorg/cocos2dx/plugin/UserMi;->isInited:Z

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lorg/cocos2dx/plugin/UserMi;->mAdapter:Lorg/cocos2dx/plugin/InterfaceUser;

    const/4 v1, 0x1

    const-string v2, "SDK init failed"

    invoke-static {v0, v1, v2}, Lorg/cocos2dx/plugin/UserWrapper;->onActionResult(Lorg/cocos2dx/plugin/InterfaceUser;ILjava/lang/String;)V

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/cocos2dx/plugin/UserMi$3;->this$0:Lorg/cocos2dx/plugin/UserMi;

    invoke-virtual {v0}, Lorg/cocos2dx/plugin/UserMi;->isLogined()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    sget-object v0, Lorg/cocos2dx/plugin/UserMi;->mAdapter:Lorg/cocos2dx/plugin/InterfaceUser;

    const/4 v1, 0x0

    const-string v2, "SDK already logined"

    invoke-static {v0, v1, v2}, Lorg/cocos2dx/plugin/UserWrapper;->onActionResult(Lorg/cocos2dx/plugin/InterfaceUser;ILjava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_1
    iget-object v0, p0, Lorg/cocos2dx/plugin/UserMi$3;->this$0:Lorg/cocos2dx/plugin/UserMi;

    invoke-static {v0}, Lorg/cocos2dx/plugin/UserMi;->access$3(Lorg/cocos2dx/plugin/UserMi;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/plugin/UserMi$3;->this$0:Lorg/cocos2dx/plugin/UserMi;

    invoke-static {v1}, Lorg/cocos2dx/plugin/UserMi;->access$4(Lorg/cocos2dx/plugin/UserMi;)Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2dx/plugin/MiWrapper;->miLogin(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V

    goto :goto_0
.end method
