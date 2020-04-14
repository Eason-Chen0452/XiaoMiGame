.class public Lorg/cocos2dx/plugin/ActivityEventListener;
.super Ljava/lang/Object;
.source "ActivityEventListener.java"


# instance fields
.field private listenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/cocos2dx/plugin/ActivityEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    .line 20
    return-void
.end method


# virtual methods
.method public addListener(Lorg/cocos2dx/plugin/ActivityEventListener;)V
    .locals 1
    .param p1, "newListener"    # Lorg/cocos2dx/plugin/ActivityEventListener;

    .prologue
    .line 156
    iget-object v0, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    .line 147
    iget-object v2, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 148
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cocos2dx/plugin/ActivityEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    return-void

    .line 149
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    .line 150
    .local v0, "curListener":Lorg/cocos2dx/plugin/ActivityEventListener;
    invoke-virtual {v0, p1}, Lorg/cocos2dx/plugin/ActivityEventListener;->attachBaseContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onActivityCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    iget-object v2, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 24
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cocos2dx/plugin/ActivityEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    return-void

    .line 25
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    .line 26
    .local v0, "curListener":Lorg/cocos2dx/plugin/ActivityEventListener;
    invoke-virtual {v0, p1}, Lorg/cocos2dx/plugin/ActivityEventListener;->onActivityCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onActivityDestroy()V
    .locals 3

    .prologue
    .line 71
    iget-object v2, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 72
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cocos2dx/plugin/ActivityEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 76
    return-void

    .line 73
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    .line 74
    .local v0, "curListener":Lorg/cocos2dx/plugin/ActivityEventListener;
    invoke-virtual {v0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onActivityDestroy()V

    goto :goto_0
.end method

.method public onActivityPause()V
    .locals 3

    .prologue
    .line 55
    iget-object v2, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 56
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cocos2dx/plugin/ActivityEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    return-void

    .line 57
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    .line 58
    .local v0, "curListener":Lorg/cocos2dx/plugin/ActivityEventListener;
    invoke-virtual {v0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onActivityPause()V

    goto :goto_0
.end method

.method public onActivityRestart()V
    .locals 3

    .prologue
    .line 39
    iget-object v2, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 40
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cocos2dx/plugin/ActivityEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    return-void

    .line 41
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    .line 42
    .local v0, "curListener":Lorg/cocos2dx/plugin/ActivityEventListener;
    invoke-virtual {v0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onActivityRestart()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 79
    iget-object v2, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 80
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cocos2dx/plugin/ActivityEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    return-void

    .line 81
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    .line 82
    .local v0, "curListener":Lorg/cocos2dx/plugin/ActivityEventListener;
    invoke-virtual {v0, p1, p2, p3}, Lorg/cocos2dx/plugin/ActivityEventListener;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onActivityResume()V
    .locals 3

    .prologue
    .line 47
    iget-object v2, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 48
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cocos2dx/plugin/ActivityEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    return-void

    .line 49
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    .line 50
    .local v0, "curListener":Lorg/cocos2dx/plugin/ActivityEventListener;
    invoke-virtual {v0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onActivityResume()V

    goto :goto_0
.end method

.method public onActivityStart()V
    .locals 3

    .prologue
    .line 31
    iget-object v2, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 32
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cocos2dx/plugin/ActivityEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    return-void

    .line 33
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    .line 34
    .local v0, "curListener":Lorg/cocos2dx/plugin/ActivityEventListener;
    invoke-virtual {v0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onActivityStart()V

    goto :goto_0
.end method

.method public onActivityStop()V
    .locals 3

    .prologue
    .line 63
    iget-object v2, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 64
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cocos2dx/plugin/ActivityEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    return-void

    .line 65
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    .line 66
    .local v0, "curListener":Lorg/cocos2dx/plugin/ActivityEventListener;
    invoke-virtual {v0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onActivityStop()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 115
    iget-object v2, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 116
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cocos2dx/plugin/ActivityEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    return-void

    .line 117
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    .line 118
    .local v0, "curListener":Lorg/cocos2dx/plugin/ActivityEventListener;
    invoke-virtual {v0}, Lorg/cocos2dx/plugin/ActivityEventListener;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 131
    iget-object v2, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 132
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cocos2dx/plugin/ActivityEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    return-void

    .line 133
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    .line 134
    .local v0, "curListener":Lorg/cocos2dx/plugin/ActivityEventListener;
    invoke-virtual {v0, p1}, Lorg/cocos2dx/plugin/ActivityEventListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 103
    const/4 v2, 0x0

    .line 105
    .local v2, "result":Z
    iget-object v3, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 106
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cocos2dx/plugin/ActivityEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    return v2

    .line 107
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    .line 108
    .local v0, "curListener":Lorg/cocos2dx/plugin/ActivityEventListener;
    invoke-virtual {v0, p1, p2}, Lorg/cocos2dx/plugin/ActivityEventListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    iget-object v2, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 96
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cocos2dx/plugin/ActivityEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    return-void

    .line 97
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    .line 98
    .local v0, "curListener":Lorg/cocos2dx/plugin/ActivityEventListener;
    invoke-virtual {v0, p1}, Lorg/cocos2dx/plugin/ActivityEventListener;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 139
    iget-object v2, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 140
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cocos2dx/plugin/ActivityEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    return-void

    .line 141
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    .line 142
    .local v0, "curListener":Lorg/cocos2dx/plugin/ActivityEventListener;
    invoke-virtual {v0, p1, p2, p3}, Lorg/cocos2dx/plugin/ActivityEventListener;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    iget-object v2, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 88
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cocos2dx/plugin/ActivityEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    return-void

    .line 89
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    .line 90
    .local v0, "curListener":Lorg/cocos2dx/plugin/ActivityEventListener;
    invoke-virtual {v0, p1}, Lorg/cocos2dx/plugin/ActivityEventListener;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 123
    iget-object v2, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 124
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/cocos2dx/plugin/ActivityEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    return-void

    .line 125
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2dx/plugin/ActivityEventListener;

    .line 126
    .local v0, "curListener":Lorg/cocos2dx/plugin/ActivityEventListener;
    invoke-virtual {v0, p1}, Lorg/cocos2dx/plugin/ActivityEventListener;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

.method public removeListener(Lorg/cocos2dx/plugin/ActivityEventListener;)V
    .locals 1
    .param p1, "removedListener"    # Lorg/cocos2dx/plugin/ActivityEventListener;

    .prologue
    .line 161
    iget-object v0, p0, Lorg/cocos2dx/plugin/ActivityEventListener;->listenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method
