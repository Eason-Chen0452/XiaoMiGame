.class public Lmain/GameActivity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "GameActivity.java"


# instance fields
.field keyListener:Landroid/view/View$OnKeyListener;

.field protected opensdk:Lchannel/Opensdk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 160
    new-instance v0, Lmain/GameActivity$2;

    invoke-direct {v0, p0}, Lmain/GameActivity$2;-><init>(Lmain/GameActivity;)V

    iput-object v0, p0, Lmain/GameActivity;->keyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method


# virtual methods
.method protected initListeners(Lmain/GameActivity;)V
    .locals 3
    .param p1, "a"    # Lmain/GameActivity;

    .prologue
    .line 66
    invoke-static {}, Lchannel/adapter/GameAdapter;->Inst()Lchannel/adapter/GameAdapter;

    move-result-object v0

    .line 67
    .local v0, "gmadpr":Lchannel/adapter/GameAdapter;
    const-string v1, "portal"

    new-instance v2, Lmain/GameActivity$1;

    invoke-direct {v2, p0}, Lmain/GameActivity$1;-><init>(Lmain/GameActivity;)V

    invoke-virtual {v0, v1, v2}, Lchannel/adapter/GameAdapter;->registerListener(Ljava/lang/String;Lchannel/adapter/IGameListener;)Z

    .line 81
    return-void
.end method

.method protected initOpensdk(Lmain/GameActivity;)V
    .locals 1
    .param p1, "a"    # Lmain/GameActivity;

    .prologue
    .line 61
    invoke-static {p1}, Lchannel/Opensdk;->createOpensdk(Landroid/app/Activity;)Lchannel/Opensdk;

    move-result-object v0

    iput-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    .line 62
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    invoke-virtual {v0, p1}, Lchannel/Opensdk;->onActivityCreate(Landroid/app/Activity;)V

    .line 63
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 155
    invoke-static {p1, p2, p3}, Lcom/aonesoft/lib/AoneSdkProxy;->onActivityResult(IILandroid/content/Intent;)V

    .line 156
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 157
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    invoke-virtual {v0, p1, p2, p3}, Lchannel/Opensdk;->onActivityResult(IILandroid/content/Intent;)V

    .line 158
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x80

    .line 44
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const-string v1, "Activity"

    const-string v2, "-- onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0}, Lmain/GameActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 50
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->getInstance()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    .line 51
    .local v0, "glSurfaceView":Landroid/opengl/GLSurfaceView;
    invoke-static {p0, p1, v0}, Lcom/aonesoft/lib/AoneSdkProxy;->load(Landroid/content/Context;Landroid/os/Bundle;Landroid/opengl/GLSurfaceView;)V

    .line 53
    sput-object p0, Lchannel/adapter/GamePipe;->ga:Lmain/GameActivity;

    .line 54
    invoke-static {p0}, Lmain/Utils;->init(Landroid/content/Context;)V

    .line 55
    invoke-static {p0}, Lmain/GameExt;->init(Landroid/app/Activity;)V

    .line 56
    invoke-virtual {p0, p0}, Lmain/GameActivity;->initOpensdk(Lmain/GameActivity;)V

    .line 57
    invoke-virtual {p0, p0}, Lmain/GameActivity;->initListeners(Lmain/GameActivity;)V

    .line 58
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 135
    invoke-static {}, Lcom/aonesoft/lib/AoneSdkProxy;->onDestroy()V

    .line 136
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lchannel/Opensdk;->onActivityDestroy(Z)V

    .line 138
    :cond_0
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 139
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lchannel/Opensdk;->onActivityDestroy(Z)V

    .line 141
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 171
    const/4 v1, 0x4

    if-eq v1, p1, :cond_1

    .line 172
    const/4 v0, 0x0

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 173
    :cond_1
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->hasExitUI()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    invoke-static {}, Lcom/aonesoft/lib/AoneClient;->Exit()V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v1, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    invoke-virtual {v1}, Lchannel/Opensdk;->onBackey()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    :cond_3
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-static {p1}, Lcom/aonesoft/lib/AoneSdkProxy;->onNewIntent(Landroid/content/Intent;)V

    .line 37
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    invoke-virtual {v0, p1}, Lchannel/Opensdk;->onNewIntent(Landroid/content/Intent;)V

    .line 39
    :cond_0
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 115
    invoke-static {}, Lcom/aonesoft/lib/AoneSdkProxy;->onPause()V

    .line 116
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lchannel/Opensdk;->onActivityPause(Z)V

    .line 118
    :cond_0
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 119
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lchannel/Opensdk;->onActivityPause(Z)V

    .line 121
    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 88
    invoke-static {p1, p2, p3}, Lcom/aonesoft/lib/AoneSdkProxy;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 89
    return-void
.end method

.method public onRestart()V
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/aonesoft/lib/AoneSdkProxy;->onRestart()V

    .line 146
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lchannel/Opensdk;->onActivityRestart(Z)V

    .line 148
    :cond_0
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onRestart()V

    .line 149
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lchannel/Opensdk;->onActivityRestart(Z)V

    .line 151
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/aonesoft/lib/AoneSdkProxy;->onResume()V

    .line 94
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lchannel/Opensdk;->onActivityResume(Z)V

    .line 96
    :cond_0
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 97
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lchannel/Opensdk;->onActivityResume(Z)V

    .line 99
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-static {p1}, Lcom/aonesoft/lib/AoneSdkProxy;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 28
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 29
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Lcom/aonesoft/lib/AoneSdkProxy;->onStart()V

    .line 104
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lchannel/Opensdk;->onActivityStart(Z)V

    .line 106
    :cond_0
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    .line 107
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lchannel/Opensdk;->onActivityStart(Z)V

    .line 111
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Lcom/aonesoft/lib/AoneSdkProxy;->onStop()V

    .line 126
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lchannel/Opensdk;->onActivityStop(Z)V

    .line 128
    :cond_0
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    .line 129
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lmain/GameActivity;->opensdk:Lchannel/Opensdk;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lchannel/Opensdk;->onActivityStop(Z)V

    .line 131
    :cond_1
    return-void
.end method
