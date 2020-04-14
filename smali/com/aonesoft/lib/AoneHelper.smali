.class public Lcom/aonesoft/lib/AoneHelper;
.super Ljava/lang/Object;
.source "AoneHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlayerView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lorg/cocos2dx/plugin/PlayerWrapper;->getPlayerView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public static getStreamView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lorg/cocos2dx/plugin/StreamWrapper;->getStreamView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public static getTopStreamView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lorg/cocos2dx/plugin/StreamWrapper;->getTopStreamView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    return-void
.end method

.method public static setPlayerView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "playerView"    # Landroid/view/ViewGroup;

    .prologue
    .line 25
    invoke-static {p0}, Lorg/cocos2dx/plugin/PlayerWrapper;->setPlayerView(Landroid/view/ViewGroup;)V

    .line 26
    return-void
.end method

.method public static setStreamView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "streamView"    # Landroid/view/ViewGroup;

    .prologue
    .line 17
    invoke-static {p0}, Lorg/cocos2dx/plugin/StreamWrapper;->setStreamView(Landroid/view/ViewGroup;)V

    .line 18
    return-void
.end method

.method public static setTopStreamView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "topStreamView"    # Landroid/view/ViewGroup;

    .prologue
    .line 21
    invoke-static {p0}, Lorg/cocos2dx/plugin/StreamWrapper;->setTopStreamView(Landroid/view/ViewGroup;)V

    .line 22
    return-void
.end method
