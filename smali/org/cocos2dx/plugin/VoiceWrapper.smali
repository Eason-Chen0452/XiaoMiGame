.class public Lorg/cocos2dx/plugin/VoiceWrapper;
.super Ljava/lang/Object;
.source "VoiceWrapper.java"


# static fields
.field public static final VEC_FAILED:I = 0x1

.field public static final VEC_SUCCESS:I = 0x0

.field public static final VET_INIT:I = 0x0

.field public static final VET_START:I = 0x1

.field public static final VET_STOP:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Lorg/cocos2dx/plugin/VoiceWrapper;->nativeOnVoiceEvent(Ljava/lang/String;II)V

    return-void
.end method

.method private static native nativeOnVoiceEvent(Ljava/lang/String;II)V
.end method

.method public static onVoiceEvent(Lorg/cocos2dx/plugin/InterfaceVoice;II)V
    .locals 4
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfaceVoice;
    .param p1, "type"    # I
    .param p2, "errCode"    # I

    .prologue
    .line 13
    move-object v1, p0

    .line 14
    .local v1, "curAdapter":Lorg/cocos2dx/plugin/InterfaceVoice;
    move v2, p1

    .line 15
    .local v2, "curType":I
    move v0, p2

    .line 17
    .local v0, "code":I
    new-instance v3, Lorg/cocos2dx/plugin/VoiceWrapper$1;

    invoke-direct {v3, v1, v2, v0}, Lorg/cocos2dx/plugin/VoiceWrapper$1;-><init>(Lorg/cocos2dx/plugin/InterfaceVoice;II)V

    invoke-static {v3}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 25
    return-void
.end method
