.class Lorg/cocos2dx/plugin/IAPMi$2;
.super Ljava/lang/Object;
.source "IAPMi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/cocos2dx/plugin/IAPMi;->payForProduct(Ljava/util/Hashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/cocos2dx/plugin/IAPMi;


# direct methods
.method constructor <init>(Lorg/cocos2dx/plugin/IAPMi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/cocos2dx/plugin/IAPMi$2;->this$0:Lorg/cocos2dx/plugin/IAPMi;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 69
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "order"

    invoke-static {}, Lorg/cocos2dx/plugin/IAPMi;->access$1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v2, "price"

    invoke-static {}, Lorg/cocos2dx/plugin/IAPMi;->access$2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v2, "userInfo"

    invoke-static {}, Lorg/cocos2dx/plugin/IAPMi;->access$1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    invoke-static {v1}, Lorg/cocos2dx/plugin/MiWrapper;->getPayInfo(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    iget-object v2, p0, Lorg/cocos2dx/plugin/IAPMi$2;->this$0:Lorg/cocos2dx/plugin/IAPMi;

    invoke-static {v2}, Lorg/cocos2dx/plugin/IAPMi;->access$3(Lorg/cocos2dx/plugin/IAPMi;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lorg/cocos2dx/plugin/IAPMi;->access$4()Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/cocos2dx/plugin/MiWrapper;->miPay(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V

    .line 80
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
