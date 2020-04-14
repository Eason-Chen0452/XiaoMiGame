.class public Lorg/cocos2dx/plugin/UserMi;
.super Ljava/lang/Object;
.source "UserMi.java"

# interfaces
.implements Lorg/cocos2dx/plugin/InterfaceUser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/plugin/UserMi$MiActivityEventListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static isDebug:Z

.field public static isInited:Z

.field private static jsonExData:Lorg/json/JSONObject;

.field public static mAdapter:Lorg/cocos2dx/plugin/InterfaceUser;


# instance fields
.field private activity:Landroid/app/Activity;

.field private appId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private isLogined:Z

.field private loginProcessListener:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

.field private miAppType:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

.field private session:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    const-string v0, "UserMi"

    sput-object v0, Lorg/cocos2dx/plugin/UserMi;->TAG:Ljava/lang/String;

    .line 25
    sput-boolean v1, Lorg/cocos2dx/plugin/UserMi;->isInited:Z

    .line 29
    sput-boolean v1, Lorg/cocos2dx/plugin/UserMi;->isDebug:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2dx/plugin/UserMi;->isLogined:Z

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lorg/cocos2dx/plugin/UserMi;->session:Ljava/lang/String;

    .line 126
    new-instance v0, Lorg/cocos2dx/plugin/UserMi$1;

    invoke-direct {v0, p0}, Lorg/cocos2dx/plugin/UserMi$1;-><init>(Lorg/cocos2dx/plugin/UserMi;)V

    iput-object v0, p0, Lorg/cocos2dx/plugin/UserMi;->loginProcessListener:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    .line 33
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lorg/cocos2dx/plugin/UserMi;->activity:Landroid/app/Activity;

    .line 34
    sput-object p0, Lorg/cocos2dx/plugin/UserMi;->mAdapter:Lorg/cocos2dx/plugin/InterfaceUser;

    .line 35
    invoke-static {}, Lorg/cocos2dx/plugin/PluginWrapper;->getActivityEventListener()Lorg/cocos2dx/plugin/ActivityEventListener;

    move-result-object v0

    new-instance v1, Lorg/cocos2dx/plugin/UserMi$MiActivityEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/cocos2dx/plugin/UserMi$MiActivityEventListener;-><init>(Lorg/cocos2dx/plugin/UserMi;Lorg/cocos2dx/plugin/UserMi$MiActivityEventListener;)V

    invoke-virtual {v0, v1}, Lorg/cocos2dx/plugin/ActivityEventListener;->addListener(Lorg/cocos2dx/plugin/ActivityEventListener;)V

    .line 36
    return-void
.end method

