.class final Lmain/GameExt$2;
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
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Lorg/json/JSONObject;

    .prologue
    .line 56
    sget-object v0, Lmain/GameExt;->activity_:Lorg/cocos2dx/lib/Cocos2dxActivity;

    new-instance v1, Lmain/GameExt$2$1;

    invoke-direct {v1, p0}, Lmain/GameExt$2$1;-><init>(Lmain/GameExt$2;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method
