.class public Lorg/cocos2dx/plugin/IAPMi;
.super Ljava/lang/Object;
.source "IAPMi.java"

# interfaces
.implements Lorg/cocos2dx/plugin/InterfaceIAP;


# static fields
.field private static curProductInfo:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAdapter:Lorg/cocos2dx/plugin/InterfaceIAP;

.field private static order:Ljava/lang/String;

.field private static payProcessListener:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

.field private static price:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2dx/plugin/IAPMi;->curProductInfo:Ljava/util/Hashtable;

    .line 89
    new-instance v0, Lorg/cocos2dx/plugin/IAPMi$1;

    invoke-direct {v0}, Lorg/cocos2dx/plugin/IAPMi$1;-><init>()V

    sput-object v0, Lorg/cocos2dx/plugin/IAPMi;->payProcessListener:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lorg/cocos2dx/plugin/IAPMi;->activity:Landroid/app/Activity;

    .line 23
    sput-object p0, Lorg/cocos2dx/plugin/IAPMi;->mAdapter:Lorg/cocos2dx/plugin/InterfaceIAP;

    .line 24
    return-void
.end method

.method static synthetic access$0(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    invoke-static {p0, p1}, Lorg/cocos2dx/plugin/IAPMi;->payResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lorg/cocos2dx/plugin/IAPMi;->order:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lorg/cocos2dx/plugin/IAPMi;->price:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lorg/cocos2dx/plugin/IAPMi;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lorg/cocos2dx/plugin/IAPMi;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4()Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lorg/cocos2dx/plugin/IAPMi;->payProcessListener:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    return-object v0
.end method

.method private static payResult(ILjava/lang/String;)V
    .locals 1
    .param p0, "ret"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v0, Lorg/cocos2dx/plugin/IAPMi;->mAdapter:Lorg/cocos2dx/plugin/InterfaceIAP;

    invoke-static {v0, p0, p1}, Lorg/cocos2dx/plugin/IAPWrapper;->onPayResult(Lorg/cocos2dx/plugin/InterfaceIAP;ILjava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public canRequestProducts()Z
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public configDeveloperInfo(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "arg0":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lorg/cocos2dx/plugin/MiWrapper;->getPluginVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lorg/cocos2dx/plugin/MiWrapper;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public payForProduct(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "payInfo":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    sput-object p1, Lorg/cocos2dx/plugin/IAPMi;->curProductInfo:Ljava/util/Hashtable;

    .line 58
    sget-object v0, Lorg/cocos2dx/plugin/IAPMi;->curProductInfo:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 59
    const/4 v0, 0x1

    const-string v1, "curProductInfo is null"

    invoke-static {v0, v1}, Lorg/cocos2dx/plugin/IAPMi;->payResult(ILjava/lang/String;)V

    .line 82
    :goto_0
    return-void

    .line 63
    :cond_0
    sget-object v0, Lorg/cocos2dx/plugin/IAPMi;->curProductInfo:Ljava/util/Hashtable;

    const-string v1, "price"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lorg/cocos2dx/plugin/IAPMi;->price:Ljava/lang/String;

    .line 64
    sget-object v0, Lorg/cocos2dx/plugin/IAPMi;->curProductInfo:Ljava/util/Hashtable;

    const-string v1, "order"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lorg/cocos2dx/plugin/IAPMi;->order:Ljava/lang/String;

    .line 65
    new-instance v0, Lorg/cocos2dx/plugin/IAPMi$2;

    invoke-direct {v0, p0}, Lorg/cocos2dx/plugin/IAPMi$2;-><init>(Lorg/cocos2dx/plugin/IAPMi;)V

    invoke-static {v0}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setDebugMode(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 87
    return-void
.end method
