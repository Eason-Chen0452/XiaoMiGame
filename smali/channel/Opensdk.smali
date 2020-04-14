.class public abstract Lchannel/Opensdk;
.super Ljava/lang/Object;
.source "Opensdk.java"


# static fields
.field private static inst_:Lchannel/Opensdk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static JsonWithInfo(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 3
    .param p0, "eid"    # Ljava/lang/String;
    .param p1, "code"    # I

    .prologue
    .line 94
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v2, "code"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static createOpensdk(Landroid/app/Activity;)Lchannel/Opensdk;
    .locals 5
    .param p0, "atvt"    # Landroid/app/Activity;

    .prologue
    .line 23
    :try_start_0
    const-string v4, "aonedef.channel.class"

    invoke-static {p0, v4}, Lmain/Utils;->getStrMetaData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "clsName":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 25
    .local v0, "clsInst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lchannel/Opensdk;

    .line 26
    .local v3, "sdkInst":Lchannel/Opensdk;
    sput-object v3, Lchannel/Opensdk;->inst_:Lchannel/Opensdk;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .end local v0    # "clsInst":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "clsName":Ljava/lang/String;
    .end local v3    # "sdkInst":Lchannel/Opensdk;
    :goto_0
    return-object v3

    .line 28
    :catch_0
    move-exception v2

    .line 29
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 32
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static inst()Lchannel/Opensdk;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lchannel/Opensdk;->inst_:Lchannel/Opensdk;

    return-object v0
.end method


# virtual methods
.method public abstract onActivityCreate(Landroid/app/Activity;)V
.end method

.method public abstract onActivityDestroy(Z)V
.end method

.method public abstract onActivityPause(Z)V
.end method

.method public abstract onActivityRestart(Z)V
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onActivityResume(Z)V
.end method

.method public abstract onActivityStart(Z)V
.end method

.method public abstract onActivityStop(Z)V
.end method

.method public abstract onBackey()Z
.end method

.method protected abstract onCreateRole(Lorg/json/JSONObject;)V
.end method

.method protected abstract onEnterServer(Lorg/json/JSONObject;)V
.end method

.method public abstract onExit()V
.end method

.method protected abstract onLogin()V
.end method

.method public abstract onNewIntent(Landroid/content/Intent;)V
.end method

.method protected abstract onPurchase(Lorg/json/JSONObject;)V
.end method

.method protected abstract tgInitCallback(ILorg/json/JSONObject;)V
.end method

.method protected abstract tgLoginCallback(ILorg/json/JSONObject;)V
.end method

.method protected abstract tgLogoutFromApp()V
.end method

.method protected abstract tgPurchaseCallback(ILorg/json/JSONObject;)V
.end method
