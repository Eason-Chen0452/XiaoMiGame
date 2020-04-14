.class public Lchannel/SSWrapper;
.super Lchannel/Opensdk;
.source "SSWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchannel/SSWrapper$PurchaseDialogListener;,
        Lchannel/SSWrapper$initCallback;
    }
.end annotation


# static fields
.field protected static LANG:Ljava/lang/String;


# instance fields
.field protected activity_:Landroid/app/Activity;

.field protected atvt:Landroid/app/Activity;

.field protected gmadptr:Lchannel/adapter/GameAdapter;

.field protected initListener:Lchannel/SSWrapper$initCallback;

.field protected purchaseListener:Lchannel/SSWrapper$PurchaseDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lchannel/SSWrapper;->LANG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lchannel/Opensdk;-><init>()V

    .line 261
    new-instance v0, Lchannel/SSWrapper$15;

    invoke-direct {v0, p0}, Lchannel/SSWrapper$15;-><init>(Lchannel/SSWrapper;)V

    iput-object v0, p0, Lchannel/SSWrapper;->initListener:Lchannel/SSWrapper$initCallback;

    .line 270
    new-instance v0, Lchannel/SSWrapper$16;

    invoke-direct {v0, p0}, Lchannel/SSWrapper$16;-><init>(Lchannel/SSWrapper;)V

    iput-object v0, p0, Lchannel/SSWrapper;->purchaseListener:Lchannel/SSWrapper$PurchaseDialogListener;

    .line 26
    return-void
.end method


# virtual methods
.method public onActivityCreate(Landroid/app/Activity;)V
    .locals 1
    .param p1, "atvt"    # Landroid/app/Activity;

    .prologue
    .line 29
    iput-object p1, p0, Lchannel/SSWrapper;->activity_:Landroid/app/Activity;

    .line 30
    iput-object p1, p0, Lchannel/SSWrapper;->atvt:Landroid/app/Activity;

    .line 32
    invoke-static {}, Lchannel/adapter/GameAdapter;->Inst()Lchannel/adapter/GameAdapter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lchannel/SSWrapper;->registerListeners(Lchannel/adapter/GameAdapter;)V

    .line 41
    return-void
.end method

