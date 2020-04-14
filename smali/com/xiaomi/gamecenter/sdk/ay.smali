.class final Lcom/xiaomi/gamecenter/sdk/ay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ay;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ay;->b:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/ay;->c:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a()Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    move-result-object v0

    const-string v1, "MIUI"

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ColorOS"

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.gamecenter.sdk.service"

    const-string v3, "com.xiaomi.gamecenter.sdk.ui.EntryActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "com.xiaomi.gamecenter.sdk.service.START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ay;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-wide/16 v0, 0x1f4

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ay;->b:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v2, 0x9a

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ay;->c:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    const/16 v2, -0x4653

    invoke-interface {v0, v2}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1, v5}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ay;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkAndConnect(Landroid/content/Context;Z)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v2, 0x9a

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ay;->c:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    const/16 v2, -0x4653

    invoke-interface {v0, v2}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1, v5}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getSDKService()Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ay;->b:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/xiaomi/gamecenter/sdk/IGameCenterSDK;->miUniPay(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    const/16 v2, -0x4658

    if-ne v0, v2, :cond_3

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendToastMsg()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v2, 0x9a

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ay;->c:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    const/16 v2, -0x4653

    invoke-interface {v0, v2}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {v1, v5}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    goto :goto_1

    :cond_3
    :try_start_4
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ay;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->checkUserChanged(Landroid/app/Activity;I)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v0, :cond_5

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v2

    const/16 v3, 0x99

    invoke-virtual {v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v2

    const/16 v3, 0xc13

    invoke-virtual {v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ay;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->b(Landroid/content/Context;)V

    :goto_2
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ay;->c:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    invoke-interface {v2, v0}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=============uni:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendLogToSDKSerivce(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    invoke-virtual {v1, v5}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    goto/16 :goto_1

    :cond_5
    :try_start_5
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v2

    const/16 v3, 0x9a

    invoke-virtual {v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=============uni ex:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendLogToSDKSerivce(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v0, 0x0

    :try_start_7
    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v2, 0x9a

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ay;->c:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    const/16 v2, -0x4653

    invoke-interface {v0, v2}, Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;->finishPayProcess(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    invoke-virtual {v1, v5}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v5}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->disconnect()V

    throw v0
.end method
