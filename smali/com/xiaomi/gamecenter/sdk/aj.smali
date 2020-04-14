.class final Lcom/xiaomi/gamecenter/sdk/aj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/RoleData;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/RoleData;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/aj;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/aj;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/aj;->b:Lcom/xiaomi/gamecenter/sdk/RoleData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aj;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/TokenUtils;->b(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getUid()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1700()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1700()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1700()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v2, "MiGameSDK.MiCommplatform"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "versionCode "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7ef40

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aj;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/aj;->a:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkAndConnect(Landroid/content/Context;Z)I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$400()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$400()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->getFuid(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aj;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    :goto_1
    :try_start_2
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAccount()Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMilinkAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milink/sdk/base/Global;->init(Landroid/content/Context;Lcom/mi/milink/sdk/data/ClientAppInfo;)V

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/aj;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/aj;->b:Lcom/xiaomi/gamecenter/sdk/RoleData;

    sget-object v4, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-static {v2, v3, v4, v1, v0}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageFactory;->a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/RoleData;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Ljava/lang/String;Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/GameDataProto$RoleDataRsp;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aj;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/c;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aj;->a:Landroid/app/Activity;

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ak;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/ak;-><init>(Lcom/xiaomi/gamecenter/sdk/aj;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    const-string v1, "MiGameSDK.MiCommplatform"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MilinkSubmitRoleData rsp "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aj;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aj;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    throw v0

    :catch_2
    move-exception v0

    const-string v1, "MiGameSDK.MiCommplatform"

    const-string v2, "submit role data error"

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
