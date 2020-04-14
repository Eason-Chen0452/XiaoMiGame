.class Lorg/cocos2dx/plugin/UserMi$1;
.super Ljava/lang/Object;
.source "UserMi.java"

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/plugin/UserMi;
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
    iput-object p1, p0, Lorg/cocos2dx/plugin/UserMi$1;->this$0:Lorg/cocos2dx/plugin/UserMi;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "info"    # Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    .prologue
    const/4 v2, 0x1

    .line 131
    sparse-switch p1, :sswitch_data_0

    .line 152
    new-instance v0, Lorg/cocos2dx/plugin/UserMi;

    iget-object v1, p0, Lorg/cocos2dx/plugin/UserMi$1;->this$0:Lorg/cocos2dx/plugin/UserMi;

    invoke-static {v1}, Lorg/cocos2dx/plugin/UserMi;->access$3(Lorg/cocos2dx/plugin/UserMi;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2dx/plugin/UserMi;-><init>(Landroid/content/Context;)V

    const-string v1, "Login failed"

    invoke-static {v0, v2, v1}, Lorg/cocos2dx/plugin/UserWrapper;->onActionResult(Lorg/cocos2dx/plugin/InterfaceUser;ILjava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 133
    :sswitch_0
    iget-object v0, p0, Lorg/cocos2dx/plugin/UserMi$1;->this$0:Lorg/cocos2dx/plugin/UserMi;

    invoke-static {v0, v2}, Lorg/cocos2dx/plugin/UserMi;->access$0(Lorg/cocos2dx/plugin/UserMi;Z)V

    .line 134
    iget-object v0, p0, Lorg/cocos2dx/plugin/UserMi$1;->this$0:Lorg/cocos2dx/plugin/UserMi;

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2dx/plugin/UserMi;->access$1(Lorg/cocos2dx/plugin/UserMi;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lorg/cocos2dx/plugin/UserMi$1;->this$0:Lorg/cocos2dx/plugin/UserMi;

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/cocos2dx/plugin/UserMi;->access$2(Lorg/cocos2dx/plugin/UserMi;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lorg/cocos2dx/plugin/UserMi;

    iget-object v1, p0, Lorg/cocos2dx/plugin/UserMi$1;->this$0:Lorg/cocos2dx/plugin/UserMi;

    invoke-static {v1}, Lorg/cocos2dx/plugin/UserMi;->access$3(Lorg/cocos2dx/plugin/UserMi;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2dx/plugin/UserMi;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 137
    const-string v2, "Login successed"

    .line 136
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/plugin/UserWrapper;->onActionResult(Lorg/cocos2dx/plugin/InterfaceUser;ILjava/lang/String;)V

    goto :goto_0

    .line 140
    :sswitch_1
    new-instance v0, Lorg/cocos2dx/plugin/UserMi;

    iget-object v1, p0, Lorg/cocos2dx/plugin/UserMi$1;->this$0:Lorg/cocos2dx/plugin/UserMi;

    invoke-static {v1}, Lorg/cocos2dx/plugin/UserMi;->access$3(Lorg/cocos2dx/plugin/UserMi;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2dx/plugin/UserMi;-><init>(Landroid/content/Context;)V

    .line 141
    const-string v1, "Login failed:MI_XIAOMI_GAMECENTER_ERROR_LOGIN_FAIL"

    .line 140
    invoke-static {v0, v2, v1}, Lorg/cocos2dx/plugin/UserWrapper;->onActionResult(Lorg/cocos2dx/plugin/InterfaceUser;ILjava/lang/String;)V

    goto :goto_0

    .line 144
    :sswitch_2
    new-instance v0, Lorg/cocos2dx/plugin/UserMi;

    iget-object v1, p0, Lorg/cocos2dx/plugin/UserMi$1;->this$0:Lorg/cocos2dx/plugin/UserMi;

    invoke-static {v1}, Lorg/cocos2dx/plugin/UserMi;->access$3(Lorg/cocos2dx/plugin/UserMi;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2dx/plugin/UserMi;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    .line 145
    const-string v2, "Login cancel:MI_XIAOMI_GAMECENTER_ERROR_CANCEL"

    .line 144
    invoke-static {v0, v1, v2}, Lorg/cocos2dx/plugin/UserWrapper;->onActionResult(Lorg/cocos2dx/plugin/InterfaceUser;ILjava/lang/String;)V

    goto :goto_0

    .line 148
    :sswitch_3
    new-instance v0, Lorg/cocos2dx/plugin/UserMi;

    iget-object v1, p0, Lorg/cocos2dx/plugin/UserMi$1;->this$0:Lorg/cocos2dx/plugin/UserMi;

    invoke-static {v1}, Lorg/cocos2dx/plugin/UserMi;->access$3(Lorg/cocos2dx/plugin/UserMi;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/cocos2dx/plugin/UserMi;-><init>(Landroid/content/Context;)V

    .line 149
    const-string v1, "Login failed:MI_XIAOMI_GAMECENTER_ERROR_ACTION_EXECUTED"

    .line 148
    invoke-static {v0, v2, v1}, Lorg/cocos2dx/plugin/UserWrapper;->onActionResult(Lorg/cocos2dx/plugin/InterfaceUser;ILjava/lang/String;)V

    goto :goto_0

    .line 131
    :sswitch_data_0
    .sparse-switch
        -0x4656 -> :sswitch_3
        -0x66 -> :sswitch_1
        -0xc -> :sswitch_2
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
