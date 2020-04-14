.class public Lorg/cocos2dx/plugin/PlayerWrapper;
.super Ljava/lang/Object;
.source "PlayerWrapper.java"


# static fields
.field public static final PEC_FAILED:I = 0x1

.field public static final PEC_SUCCESS:I

.field private static mPlayerView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2dx/plugin/PlayerWrapper;->mPlayerView:Landroid/view/ViewGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-static {p0}, Lorg/cocos2dx/plugin/PlayerWrapper;->nativeOnPlayerStart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 39
    invoke-static {p0, p1}, Lorg/cocos2dx/plugin/PlayerWrapper;->nativeOnPlayerStop(Ljava/lang/String;I)V

    return-void
.end method

.method public static getPlayerView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lorg/cocos2dx/plugin/PlayerWrapper;->mPlayerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private static native nativeOnPlayerStart(Ljava/lang/String;)V
.end method

.method private static native nativeOnPlayerStop(Ljava/lang/String;I)V
.end method

.method public static onPlayerStart(Lorg/cocos2dx/plugin/InterfacePlayer;)V
    .locals 2
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfacePlayer;

    .prologue
    .line 12
    move-object v0, p0

    .line 14
    .local v0, "curAdapter":Lorg/cocos2dx/plugin/InterfacePlayer;
    new-instance v1, Lorg/cocos2dx/plugin/PlayerWrapper$1;

    invoke-direct {v1, v0}, Lorg/cocos2dx/plugin/PlayerWrapper$1;-><init>(Lorg/cocos2dx/plugin/InterfacePlayer;)V

    invoke-static {v1}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 22
    return-void
.end method

.method public static onPlayerStop(Lorg/cocos2dx/plugin/InterfacePlayer;I)V
    .locals 3
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfacePlayer;
    .param p1, "code"    # I

    .prologue
    .line 27
    move-object v0, p0

    .line 28
    .local v0, "curAdapter":Lorg/cocos2dx/plugin/InterfacePlayer;
    move v1, p1

    .line 30
    .local v1, "curRet":I
    new-instance v2, Lorg/cocos2dx/plugin/PlayerWrapper$2;

    invoke-direct {v2, v0, v1}, Lorg/cocos2dx/plugin/PlayerWrapper$2;-><init>(Lorg/cocos2dx/plugin/InterfacePlayer;I)V

    invoke-static {v2}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 38
    return-void
.end method

.method public static setPlayerView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "playerView"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    sput-object p0, Lorg/cocos2dx/plugin/PlayerWrapper;->mPlayerView:Landroid/view/ViewGroup;

    .line 43
    return-void
.end method
