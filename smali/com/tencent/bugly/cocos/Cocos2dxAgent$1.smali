.class final Lcom/tencent/bugly/cocos/Cocos2dxAgent$1;
.super Ljava/lang/Object;
.source "Cocos2dxAgent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/cocos/Cocos2dxAgent;->delayExit(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 346
    invoke-static {}, Lcom/tencent/bugly/cocos/Cocos2dxAgent;->exitApplication()V

    .line 347
    return-void
.end method
