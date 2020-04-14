.class Lorg/cocos2dx/plugin/UserMi$2;
.super Ljava/lang/Object;
.source "UserMi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/plugin/UserMi;->configDeveloperInfo(Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/plugin/UserMi;


# direct methods
.method constructor <init>(Lorg/cocos2dx/plugin/UserMi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/plugin/UserMi$2;->this$0:Lorg/cocos2dx/plugin/UserMi;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/cocos2dx/plugin/UserMi$2;->this$0:Lorg/cocos2dx/plugin/UserMi;

    invoke-static {v0}, Lorg/cocos2dx/plugin/UserMi;->access$3(Lorg/cocos2dx/plugin/UserMi;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lorg/cocos2dx/plugin/MiWrapper;->onCreate(Landroid/app/Activity;)V

    .line 52
    return-void
.end method
