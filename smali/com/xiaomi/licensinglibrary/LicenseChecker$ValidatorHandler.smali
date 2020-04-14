.class Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/licensinglibrary/LicenseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidatorHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/licensinglibrary/LicenseChecker;


# direct methods
.method public constructor <init>(Lcom/xiaomi/licensinglibrary/LicenseChecker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/16 v8, 0xfa2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_e

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_e

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$600(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/util/LicenseValidator;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$100(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaomi/licensinglibrary/ILicenseService;->a()Landroid/os/Bundle;

    move-result-object v3

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$600(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/util/LicenseValidator;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/xiaomi/licensinglibrary/util/LicenseValidator;->a(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->allow(I)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v1, "local_verify_success"

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v2, "license_verify_remoteException"

    invoke-virtual {v1, v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    const-string v1, "MiGameSDK"

    const-string v2, "RemoteException in checkLicense call."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$600(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/util/LicenseValidator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$800(Lcom/xiaomi/licensinglibrary/LicenseChecker;Lcom/xiaomi/licensinglibrary/util/LicenseValidator;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0xfa5

    invoke-interface {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->applicationError(I)V

    goto :goto_0

    :cond_1
    :try_start_1
    const-string v1, "mid"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/xiaomi/licensinglibrary/util/a;->a()Lcom/xiaomi/licensinglibrary/util/a;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v3}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$100(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/licensinglibrary/util/a;->b(Landroid/app/Activity;Lcom/xiaomi/licensinglibrary/ILicenseService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v1, "server_verify_noxiaomiaccount"

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0xfa0

    invoke-interface {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->applicationError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v2, "license_verify_Exception"

    invoke-virtual {v1, v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    iget-object v2, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$600(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/util/LicenseValidator;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$800(Lcom/xiaomi/licensinglibrary/LicenseChecker;Lcom/xiaomi/licensinglibrary/util/LicenseValidator;)V

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v1

    const/16 v2, 0xfa5

    invoke-interface {v1, v2}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->applicationError(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$100(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaomi/licensinglibrary/ILicenseService;->a()Landroid/os/Bundle;

    move-result-object v3

    const-string v2, "mid"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    :cond_3
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "firstRunOnthisDevice_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v5}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/xiaomi/licensinglibrary/util/PreferenceUtil;->b(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/xiaomi/licensinglibrary/util/a;->a()Lcom/xiaomi/licensinglibrary/util/a;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v6}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v7}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$100(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    move-result-object v7

    invoke-virtual {v5, v6, v1, v7}, Lcom/xiaomi/licensinglibrary/util/a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/licensinglibrary/ILicenseService;)Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "errcode"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v5, 0x138c

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v5, "server_verify_success_newDevice_bind"

    invoke-virtual {v1, v5}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/xiaomi/licensinglibrary/util/PreferenceUtil;->a(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_5
    :goto_2
    :try_start_4
    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v5, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v5}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v6, "pkgName"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appId"

    iget-object v6, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v6}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$1000(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "versionCode"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "validatorsdkvc"

    const/16 v2, 0x96

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$100(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/xiaomi/licensinglibrary/ILicenseService;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "errcode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v5, 0xc8

    if-ne v2, v5, :cond_8

    iget-object v2, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$600(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/util/LicenseValidator;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/xiaomi/licensinglibrary/util/LicenseValidator;->a(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v1, "server_verify_success"

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/licensinglibrary/f;

    invoke-direct {v1, p0}, Lcom/xiaomi/licensinglibrary/f;-><init>(Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->allow(I)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_6
    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v2, "server_verify_failed"

    invoke-virtual {v1, v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    :cond_7
    if-eqz v0, :cond_9

    const/16 v0, 0x1e

    if-ge v4, v0, :cond_9

    const-string v0, "MiGameSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handle_Msg_RunChecks count:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    add-int/lit8 v1, v4, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_8
    if-ne v2, v8, :cond_7

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0xfa2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    const-string v1, "server_verify_networkerror"

    invoke-virtual {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/licensinglibrary/g;

    invoke-direct {v1, p0}, Lcom/xiaomi/licensinglibrary/g;-><init>(Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0xfa2

    invoke-interface {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->applicationError(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/licensinglibrary/h;

    invoke-direct {v1, p0}, Lcom/xiaomi/licensinglibrary/h;-><init>(Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$600(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/util/LicenseValidator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->newSDKInstalled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "MiGameSDK"

    const-string v1, "New version SDK installed failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$100(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    move-result-object v0

    if-nez v0, :cond_b

    :try_start_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.licensinglibrary.authfileinfo"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$700(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MiGameSDK"

    const-string v1, "Could not bind to service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$600(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/util/LicenseValidator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$800(Lcom/xiaomi/licensinglibrary/LicenseChecker;Lcom/xiaomi/licensinglibrary/util/LicenseValidator;)V

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, 0x3ea

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0x3ea

    invoke-interface {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->applicationError(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->removeMessages(I)V

    invoke-virtual {p0, v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_3
    :try_start_6
    invoke-static {}, Lcom/xiaomi/licensinglibrary/util/a;->a()Lcom/xiaomi/licensinglibrary/util/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$100(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/ILicenseService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/licensinglibrary/util/a;->a(Landroid/app/Activity;Lcom/xiaomi/licensinglibrary/ILicenseService;)I

    move-result v0

    const-string v1, "MiGameSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handle_Msg_BUY_GAME ret:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "buy_license_ret_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->reportLog(Ljava/lang/String;)V

    if-eqz v0, :cond_c

    const/16 v1, 0x138c

    if-ne v0, v1, :cond_d

    :cond_c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->removeMessages(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/licensinglibrary/i;

    invoke-direct {v1, p0}, Lcom/xiaomi/licensinglibrary/i;-><init>(Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_d
    :try_start_7
    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$200(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v0}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$900(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-interface {v0, v1}, Lcom/xiaomi/licensinglibrary/LicenseCheckerCallback;->dontAllow(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;->a:Lcom/xiaomi/licensinglibrary/LicenseChecker;

    invoke-static {v1}, Lcom/xiaomi/licensinglibrary/LicenseChecker;->access$500(Lcom/xiaomi/licensinglibrary/LicenseChecker;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/licensinglibrary/e;

    invoke-direct {v2, p0, v0}, Lcom/xiaomi/licensinglibrary/e;-><init>(Lcom/xiaomi/licensinglibrary/LicenseChecker$ValidatorHandler;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_e
    move v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
