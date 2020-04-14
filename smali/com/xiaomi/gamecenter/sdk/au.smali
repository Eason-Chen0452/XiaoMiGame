.class final Lcom/xiaomi/gamecenter/sdk/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/entry/LoginType;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Lcom/xiaomi/gamecenter/sdk/entry/LoginType;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/au;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/au;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/au;->c:Lcom/xiaomi/gamecenter/sdk/entry/LoginType;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/au;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a()Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    move-result-object v0

    const-string v3, "MIUI"

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ColorOS"

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.xiaomi.gamecenter.sdk.service"

    const-string v5, "com.xiaomi.gamecenter.sdk.ui.EntryActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v3, "com.xiaomi.gamecenter.sdk.service.START"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/au;->a:Landroid/app/Activity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setPay(Z)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/au;->a:Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkAndConnect(Landroid/content/Context;Z)I

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xfaa

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/au;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v1, -0x66

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/au;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isSdkServiceExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    const/16 v3, 0xfad

    invoke-virtual {v1, v3, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(ILjava/lang/Throwable;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/au;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v1, -0x66

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    goto :goto_1

    :cond_1
    :try_start_5
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v3

    const/16 v4, 0x7db

    invoke-virtual {v3, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "loginType"

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/au;->c:Lcom/xiaomi/gamecenter/sdk/entry/LoginType;

    invoke-virtual {v5}, Lcom/xiaomi/gamecenter/sdk/entry/LoginType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/au;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "accountType"

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/au;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v4, "sdkVersion"

    const-string v5, "SDK_MI_SP_3.1.2"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getSDKService()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getVersion()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, v3}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->miLogin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LoginResult : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->a(Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v4

    const/16 v5, 0x7dc

    invoke-virtual {v4, v5}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setPay(Z)V

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getErrcode()I

    move-result v4

    const/16 v5, -0x4658

    if-ne v4, v5, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendToastMsg()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xfab

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/au;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v1, -0x66

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    goto/16 :goto_1

    :cond_3
    :try_start_6
    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getErrcode()I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/au;->a:Landroid/app/Activity;

    const/16 v5, 0x14

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getAccount()Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->FastXmsdkReport(Landroid/content/Context;ILjava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getAccount()Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->getUid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(ILjava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getAccount()Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReportOpenId(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->k()V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getFuidFromService()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->setFuid(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v5

    if-nez v5, :cond_5

    :try_start_7
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->a(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    :try_start_8
    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getErrcode()I

    move-result v4

    const/16 v5, -0x74

    if-eq v4, v5, :cond_8

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getAccount()Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v4

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMiAppInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setAccount(Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->a(Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMilinkAccountProps()Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->a(Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;)V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/au;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/au;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getErrcode()I

    move-result v4

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getAccount()Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    const-string v0, "MIO-LoginInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "code"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getErrcode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "account is null:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getAccount()Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v3

    if-nez v3, :cond_7

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    goto/16 :goto_1

    :catch_2
    move-exception v4

    :cond_5
    const-wide/16 v4, 0x0

    :try_start_9
    invoke-static {v4, v5}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->a(J)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    throw v0

    :cond_6
    :try_start_a
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v4

    const/16 v5, 0xfac

    invoke-virtual {v4, v5}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j()V

    goto/16 :goto_3

    :cond_7
    move v1, v2

    goto :goto_4

    :cond_8
    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/au;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getErrcode()I

    move-result v5

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMiAccountInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    const-string v4, "MIO-LoginInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "code"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/entry/LoginResult;->getErrcode()I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "platform account is null:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMiAccountInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    move-result-object v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_6

    :cond_a
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xfac

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/au;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v1, -0x66

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_5

    :cond_b
    :goto_7
    :try_start_b
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/au;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isTopActivity(Landroid/app/Activity;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v0

    if-nez v0, :cond_c

    const-wide/16 v0, 0x1f4

    :try_start_c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_7

    :catch_3
    move-exception v0

    :try_start_d
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_7

    :catch_4
    move-exception v0

    :try_start_e
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/au;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v3, -0x66

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    :cond_c
    :try_start_f
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/au;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isSdkServiceExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/au;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/au;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/au;->c:Lcom/xiaomi/gamecenter/sdk/entry/LoginType;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/au;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3, v4}, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->b(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Lcom/xiaomi/gamecenter/sdk/entry/LoginType;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xfae

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/au;->b:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v1, -0x66

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_2
.end method
