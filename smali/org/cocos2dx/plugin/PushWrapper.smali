.class public Lorg/cocos2dx/plugin/PushWrapper;
.super Ljava/lang/Object;
.source "PushWrapper.java"


# static fields
.field public static final PUSH_RET_FAIL:I = 0x1

.field public static final PUSH_RET_SUCCESS:I = 0x0

.field public static final PUSH_RET_TIMEOUT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-static {p0, p1, p2}, Lorg/cocos2dx/plugin/PushWrapper;->nativeOnPushResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private static native nativeOnPushResult(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public static onPushResult(Lorg/cocos2dx/plugin/InterfacePush;ILjava/lang/String;)V
    .locals 4
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfacePush;
    .param p1, "ret"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 9
    move v2, p1

    .line 10
    .local v2, "curRet":I
    move-object v1, p2

    .line 11
    .local v1, "curMsg":Ljava/lang/String;
    move-object v0, p0

    .line 12
    .local v0, "curAdapter":Lorg/cocos2dx/plugin/InterfacePush;
    new-instance v3, Lorg/cocos2dx/plugin/PushWrapper$1;

    invoke-direct {v3, v0, v2, v1}, Lorg/cocos2dx/plugin/PushWrapper$1;-><init>(Lorg/cocos2dx/plugin/InterfacePush;ILjava/lang/String;)V

    invoke-static {v3}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 20
    return-void
.end method
