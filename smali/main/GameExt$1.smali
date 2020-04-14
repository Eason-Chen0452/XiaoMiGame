.class final Lmain/GameExt$1;
.super Ljava/lang/Object;
.source "GameExt.java"

# interfaces
.implements Lchannel/adapter/IGameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmain/GameExt;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Lorg/json/JSONObject;

    .prologue
    .line 39
    :try_start_0
    const-string v2, "url"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "url":Ljava/lang/String;
    sget-object v2, Lmain/GameExt;->activity_:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v3, Lmain/GameExt$1$1;

    invoke-direct {v3, p0, v1}, Lmain/GameExt$1$1;-><init>(Lmain/GameExt$1;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
