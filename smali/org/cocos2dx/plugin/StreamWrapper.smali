.class public Lorg/cocos2dx/plugin/StreamWrapper;
.super Ljava/lang/Object;
.source "StreamWrapper.java"


# static fields
.field public static final SEC_FAILED:I = 0x1

.field public static final SEC_SUCCESS:I

.field private static mStreamView:Landroid/view/ViewGroup;

.field private static mTopStreamView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    sput-object v0, Lorg/cocos2dx/plugin/StreamWrapper;->mStreamView:Landroid/view/ViewGroup;

    .line 14
    sput-object v0, Lorg/cocos2dx/plugin/StreamWrapper;->mTopStreamView:Landroid/view/ViewGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-static {p0}, Lorg/cocos2dx/plugin/StreamWrapper;->nativeOnInitCameraFail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-static {p0}, Lorg/cocos2dx/plugin/StreamWrapper;->nativeOnInitMicrophoneFail(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 58
    invoke-static {p0}, Lorg/cocos2dx/plugin/StreamWrapper;->nativeOnCaptureStart(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    invoke-static {p0}, Lorg/cocos2dx/plugin/StreamWrapper;->nativeOnCaptureStop(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    invoke-static {p0, p1}, Lorg/cocos2dx/plugin/StreamWrapper;->nativeOnPublishStart(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 105
    invoke-static {p0, p1}, Lorg/cocos2dx/plugin/StreamWrapper;->nativeOnPublishStop(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$6(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    invoke-static {p0, p1, p2}, Lorg/cocos2dx/plugin/StreamWrapper;->nativeOnPublishDidOffLine(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 137
    invoke-static {p0, p1, p2}, Lorg/cocos2dx/plugin/StreamWrapper;->nativeOnPublishDidLine(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 152
    invoke-static {p0, p1}, Lorg/cocos2dx/plugin/StreamWrapper;->nativeOnVolumeIndication(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    invoke-static {p0, p1, p2}, Lorg/cocos2dx/plugin/StreamWrapper;->nativeOnVideoStreamStatus(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static getStreamView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lorg/cocos2dx/plugin/StreamWrapper;->mStreamView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static getTopStreamView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lorg/cocos2dx/plugin/StreamWrapper;->mTopStreamView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private static native nativeOnCaptureStart(Ljava/lang/String;)V
.end method

.method private static native nativeOnCaptureStop(Ljava/lang/String;)V
.end method

.method private static native nativeOnInitCameraFail(Ljava/lang/String;)V
.end method

.method private static native nativeOnInitMicrophoneFail(Ljava/lang/String;)V
.end method

.method private static native nativeOnPublishDidLine(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native nativeOnPublishDidOffLine(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native nativeOnPublishStart(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeOnPublishStop(Ljava/lang/String;I)V
.end method

.method private static native nativeOnVideoStreamStatus(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native nativeOnVolumeIndication(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static onCaptureStart(Lorg/cocos2dx/plugin/InterfaceStream;)V
    .locals 2
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfaceStream;

    .prologue
    .line 47
    move-object v0, p0

    .line 49
    .local v0, "curAdapter":Lorg/cocos2dx/plugin/InterfaceStream;
    new-instance v1, Lorg/cocos2dx/plugin/StreamWrapper$3;

    invoke-direct {v1, v0}, Lorg/cocos2dx/plugin/StreamWrapper$3;-><init>(Lorg/cocos2dx/plugin/InterfaceStream;)V

    invoke-static {v1}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public static onCaptureStop(Lorg/cocos2dx/plugin/InterfaceStream;)V
    .locals 2
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfaceStream;

    .prologue
    .line 62
    move-object v0, p0

    .line 64
    .local v0, "curAdapter":Lorg/cocos2dx/plugin/InterfaceStream;
    new-instance v1, Lorg/cocos2dx/plugin/StreamWrapper$4;

    invoke-direct {v1, v0}, Lorg/cocos2dx/plugin/StreamWrapper$4;-><init>(Lorg/cocos2dx/plugin/InterfaceStream;)V

    invoke-static {v1}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 72
    return-void
.end method

.method public static onInitCameraFail(Lorg/cocos2dx/plugin/InterfaceStream;)V
    .locals 2
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfaceStream;

    .prologue
    .line 17
    move-object v0, p0

    .line 19
    .local v0, "curAdapter":Lorg/cocos2dx/plugin/InterfaceStream;
    new-instance v1, Lorg/cocos2dx/plugin/StreamWrapper$1;

    invoke-direct {v1, v0}, Lorg/cocos2dx/plugin/StreamWrapper$1;-><init>(Lorg/cocos2dx/plugin/InterfaceStream;)V

    invoke-static {v1}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 27
    return-void
.end method

.method public static onInitMicrophoneFail(Lorg/cocos2dx/plugin/InterfaceStream;)V
    .locals 2
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfaceStream;

    .prologue
    .line 32
    move-object v0, p0

    .line 34
    .local v0, "curAdapter":Lorg/cocos2dx/plugin/InterfaceStream;
    new-instance v1, Lorg/cocos2dx/plugin/StreamWrapper$2;

    invoke-direct {v1, v0}, Lorg/cocos2dx/plugin/StreamWrapper$2;-><init>(Lorg/cocos2dx/plugin/InterfaceStream;)V

    invoke-static {v1}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 42
    return-void
.end method

.method public static onPublishDidLine(Lorg/cocos2dx/plugin/InterfaceStream;ILjava/lang/String;)V
    .locals 4
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfaceStream;
    .param p1, "ret"    # I
    .param p2, "uId"    # Ljava/lang/String;

    .prologue
    .line 124
    move-object v0, p0

    .line 125
    .local v0, "curAdapter":Lorg/cocos2dx/plugin/InterfaceStream;
    move v1, p1

    .line 126
    .local v1, "curRet":I
    move-object v2, p2

    .line 128
    .local v2, "userId":Ljava/lang/String;
    new-instance v3, Lorg/cocos2dx/plugin/StreamWrapper$8;

    invoke-direct {v3, v0, v1, v2}, Lorg/cocos2dx/plugin/StreamWrapper$8;-><init>(Lorg/cocos2dx/plugin/InterfaceStream;ILjava/lang/String;)V

    invoke-static {v3}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 136
    return-void
.end method

.method public static onPublishDidOffLine(Lorg/cocos2dx/plugin/InterfaceStream;ILjava/lang/String;)V
    .locals 4
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfaceStream;
    .param p1, "ret"    # I
    .param p2, "uId"    # Ljava/lang/String;

    .prologue
    .line 108
    move-object v0, p0

    .line 109
    .local v0, "curAdapter":Lorg/cocos2dx/plugin/InterfaceStream;
    move v1, p1

    .line 110
    .local v1, "curRet":I
    move-object v2, p2

    .line 112
    .local v2, "userId":Ljava/lang/String;
    new-instance v3, Lorg/cocos2dx/plugin/StreamWrapper$7;

    invoke-direct {v3, v0, v1, v2}, Lorg/cocos2dx/plugin/StreamWrapper$7;-><init>(Lorg/cocos2dx/plugin/InterfaceStream;ILjava/lang/String;)V

    invoke-static {v3}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public static onPublishStart(Lorg/cocos2dx/plugin/InterfaceStream;Ljava/lang/String;)V
    .locals 3
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfaceStream;
    .param p1, "uId"    # Ljava/lang/String;

    .prologue
    .line 77
    move-object v0, p0

    .line 78
    .local v0, "curAdapter":Lorg/cocos2dx/plugin/InterfaceStream;
    move-object v1, p1

    .line 80
    .local v1, "userId":Ljava/lang/String;
    new-instance v2, Lorg/cocos2dx/plugin/StreamWrapper$5;

    invoke-direct {v2, v0, v1}, Lorg/cocos2dx/plugin/StreamWrapper$5;-><init>(Lorg/cocos2dx/plugin/InterfaceStream;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public static onPublishStop(Lorg/cocos2dx/plugin/InterfaceStream;I)V
    .locals 3
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfaceStream;
    .param p1, "ret"    # I

    .prologue
    .line 93
    move-object v0, p0

    .line 94
    .local v0, "curAdapter":Lorg/cocos2dx/plugin/InterfaceStream;
    move v1, p1

    .line 96
    .local v1, "curRet":I
    new-instance v2, Lorg/cocos2dx/plugin/StreamWrapper$6;

    invoke-direct {v2, v0, v1}, Lorg/cocos2dx/plugin/StreamWrapper$6;-><init>(Lorg/cocos2dx/plugin/InterfaceStream;I)V

    invoke-static {v2}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 104
    return-void
.end method

.method public static onVideoStreamStatus(Lorg/cocos2dx/plugin/InterfaceStream;ILjava/lang/String;)V
    .locals 4
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfaceStream;
    .param p1, "ret"    # I
    .param p2, "uId"    # Ljava/lang/String;

    .prologue
    .line 155
    move-object v0, p0

    .line 156
    .local v0, "curAdapter":Lorg/cocos2dx/plugin/InterfaceStream;
    move v1, p1

    .line 157
    .local v1, "curRet":I
    move-object v2, p2

    .line 159
    .local v2, "userId":Ljava/lang/String;
    new-instance v3, Lorg/cocos2dx/plugin/StreamWrapper$10;

    invoke-direct {v3, v0, v1, v2}, Lorg/cocos2dx/plugin/StreamWrapper$10;-><init>(Lorg/cocos2dx/plugin/InterfaceStream;ILjava/lang/String;)V

    invoke-static {v3}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 169
    return-void
.end method

.method public static onVolumeIndication(Lorg/cocos2dx/plugin/InterfaceStream;Ljava/lang/String;)V
    .locals 3
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfaceStream;
    .param p1, "uId"    # Ljava/lang/String;

    .prologue
    .line 140
    move-object v0, p0

    .line 141
    .local v0, "curAdapter":Lorg/cocos2dx/plugin/InterfaceStream;
    move-object v1, p1

    .line 143
    .local v1, "userId":Ljava/lang/String;
    new-instance v2, Lorg/cocos2dx/plugin/StreamWrapper$9;

    invoke-direct {v2, v0, v1}, Lorg/cocos2dx/plugin/StreamWrapper$9;-><init>(Lorg/cocos2dx/plugin/InterfaceStream;Ljava/lang/String;)V

    invoke-static {v2}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method

.method public static setStreamView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "streamView"    # Landroid/view/ViewGroup;

    .prologue
    .line 173
    sput-object p0, Lorg/cocos2dx/plugin/StreamWrapper;->mStreamView:Landroid/view/ViewGroup;

    .line 174
    return-void
.end method

.method public static setTopStreamView(Landroid/view/ViewGroup;)V
    .locals 0
    .param p0, "topView"    # Landroid/view/ViewGroup;

    .prologue
    .line 181
    sput-object p0, Lorg/cocos2dx/plugin/StreamWrapper;->mTopStreamView:Landroid/view/ViewGroup;

    .line 182
    return-void
.end method
