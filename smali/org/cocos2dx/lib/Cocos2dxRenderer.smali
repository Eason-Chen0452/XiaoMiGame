.class public Lorg/cocos2dx/lib/Cocos2dxRenderer;
.super Ljava/lang/Object;
.source "Cocos2dxRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final NANOSECONDSPERMICROSECOND:J = 0xf4240L

.field private static final NANOSECONDSPERSECOND:J = 0x3b9aca00L

.field private static sAnimationInterval:J


# instance fields
.field private mLastTickInNanoSeconds:J

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private nativeinited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-wide/32 v0, 0xfe502a

    sput-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeinited:Z

    return-void
.end method

.method private static native nativeDeleteBackward()V
.end method

.method private static native nativeGetContentText()Ljava/lang/String;
.end method

.method private static native nativeInit(II)V
.end method

.method private static native nativeInsertText(Ljava/lang/String;)V
.end method

.method private static native nativeKeyDown(I)Z
.end method

.method private static native nativeOnPause()V
.end method

.method private static native nativeOnResume()V
.end method

.method private static native nativeOnSurfaceChanged(II)V
.end method

.method private static native nativeRender()V
.end method

.method private static native nativeTouchesBegin(IFF)V
.end method

.method private static native nativeTouchesCancel([I[F[F)V
.end method

.method private static native nativeTouchesEnd(IFF)V
.end method

.method private static native nativeTouchesMove([I[F[F)V
.end method

.method public static setAnimationInterval(D)V
    .locals 2
    .param p0, "pAnimationInterval"    # D

    .prologue
    .line 60
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, p0

    double-to-long v0, v0

    sput-wide v0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->sAnimationInterval:J

    .line 61
    return-void
.end method


# virtual methods
.method public getContentText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeGetContentText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleActionCancel([I[F[F)V
    .locals 0
    .param p1, "pIDs"    # [I
    .param p2, "pXs"    # [F
    .param p3, "pYs"    # [F

    .prologue
    .line 138
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesCancel([I[F[F)V

    .line 139
    return-void
.end method

.method public handleActionDown(IFF)V
    .locals 0
    .param p1, "pID"    # I
    .param p2, "pX"    # F
    .param p3, "pY"    # F

    .prologue
    .line 130
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesBegin(IFF)V

    .line 131
    return-void
.end method

.method public handleActionMove([I[F[F)V
    .locals 0
    .param p1, "pIDs"    # [I
    .param p2, "pXs"    # [F
    .param p3, "pYs"    # [F

    .prologue
    .line 142
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesMove([I[F[F)V

    .line 143
    return-void
.end method

.method public handleActionUp(IFF)V
    .locals 0
    .param p1, "pID"    # I
    .param p2, "pX"    # F
    .param p3, "pY"    # F

    .prologue
    .line 134
    invoke-static {p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeTouchesEnd(IFF)V

    .line 135
    return-void
.end method

.method public handleDeleteBackward()V
    .locals 0

    .prologue
    .line 170
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeDeleteBackward()V

    .line 171
    return-void
.end method

.method public handleInsertText(Ljava/lang/String;)V
    .locals 0
    .param p1, "pText"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInsertText(Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public handleKeyDown(I)V
    .locals 0
    .param p1, "pKeyCode"    # I

    .prologue
    .line 146
    invoke-static {p1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeKeyDown(I)Z

    .line 147
    return-void
.end method

.method public handleOnPause()V
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onEnterBackground()V

    .line 151
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeinited:Z

    if-eqz v0, :cond_0

    .line 152
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnPause()V

    .line 153
    :cond_0
    return-void
.end method

.method public handleOnResume()V
    .locals 1

    .prologue
    .line 156
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxHelper;->onEnterForeground()V

    .line 157
    iget-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeinited:Z

    if-eqz v0, :cond_0

    .line 158
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnResume()V

    .line 159
    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 98
    invoke-static {}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeRender()V

    .line 112
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0
    .param p1, "pGL10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pWidth"    # I
    .param p3, "pHeight"    # I

    .prologue
    .line 81
    invoke-static {p2, p3}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeOnSurfaceChanged(II)V

    .line 82
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "pGL10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "pEGLConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 74
    iget v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenWidth:I

    iget v1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenHeight:I

    invoke-static {v0, v1}, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeInit(II)V

    .line 75
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mLastTickInNanoSeconds:J

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->nativeinited:Z

    .line 77
    return-void
.end method

.method public setScreenWidthAndHeight(II)V
    .locals 0
    .param p1, "pSurfaceWidth"    # I
    .param p2, "pSurfaceHeight"    # I

    .prologue
    .line 64
    iput p1, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenWidth:I

    .line 65
    iput p2, p0, Lorg/cocos2dx/lib/Cocos2dxRenderer;->mScreenHeight:I

    .line 66
    return-void
.end method
