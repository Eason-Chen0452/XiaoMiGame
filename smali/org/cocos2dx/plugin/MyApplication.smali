.class public Lorg/cocos2dx/plugin/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"


# static fields
.field public static appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 14
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 15
    const-string v0, "2882303761518016806"

    .line 16
    .local v0, "AppId":Ljava/lang/String;
    const-string v1, "5291801616806"

    .line 17
    .local v1, "AppKey":Ljava/lang/String;
    new-instance v2, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;-><init>()V

    sput-object v2, Lorg/cocos2dx/plugin/MyApplication;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    .line 18
    sget-object v2, Lorg/cocos2dx/plugin/MyApplication;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v2, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setAppId(Ljava/lang/String;)V

    .line 19
    sget-object v2, Lorg/cocos2dx/plugin/MyApplication;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v2, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setAppKey(Ljava/lang/String;)V

    .line 20
    sget-object v2, Lorg/cocos2dx/plugin/MyApplication;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-static {p0, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->Init(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    .line 21
    return-void
.end method
