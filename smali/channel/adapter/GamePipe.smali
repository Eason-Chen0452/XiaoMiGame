.class public Lchannel/adapter/GamePipe;
.super Ljava/lang/Object;
.source "GamePipe.java"


# static fields
.field public static ga:Lmain/GameActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FromGame(Ljava/lang/String;)V
    .locals 1
    .param p0, "params"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-static {}, Lchannel/adapter/GameAdapter;->Inst()Lchannel/adapter/GameAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lchannel/adapter/GameAdapter;->translateListener(Ljava/lang/String;)Z

    .line 76
    return-void
.end method

.method public static InitOver(ILorg/json/JSONObject;)V
    .locals 0
    .param p0, "code"    # I
    .param p1, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 45
    invoke-static {p1}, Lchannel/adapter/GamePipe;->ToGame(Lorg/json/JSONObject;)V

    .line 46
    return-void
.end method

.method public static JsonWithEidAndCode(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 3
    .param p0, "eid"    # Ljava/lang/String;
    .param p1, "code"    # I

    .prologue
    .line 12
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 15
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-object v1

    .line 17
    :catch_0
    move-exception v0

    .line 18
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static LoginOver(ILorg/json/JSONObject;)V
    .locals 0
    .param p0, "code"    # I
    .param p1, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 49
    invoke-static {p1}, Lchannel/adapter/GamePipe;->ToGame(Lorg/json/JSONObject;)V

    .line 50
    return-void
.end method

.method public static PurchaseFailed()V
    .locals 3

    .prologue
    .line 57
    const-string v1, "purchase_callback"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lchannel/adapter/GamePipe;->JsonWithEidAndCode(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    .line 58
    .local v0, "json":Lorg/json/JSONObject;
    invoke-static {v0}, Lchannel/adapter/GamePipe;->ToGame(Lorg/json/JSONObject;)V

    .line 59
    return-void
.end method

.method public static PurchaseOver(ILorg/json/JSONObject;)V
    .locals 0
    .param p0, "code"    # I
    .param p1, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 53
    invoke-static {p1}, Lchannel/adapter/GamePipe;->ToGame(Lorg/json/JSONObject;)V

    .line 54
    return-void
.end method

.method public static PushToGame(Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 36
    sget-object v0, Lchannel/adapter/GamePipe;->ga:Lmain/GameActivity;

    new-instance v1, Lchannel/adapter/GamePipe$2;

    invoke-direct {v1, p0}, Lchannel/adapter/GamePipe$2;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lmain/GameActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method public static PushToGameWithEidAndCode(Ljava/lang/String;I)V
    .locals 4
    .param p0, "eid"    # Ljava/lang/String;
    .param p1, "code"    # I

    .prologue
    .line 25
    move-object v1, p0

    .line 26
    .local v1, "eid_":Ljava/lang/String;
    move v0, p1

    .line 27
    .local v0, "code_":I
    sget-object v2, Lchannel/adapter/GamePipe;->ga:Lmain/GameActivity;

    new-instance v3, Lchannel/adapter/GamePipe$1;

    invoke-direct {v3, v1, v0}, Lchannel/adapter/GamePipe$1;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lmain/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method

.method static native ToGame(Ljava/lang/String;)V
.end method

.method public static ToGame(Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 62
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "PushToGame json don\'t have the key of \'id\'."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v0, Lchannel/adapter/GamePipe;->ga:Lmain/GameActivity;

    new-instance v1, Lchannel/adapter/GamePipe$3;

    invoke-direct {v1, p0}, Lchannel/adapter/GamePipe$3;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lmain/GameActivity;->runOnGLThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
