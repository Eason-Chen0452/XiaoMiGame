.class public final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/b;
.super Ljava/lang/Object;


# direct methods
.method private static a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/c;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/c;-><init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static a()Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->c()Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->e()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->d()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :cond_2
    const-string v0, "MiGameSDK.MiFloatHelper"

    const-string v2, "download task is running"

    invoke-static {v0, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/j;

    invoke-direct {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/j;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->f(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->d(Landroid/content/Context;)I

    move-result v2

    if-eqz v1, :cond_0

    const v1, 0x86470

    if-ge v2, v1, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/PluginVersionCode;->a()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ge v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MiGameSDK.MiFloatHelper"

    const-string v3, "showFloatInSDK error"

    invoke-static {v2, v3, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->HTTP:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/b;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/b;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMainActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v0, "MiGameSDK.MiFloatHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activity "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "mio_dialog_download_service"

    invoke-static {v6, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const-string v0, "btn_close"

    invoke-static {v6, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "btn_left"

    invoke-static {v6, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const-string v2, "btn_right"

    invoke-static {v6, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const-string v3, "tv_info"

    invoke-static {v6, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v9, "ask_download_service"

    invoke-static {v6, v9}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    invoke-virtual {v10, v9, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/view/Window;->setGravity(I)V

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v7, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/d;

    invoke-direct {v7, v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/d;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/e;

    invoke-direct {v1, v6, v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/e;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/f;

    invoke-direct {v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/f;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    move v0, v5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MiGameSDK.MiFloatHelper"

    const-string v2, "downloadDialog error"

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "MiGameSDK.MiFloatHelper"

    const-string v2, "action error"

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    move v0, v4

    goto/16 :goto_0

    :cond_1
    :try_start_3
    const-string v1, "migamecenter://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "migamecenter://acc_exchange"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "miservicesdk://open_gamecenter?url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "utf-8"

    invoke-static {p1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMiAppInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->e()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->e()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessage;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/utils/a;->a([B)Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v5, "appInfo"

    invoke-virtual {v3, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "pkgName"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "st"

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "milink"

    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "lastLoginTime"

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->h()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v5, "appName"

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v5, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v2, v5, :cond_4

    const-string v5, "accountType"

    const/16 v6, 0xa

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_3
    const-string v5, "session"

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "MiGameSDK.MiFloatHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "appInfo "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MiGameSDK.MiFloatHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "pkgName "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MiGameSDK.MiFloatHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "st "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MiGameSDK.MiFloatHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "milink "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.MiFloatHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "lastLoginTime "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->h()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.MiFloatHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "accountType "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.MiFloatHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "session "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MiGameSDK.MiFloatHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "intent "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_4
    const-string v5, "accountType"

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->d:Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_2

    :try_start_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://app.xiaomi.com/details?id=com.xiaomi.gamecenter.sdk.service"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "MiGameSDK.MiFloatHelper"

    const-string v2, "backup"

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "MiGameSDK.MiFloatHelper"

    const-string v2, "download migameservice error"

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/b;->a()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->a()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/menu/a;->c()Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;

    invoke-direct {v4, v2, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a(Lcom/xiaomi/gamecenter/sdk/utils/Downloader$a;)V

    invoke-virtual {v3, v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->c(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->d(Ljava/lang/String;)V

    const-string v0, "\u6e38\u620f\u670d\u52a1"

    invoke-virtual {v3, v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a(Ljava/lang/String;)V

    const-string v0, "migameservice.apk"

    invoke-virtual {v3, v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->b(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->c()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->f(Landroid/content/Context;)Z

    move-result v1

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->d(Landroid/content/Context;)I

    move-result v2

    if-eqz v1, :cond_0

    const v1, 0x86470

    if-lt v2, v1, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/PluginVersionCode;->a()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ge v2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "MiGameSDK.MiFloatHelper"

    const-string v3, "showFloatInSDK error"

    invoke-static {v2, v3, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
