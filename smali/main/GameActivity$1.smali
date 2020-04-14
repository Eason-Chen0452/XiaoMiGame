.class Lmain/GameActivity$1;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Lchannel/adapter/IGameListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmain/GameActivity;->initListeners(Lmain/GameActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmain/GameActivity;


# direct methods
.method constructor <init>(Lmain/GameActivity;)V
    .locals 0
    .param p1, "this$0"    # Lmain/GameActivity;

    .prologue
    .line 67
    iput-object p1, p0, Lmain/GameActivity$1;->this$0:Lmain/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Lorg/json/JSONObject;

    .prologue
    .line 70
    const-string v4, "open"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 71
    .local v0, "open":Z
    if-eqz v0, :cond_0

    .line 72
    const-string v4, "portal_url"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "portal_url":Ljava/lang/String;
    const-string v4, "portal_w"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 74
    .local v3, "portal_w":I
    const-string v4, "portal_h"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    .local v1, "portal_h":I
    invoke-static {v2, v3, v1}, Lmain/GameExt;->showNewsView(Ljava/lang/String;II)V

    .line 79
    .end local v1    # "portal_h":I
    .end local v2    # "portal_url":Ljava/lang/String;
    .end local v3    # "portal_w":I
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-static {}, Lmain/GameExt;->hideNewsView()V

    goto :goto_0
.end method
