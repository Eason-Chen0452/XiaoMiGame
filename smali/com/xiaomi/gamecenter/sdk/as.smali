.class final Lcom/xiaomi/gamecenter/sdk/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/gamecenter/sdk/as;->a:Z

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/as;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/as;->c:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/16 v8, 0x14

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v1, v6, [B

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    invoke-direct {v2}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;-><init>()V

    iget-object v0, v2, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->c:Landroid/os/Bundle;

    const-string v3, "islogout"

    iget-boolean v4, p0, Lcom/xiaomi/gamecenter/sdk/as;->a:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, v2, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->c:Landroid/os/Bundle;

    const-string v3, "uploadindex"

    sget-object v4, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/as;->b:Landroid/app/Activity;

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/ui/MiClassKey;->d:Ljava/lang/String;

    new-instance v4, Lcom/xiaomi/gamecenter/sdk/at;

    invoke-direct {v4, p0, v2, v1}, Lcom/xiaomi/gamecenter/sdk/at;-><init>(Lcom/xiaomi/gamecenter/sdk/as;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;[B)V

    invoke-static {v0, v3, v2, v4}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$a;)V

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, v2, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->c:Landroid/os/Bundle;

    const-string v1, "account"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    iget-object v1, v2, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->c:Landroid/os/Bundle;

    const-string v3, "accountType"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v0, :cond_2

    iget v1, v2, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    const/16 v3, -0xf

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sLoginActivity:Landroid/app/Activity;

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sOnLoginProcessListener:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const-string v3, "wechat"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Ljava/lang/String;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    iget v1, v2, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    const/16 v3, -0x10

    if-ne v1, v3, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sLoginActivity:Landroid/app/Activity;

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sOnLoginProcessListener:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const-string v3, "weibo"

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    const/16 v3, 0x7ff

    invoke-virtual {v1, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    :goto_2
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->setTouch(Z)V

    if-nez v0, :cond_5

    sput-boolean v6, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->IS_LOGGED_IN:Z

    const-string v1, "MIO-LoginInfo"

    const-string v3, "Login failed: MiAccountInfo is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/as;->c:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    iget v2, v2, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    invoke-interface {v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    goto :goto_1

    :cond_2
    iget v1, v2, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    if-nez v1, :cond_3

    :try_start_3
    const-string v1, "MiGameSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pkgName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/as;->b:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/as;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->getUid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v8, v4, v7}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->FastXmsdkReport(Landroid/content/Context;ILjava/lang/String;Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3, v7}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(ILjava/lang/String;Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    const/16 v3, 0x7fd

    invoke-virtual {v1, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReportOpenId(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMiAppInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setAccount(Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->a(Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->k()V

    goto/16 :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_3
    iget v1, v2, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    const/16 v3, -0xc

    if-ne v1, v3, :cond_4

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    goto/16 :goto_2

    :cond_4
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    const/16 v3, 0x7fe

    invoke-virtual {v1, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    goto/16 :goto_2

    :cond_5
    sput-boolean v7, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->IS_LOGGED_IN:Z

    const-string v1, "MIO-LoginInfo"

    const-string v3, "Login success"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method
