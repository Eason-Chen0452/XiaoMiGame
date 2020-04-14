.class public Lorg/cocos2dx/plugin/IAPWrapper;
.super Ljava/lang/Object;
.source "IAPWrapper.java"


# static fields
.field public static final PAYRESULT_CANCEL:I = 0x2

.field public static final PAYRESULT_FAIL:I = 0x1

.field public static final PAYRESULT_SUCCESS:I = 0x0

.field public static final PAYRESULT_TIMEOUT:I = 0x3

.field public static final REQUESTRESULT_SUCCESS:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lorg/cocos2dx/plugin/IAPWrapper;->nativeOnPayResult(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Ljava/lang/String;ILjava/util/List;)V
    .locals 0

    .prologue
    .line 68
    invoke-static {p0, p1, p2}, Lorg/cocos2dx/plugin/IAPWrapper;->nativeOnRequestProduct(Ljava/lang/String;ILjava/util/List;)V

    return-void
.end method

.method private static native nativeOnPayResult(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method private static native nativeOnRequestProduct(Ljava/lang/String;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public static onPayResult(Lorg/cocos2dx/plugin/InterfaceIAP;ILjava/lang/String;)V
    .locals 4
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfaceIAP;
    .param p1, "ret"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    move v2, p1

    .line 40
    .local v2, "curRet":I
    move-object v0, p2

    .line 41
    .local v0, "curMsg":Ljava/lang/String;
    move-object v1, p0

    .line 42
    .local v1, "curObj":Lorg/cocos2dx/plugin/InterfaceIAP;
    new-instance v3, Lorg/cocos2dx/plugin/IAPWrapper$1;

    invoke-direct {v3, v1, v2, v0}, Lorg/cocos2dx/plugin/IAPWrapper$1;-><init>(Lorg/cocos2dx/plugin/InterfaceIAP;ILjava/lang/String;)V

    invoke-static {v3}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 50
    return-void
.end method

.method public static onRequestProduct(Lorg/cocos2dx/plugin/InterfaceIAP;ILjava/util/List;)V
    .locals 4
    .param p0, "obj"    # Lorg/cocos2dx/plugin/InterfaceIAP;
    .param p1, "ret"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/cocos2dx/plugin/InterfaceIAP;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "products":Ljava/util/List;, "Ljava/util/List<Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;>;"
    move v2, p1

    .line 55
    .local v2, "curRet":I
    move-object v0, p2

    .line 56
    .local v0, "ProductList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object v1, p0

    .line 57
    .local v1, "curObj":Lorg/cocos2dx/plugin/InterfaceIAP;
    new-instance v3, Lorg/cocos2dx/plugin/IAPWrapper$2;

    invoke-direct {v3, v1, v2, v0}, Lorg/cocos2dx/plugin/IAPWrapper$2;-><init>(Lorg/cocos2dx/plugin/InterfaceIAP;ILjava/util/List;)V

    invoke-static {v3}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 66
    return-void
.end method
