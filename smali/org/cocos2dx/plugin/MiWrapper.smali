.class public Lorg/cocos2dx/plugin/MiWrapper;
.super Ljava/lang/Object;
.source "MiWrapper.java"


# static fields
.field private static payInfo:Lorg/json/JSONObject;

.field private static roleInfo:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPayInfo(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 90
    sput-object p0, Lorg/cocos2dx/plugin/MiWrapper;->payInfo:Lorg/json/JSONObject;

    .line 91
    sget-object v0, Lorg/cocos2dx/plugin/MiWrapper;->payInfo:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static getPluginVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const-string v0, "1.0.1"

    return-object v0
.end method

.method public static getRoleInfo(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 85
    sput-object p0, Lorg/cocos2dx/plugin/MiWrapper;->roleInfo:Lorg/json/JSONObject;

    .line 86
    sget-object v0, Lorg/cocos2dx/plugin/MiWrapper;->roleInfo:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "3.1.2_12710"

    return-object v0
.end method

.method public static miExit(Landroid/app/Activity;)V
    .locals 3
    .param p0, "avt"    # Landroid/app/Activity;

    .prologue
    .line 111
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    .line 112
    .local v0, "miPlatform":Lcom/xiaomi/gamecenter/sdk/MiCommplatform;
    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v1

    new-instance v2, Lorg/cocos2dx/plugin/MiWrapper$2;

    invoke-direct {v2, p0}, Lorg/cocos2dx/plugin/MiWrapper$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, p0, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miAppExit(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnExitListner;)V

    goto :goto_0
.end method

.method public static miLogin(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "loginProcessListener"    # Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    .prologue
    .line 26
    new-instance v0, Lorg/cocos2dx/plugin/MiWrapper$1;

    invoke-direct {v0, p0, p1}, Lorg/cocos2dx/plugin/MiWrapper$1;-><init>(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V

    invoke-static {v0}, Lorg/cocos2dx/plugin/PluginWrapper;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method

.method public static miPay(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V
    .locals 21
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "payListener"    # Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    .prologue
    .line 36
    const/16 v16, 0x0

    .line 37
    .local v16, "userInfo":Ljava/lang/String;
    const/4 v3, 0x0

    .line 38
    .local v3, "balance":Ljava/lang/String;
    const/16 v17, 0x0

    .line 39
    .local v17, "vip":Ljava/lang/String;
    const/4 v6, 0x0

    .line 40
    .local v6, "level":Ljava/lang/String;
    const/4 v15, 0x0

    .line 41
    .local v15, "union_Name":Ljava/lang/String;
    const/4 v13, 0x0

    .line 42
    .local v13, "role_Name":Ljava/lang/String;
    const/4 v12, 0x0

    .line 43
    .local v12, "role_Id":Ljava/lang/String;
    const/4 v14, 0x0

    .line 44
    .local v14, "server_Name":Ljava/lang/String;
    const/4 v9, 0x0

    .line 45
    .local v9, "price":Ljava/lang/String;
    const/4 v8, 0x0

    .line 46
    .local v8, "order":Ljava/lang/String;
    const/4 v11, 0x0

    .line 48
    .local v11, "price_":I
    :try_start_0
    sget-object v18, Lorg/cocos2dx/plugin/MiWrapper;->payInfo:Lorg/json/JSONObject;

    const-string v19, "userInfo"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 49
    sget-object v18, Lorg/cocos2dx/plugin/MiWrapper;->payInfo:Lorg/json/JSONObject;

    const-string v19, "price"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 50
    sget-object v18, Lorg/cocos2dx/plugin/MiWrapper;->payInfo:Lorg/json/JSONObject;

    const-string v19, "order"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 51
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    .line 52
    .local v10, "price1":F
    float-to-int v11, v10

    .line 53
    sget-object v18, Lorg/cocos2dx/plugin/MiWrapper;->roleInfo:Lorg/json/JSONObject;

    const-string v19, "Balance"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    sget-object v18, Lorg/cocos2dx/plugin/MiWrapper;->roleInfo:Lorg/json/JSONObject;

    const-string v19, "roleVip"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 55
    sget-object v18, Lorg/cocos2dx/plugin/MiWrapper;->roleInfo:Lorg/json/JSONObject;

    const-string v19, "roleLevel"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    sget-object v18, Lorg/cocos2dx/plugin/MiWrapper;->roleInfo:Lorg/json/JSONObject;

    const-string v19, "UnionName"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 57
    sget-object v18, Lorg/cocos2dx/plugin/MiWrapper;->roleInfo:Lorg/json/JSONObject;

    const-string v19, "roleName"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 58
    sget-object v18, Lorg/cocos2dx/plugin/MiWrapper;->roleInfo:Lorg/json/JSONObject;

    const-string v19, "roleId"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 59
    sget-object v18, Lorg/cocos2dx/plugin/MiWrapper;->roleInfo:Lorg/json/JSONObject;

    const-string v19, "zoneName"

    invoke-virtual/range {v18 .. v19}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 64
    .end local v10    # "price1":F
    :goto_0
    sget-object v18, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "hhh price"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    new-instance v7, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    invoke-direct {v7}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;-><init>()V

    .line 66
    .local v7, "miBuyInfo":Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;
    invoke-virtual {v7, v8}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setCpOrderId(Ljava/lang/String;)V

    .line 67
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setCpUserInfo(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v7, v11}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setAmount(I)V

    .line 70
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v18, "balance"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v18, "vip"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v18, "lv"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v18, "partyName"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v18, "roleName"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v18, "roleId"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v18, "serverName"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v7, v4}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->setExtraInfo(Landroid/os/Bundle;)V

    .line 80
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v7, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miUniPay(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)I

    .line 82
    return-void

    .line 60
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v7    # "miBuyInfo":Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;
    :catch_0
    move-exception v5

    .line 61
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 103
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->onMainActivityCreate(Landroid/app/Activity;)V

    .line 104
    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 107
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->onMainActivityDestory(Landroid/app/Activity;)V

    .line 108
    return-void
.end method