.method protected static LogD(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 189
    sget-boolean v0, Lorg/cocos2dx/plugin/UserMi;->isDebug:Z

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lorg/cocos2dx/plugin/UserMi;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    return-void
.end method

.method protected static LogE(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 184
    sget-object v0, Lorg/cocos2dx/plugin/UserMi;->TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    return-void
.end method

.method static synthetic access$0(Lorg/cocos2dx/plugin/UserMi;Z)V
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lorg/cocos2dx/plugin/UserMi;->isLogined:Z

    return-void
.end method

.method static synthetic access$1(Lorg/cocos2dx/plugin/UserMi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lorg/cocos2dx/plugin/UserMi;->session:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lorg/cocos2dx/plugin/UserMi;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lorg/cocos2dx/plugin/UserMi;->uid:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lorg/cocos2dx/plugin/UserMi;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lorg/cocos2dx/plugin/UserMi;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lorg/cocos2dx/plugin/UserMi;)Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/cocos2dx/plugin/UserMi;->loginProcessListener:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    return-object v0
.end method


# virtual methods
.method public configDeveloperInfo(Ljava/util/Hashtable;)V
    .locals 4
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
    .line 40
    .local p1, "cpInfo":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v1, Lorg/cocos2dx/plugin/UserMi;->isInited:Z

    if-eqz v1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 42
    :cond_0
    move-object v0, p1

    .line 43
    .local v0, "curInfo":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "AppId"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/cocos2dx/plugin/UserMi;->appId:Ljava/lang/String;

    .line 44
    const-string v1, "AppKey"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/cocos2dx/plugin/UserMi;->appKey:Ljava/lang/String;

    .line 45
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;->online:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    iput-object v1, p0, Lorg/cocos2dx/plugin/UserMi;->miAppType:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    .line 46
    const/4 v1, 0x1

    sput-boolean v1, Lorg/cocos2dx/plugin/UserMi;->isInited:Z

    .line 47
    new-instance v1, Lorg/cocos2dx/plugin/UserMi$2;

    invoke-direct {v1, p0}, Lorg/cocos2dx/plugin/UserMi$2;-><init>(Lorg/cocos2dx/plugin/UserMi;)V

    invoke-static {v1}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 54
    sget-object v1, Lorg/cocos2dx/plugin/UserMi;->mAdapter:Lorg/cocos2dx/plugin/InterfaceUser;

    const/4 v2, 0x0

    const-string v3, "init success"

    invoke-static {v1, v2, v3}, Lorg/cocos2dx/plugin/UserWrapper;->onActionResult(Lorg/cocos2dx/plugin/InterfaceUser;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public exit()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lorg/cocos2dx/plugin/UserMi;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/cocos2dx/plugin/MiWrapper;->miExit(Landroid/app/Activity;)V

    .line 200
    return-void
.end method

.method public getPluginVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lorg/cocos2dx/plugin/MiWrapper;->getPluginVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lorg/cocos2dx/plugin/MiWrapper;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/cocos2dx/plugin/UserMi;->session:Ljava/lang/String;

    return-object v0
.end method

.method public getUId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1|"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/cocos2dx/plugin/UserMi;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasExitUI()Z
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public isLogined()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/cocos2dx/plugin/UserMi;->isLogined:Z

    return v0
.end method

.method public login()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lorg/cocos2dx/plugin/UserMi$3;

    invoke-direct {v0, p0}, Lorg/cocos2dx/plugin/UserMi$3;-><init>(Lorg/cocos2dx/plugin/UserMi;)V

    invoke-static {v0}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public logout()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lorg/cocos2dx/plugin/UserMi$4;

    invoke-direct {v0, p0}, Lorg/cocos2dx/plugin/UserMi$4;-><init>(Lorg/cocos2dx/plugin/UserMi;)V

    invoke-static {v0}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 118
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 123
    sput-boolean p1, Lorg/cocos2dx/plugin/UserMi;->isDebug:Z

    .line 124
    return-void
.end method

.method public submitRoleData(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "cpInfo"    # Lorg/json/JSONObject;

    .prologue
    .line 159
    move-object v0, p1

    .line 161
    .local v0, "curInfo":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "aoneRoleId"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 162
    .local v4, "roleId":Ljava/lang/String;
    const-string v8, "aoneRoleName"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, "roleName":Ljava/lang/String;
    const-string v8, "aoneRoleLevel"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 164
    .local v5, "roleLevel":Ljava/lang/String;
    const-string v8, "aoneGroupId"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "groupId":Ljava/lang/String;
    const-string v8, "aoneGroupName"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "groupName":Ljava/lang/String;
    const-string v8, "aoneRoleVip"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 167
    .local v7, "roleVip":Ljava/lang/String;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    sput-object v8, Lorg/cocos2dx/plugin/UserMi;->jsonExData:Lorg/json/JSONObject;

    .line 168
    sget-object v8, Lorg/cocos2dx/plugin/UserMi;->jsonExData:Lorg/json/JSONObject;

    const-string v9, "roleId"

    invoke-virtual {v8, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    sget-object v8, Lorg/cocos2dx/plugin/UserMi;->jsonExData:Lorg/json/JSONObject;

    const-string v9, "roleName"

    invoke-virtual {v8, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    sget-object v8, Lorg/cocos2dx/plugin/UserMi;->jsonExData:Lorg/json/JSONObject;

    const-string v9, "roleLevel"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    sget-object v8, Lorg/cocos2dx/plugin/UserMi;->jsonExData:Lorg/json/JSONObject;

    const-string v9, "zoneId"

    invoke-virtual {v8, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    sget-object v8, Lorg/cocos2dx/plugin/UserMi;->jsonExData:Lorg/json/JSONObject;

    const-string v9, "zoneName"

    invoke-virtual {v8, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    sget-object v8, Lorg/cocos2dx/plugin/UserMi;->jsonExData:Lorg/json/JSONObject;

    const-string v9, "roleVip"

    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    sget-object v8, Lorg/cocos2dx/plugin/UserMi;->jsonExData:Lorg/json/JSONObject;

    const-string v9, "UnionName"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    sget-object v8, Lorg/cocos2dx/plugin/UserMi;->jsonExData:Lorg/json/JSONObject;

    const-string v9, "Balance"

    const-string v10, "0"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    sget-object v8, Lorg/cocos2dx/plugin/UserMi;->jsonExData:Lorg/json/JSONObject;

    invoke-static {v8}, Lorg/cocos2dx/plugin/MiWrapper;->getRoleInfo(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v2    # "groupId":Ljava/lang/String;
    .end local v3    # "groupName":Ljava/lang/String;
    .end local v4    # "roleId":Ljava/lang/String;
    .end local v5    # "roleLevel":Ljava/lang/String;
    .end local v6    # "roleName":Ljava/lang/String;
    .end local v7    # "roleVip":Ljava/lang/String;
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
