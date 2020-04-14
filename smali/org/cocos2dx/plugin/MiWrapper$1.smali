.class Lorg/cocos2dx/plugin/MiWrapper$1;
.super Ljava/lang/Object;
.source "MiWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/plugin/MiWrapper;->miLogin(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginProcessListener:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/plugin/MiWrapper$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lorg/cocos2dx/plugin/MiWrapper$1;->val$loginProcessListener:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    iget-object v1, p0, Lorg/cocos2dx/plugin/MiWrapper$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lorg/cocos2dx/plugin/MiWrapper$1;->val$loginProcessListener:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V

    .line 31
    return-void
.end method
