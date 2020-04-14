.class public Lorg/cocos2dx/plugin/UserWrapper;
.super Ljava/lang/Object;
.source "UserWrapper.java"


# static fields
.field public static final ACTION_RET_LOGIN_CANCEL:I = 0x2

.field public static final ACTION_RET_LOGIN_FAILED:I = 0x1

.field public static final ACTION_RET_LOGIN_SUCCEED:I = 0x0

.field public static final ACTION_RET_LOGOUT_SUCCEED:I = 0x3

.field public static final ACTION_RET_REQUEST_SUCCEED:I = 0x4

.field public static final ACTION_RET_SWITCHACCOUNT_SUCCEED:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Lorg/cocos2dx/plugin/UserWrapper;->nativeOnActionResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static native nativeOnActionResult(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static onActionResult(Lorg/cocos2dx/plugin/InterfaceUser;ILjava/lang/String;)V
    .locals 4
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfaceUser;
    .param p1, "ret"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 35
    move v2, p1

    .line 36
    .local v2, "curRet":I
    move-object v1, p2

    .line 37
    .local v1, "curMsg":Ljava/lang/String;
    move-object v0, p0

    .line 38
    .local v0, "curAdapter":Lorg/cocos2dx/plugin/InterfaceUser;
    new-instance v3, Lorg/cocos2dx/plugin/UserWrapper$1;

    invoke-direct {v3, v0, v2, v1}, Lorg/cocos2dx/plugin/UserWrapper$1;-><init>(Lorg/cocos2dx/plugin/InterfaceUser;ILjava/lang/String;)V

    invoke-static {v3}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method
