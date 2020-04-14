.class Lorg/cocos2dx/plugin/UserMi$MiActivityEventListener;
.super Lorg/cocos2dx/plugin/ActivityEventListener;
.source "UserMi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2dx/plugin/UserMi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiActivityEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/plugin/UserMi;


# direct methods
.method private constructor <init>(Lorg/cocos2dx/plugin/UserMi;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lorg/cocos2dx/plugin/UserMi$MiActivityEventListener;->this$0:Lorg/cocos2dx/plugin/UserMi;

    invoke-direct {p0}, Lorg/cocos2dx/plugin/ActivityEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/cocos2dx/plugin/UserMi;Lorg/cocos2dx/plugin/UserMi$MiActivityEventListener;)V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lorg/cocos2dx/plugin/UserMi$MiActivityEventListener;-><init>(Lorg/cocos2dx/plugin/UserMi;)V

    return-void
.end method


# virtual methods
.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/cocos2dx/plugin/UserMi$MiActivityEventListener;->this$0:Lorg/cocos2dx/plugin/UserMi;

    invoke-static {v0}, Lorg/cocos2dx/plugin/UserMi;->access$3(Lorg/cocos2dx/plugin/UserMi;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2dx/plugin/MiWrapper;->onDestroy(Landroid/app/Activity;)V

    .line 205
    return-void
.end method