.method public onActivityDestroy(Z)V
    .locals 2
    .param p1, "before"    # Z

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    iget-object v0, p0, Lchannel/SSWrapper;->activity_:Landroid/app/Activity;

    new-instance v1, Lchannel/SSWrapper$4;

    invoke-direct {v1, p0}, Lchannel/SSWrapper$4;-><init>(Lchannel/SSWrapper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onActivityPause(Z)V
    .locals 2
    .param p1, "before"    # Z

    .prologue
    .line 58
    if-nez p1, :cond_0

    .line 59
    iget-object v0, p0, Lchannel/SSWrapper;->activity_:Landroid/app/Activity;

    new-instance v1, Lchannel/SSWrapper$2;

    invoke-direct {v1, p0}, Lchannel/SSWrapper$2;-><init>(Lchannel/SSWrapper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onActivityRestart(Z)V
    .locals 2
    .param p1, "before"    # Z

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    iget-object v0, p0, Lchannel/SSWrapper;->activity_:Landroid/app/Activity;

    new-instance v1, Lchannel/SSWrapper$5;

    invoke-direct {v1, p0}, Lchannel/SSWrapper$5;-><init>(Lchannel/SSWrapper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 95
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 98
    return-void
.end method

.method public onActivityResume(Z)V
    .locals 2
    .param p1, "before"    # Z

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lchannel/SSWrapper;->activity_:Landroid/app/Activity;

    new-instance v1, Lchannel/SSWrapper$1;

    invoke-direct {v1, p0}, Lchannel/SSWrapper$1;-><init>(Lchannel/SSWrapper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 55
    :cond_0
    return-void
.end method

.method public onActivityStart(Z)V
    .locals 0
    .param p1, "before"    # Z

    .prologue
    .line 45
    return-void
.end method

.method public onActivityStop(Z)V
    .locals 2
    .param p1, "before"    # Z

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lchannel/SSWrapper;->activity_:Landroid/app/Activity;

    new-instance v1, Lchannel/SSWrapper$3;

    invoke-direct {v1, p0}, Lchannel/SSWrapper$3;-><init>(Lchannel/SSWrapper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 75
    :cond_0
    return-void
.end method

.method public onBackey()Z
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lchannel/SSWrapper;->activity_:Landroid/app/Activity;

    new-instance v1, Lchannel/SSWrapper$14;

    invoke-direct {v1, p0}, Lchannel/SSWrapper$14;-><init>(Lchannel/SSWrapper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateRole(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 332
    return-void
.end method

.method protected onEnterServer(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 324
    return-void
.end method

.method public onExit()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lchannel/SSWrapper;->atvt:Landroid/app/Activity;

    check-cast v0, Lmain/GameActivity;

    invoke-virtual {v0}, Lmain/GameActivity;->finish()V

    .line 103
    iget-object v0, p0, Lchannel/SSWrapper;->atvt:Landroid/app/Activity;

    check-cast v0, Lmain/GameActivity;

    invoke-virtual {v0}, Lmain/GameActivity;->onDestroy()V

    .line 104
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 105
    return-void
.end method

.method public onExitDialogCanceled()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public onExitDialogConfirmed()V
    .locals 0

    .prologue
    .line 254
    invoke-virtual {p0}, Lchannel/SSWrapper;->onExit()V

    .line 255
    return-void
.end method

.method protected onLogin()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 301
    return-void
.end method

.method protected onPlayVideos()V
    .locals 0

    .prologue
    .line 338
    return-void
.end method

.method protected onPurchase(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 328
    return-void
.end method

.method protected onRoleLevelUp(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 335
    return-void
.end method

.method protected registerListeners(Lchannel/adapter/GameAdapter;)V
    .locals 3
    .param p1, "adapter"    # Lchannel/adapter/GameAdapter;

    .prologue
    .line 108
    iput-object p1, p0, Lchannel/SSWrapper;->gmadptr:Lchannel/adapter/GameAdapter;

    .line 109
    iget-object v0, p0, Lchannel/SSWrapper;->gmadptr:Lchannel/adapter/GameAdapter;

    const-string v1, "init_lang"

    new-instance v2, Lchannel/SSWrapper$6;

    invoke-direct {v2, p0}, Lchannel/SSWrapper$6;-><init>(Lchannel/SSWrapper;)V

    invoke-virtual {v0, v1, v2}, Lchannel/adapter/GameAdapter;->registerListener(Ljava/lang/String;Lchannel/adapter/IGameListener;)Z

    .line 126
    iget-object v0, p0, Lchannel/SSWrapper;->gmadptr:Lchannel/adapter/GameAdapter;

    const-string v1, "login"

    new-instance v2, Lchannel/SSWrapper$7;

    invoke-direct {v2, p0}, Lchannel/SSWrapper$7;-><init>(Lchannel/SSWrapper;)V

    invoke-virtual {v0, v1, v2}, Lchannel/adapter/GameAdapter;->registerListener(Ljava/lang/String;Lchannel/adapter/IGameListener;)Z

    .line 138
    iget-object v0, p0, Lchannel/SSWrapper;->gmadptr:Lchannel/adapter/GameAdapter;

    const-string v1, "stt-createrole"

    new-instance v2, Lchannel/SSWrapper$8;

    invoke-direct {v2, p0}, Lchannel/SSWrapper$8;-><init>(Lchannel/SSWrapper;)V

    invoke-virtual {v0, v1, v2}, Lchannel/adapter/GameAdapter;->registerListener(Ljava/lang/String;Lchannel/adapter/IGameListener;)Z

    .line 151
    iget-object v0, p0, Lchannel/SSWrapper;->gmadptr:Lchannel/adapter/GameAdapter;

    const-string v1, "stt-rolelevelup"

    new-instance v2, Lchannel/SSWrapper$9;

    invoke-direct {v2, p0}, Lchannel/SSWrapper$9;-><init>(Lchannel/SSWrapper;)V

    invoke-virtual {v0, v1, v2}, Lchannel/adapter/GameAdapter;->registerListener(Ljava/lang/String;Lchannel/adapter/IGameListener;)Z

    .line 164
    iget-object v0, p0, Lchannel/SSWrapper;->gmadptr:Lchannel/adapter/GameAdapter;

    const-string v1, "enterserver"

    new-instance v2, Lchannel/SSWrapper$10;

    invoke-direct {v2, p0}, Lchannel/SSWrapper$10;-><init>(Lchannel/SSWrapper;)V

    invoke-virtual {v0, v1, v2}, Lchannel/adapter/GameAdapter;->registerListener(Ljava/lang/String;Lchannel/adapter/IGameListener;)Z

    .line 177
    iget-object v0, p0, Lchannel/SSWrapper;->gmadptr:Lchannel/adapter/GameAdapter;

    const-string v1, "purchase"

    new-instance v2, Lchannel/SSWrapper$11;

    invoke-direct {v2, p0}, Lchannel/SSWrapper$11;-><init>(Lchannel/SSWrapper;)V

    invoke-virtual {v0, v1, v2}, Lchannel/adapter/GameAdapter;->registerListener(Ljava/lang/String;Lchannel/adapter/IGameListener;)Z

    .line 190
    iget-object v0, p0, Lchannel/SSWrapper;->gmadptr:Lchannel/adapter/GameAdapter;

    const-string v1, "usercenter"

    new-instance v2, Lchannel/SSWrapper$12;

    invoke-direct {v2, p0}, Lchannel/SSWrapper$12;-><init>(Lchannel/SSWrapper;)V

    invoke-virtual {v0, v1, v2}, Lchannel/adapter/GameAdapter;->registerListener(Ljava/lang/String;Lchannel/adapter/IGameListener;)Z

    .line 201
    iget-object v0, p0, Lchannel/SSWrapper;->gmadptr:Lchannel/adapter/GameAdapter;

    const-string v1, "MP4"

    new-instance v2, Lchannel/SSWrapper$13;

    invoke-direct {v2, p0}, Lchannel/SSWrapper$13;-><init>(Lchannel/SSWrapper;)V

    invoke-virtual {v0, v1, v2}, Lchannel/adapter/GameAdapter;->registerListener(Ljava/lang/String;Lchannel/adapter/IGameListener;)Z

    .line 212
    return-void
.end method

.method protected tgInitCallback(ILorg/json/JSONObject;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 217
    :try_start_0
    const-string v1, "freespace"

    invoke-static {}, Lmain/Utils;->getAvailableSpace()J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 218
    const-string v1, "memory"

    invoke-static {}, Lmain/Utils;->getTotalMemory()D

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    invoke-static {p2}, Lchannel/adapter/GamePipe;->PushToGame(Lorg/json/JSONObject;)V

    .line 224
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected tgLoginCallback(ILorg/json/JSONObject;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 305
    invoke-static {p2}, Lchannel/adapter/GamePipe;->PushToGame(Lorg/json/JSONObject;)V

    .line 306
    return-void
.end method

.method protected tgLogoutFromApp()V
    .locals 2

    .prologue
    .line 315
    const-string v0, "logout_callback"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lchannel/adapter/GamePipe;->PushToGameWithEidAndCode(Ljava/lang/String;I)V

    .line 316
    return-void
.end method

.method protected tgPurchaseCallback(ILorg/json/JSONObject;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 310
    invoke-static {p2}, Lchannel/adapter/GamePipe;->PushToGame(Lorg/json/JSONObject;)V

    .line 311
    return-void
.end method
