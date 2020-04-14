.class public Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils$a;)V
    .locals 9

    const/high16 v8, 0x10000000

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->HTTP:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->GAMECENTER:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    if-ne v0, v1, :cond_7

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->aS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->aS:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/protocol/ProDefine;->aT:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "destUrl"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMiAppInfo()Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->j()Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "fuid"

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v4, "token"

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "nickname"

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "gamename"

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v3, "logintype"

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_5
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getMainActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u672a\u5b89\u88c5\u6e38\u620f\u4e2d\u5fc3\u6216\u6e38\u620f\u4e2d\u5fc3\u7248\u672c\u8fc7\u4f4e\uff0c\u662f\u5426\u4f7f\u7528\u6d4f\u89c8\u5668\u67e5\u770b\uff1f"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/b;

    invoke-direct {v3, v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/a;

    invoke-direct {v2}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_7
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->MISERVICESDK:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    if-ne v0, v1, :cond_a

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;->MISERVICESDK:Lcom/xiaomi/gamecenter/sdk/ui/UiUtils$SchemeType;

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openapp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "pkgname"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    goto/16 :goto_0

    :cond_8
    const-string v0, "\u624b\u673a\u672a\u5b89\u88c5\u8be5\u5e94\u7528"

    invoke-static {p0, v0, v3}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "\u624b\u673a\u672a\u5b89\u88c5\u6e38\u620f\u670d\u52a1"

    invoke-static {p0, v0, v3}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_a
    invoke-static {p1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;)V

    const-string v0, "\u6682\u4e0d\u652f\u6301\u8fd9\u4e2a\u94fe\u63a5"

    invoke-static {p0, v0, v4}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
