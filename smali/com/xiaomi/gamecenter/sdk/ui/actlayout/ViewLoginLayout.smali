.class public Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;
.super Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/ui/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;
    }
.end annotation


# instance fields
.field private i:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

.field private j:Landroid/app/ProgressDialog;

.field private k:Landroid/content/ServiceConnection;

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->k:Landroid/content/ServiceConnection;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->i()Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    const/16 v2, -0x66

    invoke-virtual {p0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Landroid/content/Context;)V

    :cond_0
    new-instance v1, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->h:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {v1, v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    iput-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->i:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->i:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/j;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->j()V

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->h:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v2, v1, :cond_5

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->s:Ljava/util/List;

    const-string v2, "MI"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_4
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->i:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->getNewAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x812

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/f;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/f;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v2, v1, :cond_6

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->s:Ljava/util/List;

    const-string v2, "QQ"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_WX:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v2, v1, :cond_4

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->s:Ljava/util/List;

    const-string v2, "WX"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;)I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [B

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;-><init>()V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/ui/MiClassKey;->b:Ljava/lang/String;

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/g;

    invoke-direct {v3, p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/g;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;[B)V

    invoke-static {p1, v2, v0, v3}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$a;)V

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    return v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Landroid/app/Activity;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->b(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;JLjava/lang/String;I)V
    .locals 3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->i()Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    move-result-object v1

    iget-object v1, v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->c:Landroid/os/Bundle;

    const-string v2, "account"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->i()Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->c:Landroid/os/Bundle;

    const-string v1, "accountType"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, -0x66

    invoke-direct {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->c(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V
    .locals 1

    const/16 v0, -0x66

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Ljava/lang/String;)V
    .locals 3

    const-string v0, "MIO-showTipDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code:-1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiAlertDialog;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u767b\u5f55\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/i;

    invoke-direct {v2, p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/i;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private b(Landroid/app/Activity;)I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [B

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;-><init>()V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/ui/MiClassKey;->c:Ljava/lang/String;

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/h;

    invoke-direct {v3, p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/h;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;[B)V

    invoke-static {p1, v2, v0, v3}, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$a;)V

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$DataAction;->d:I

    return v0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Landroid/app/Activity;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Landroid/app/Activity;)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V
    .locals 1

    const/16 v0, -0x66

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V

    return-void
.end method

.method private c(I)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->j()V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V
    .locals 1

    const/16 v0, -0x66

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V

    return-void
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->i:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V
    .locals 1

    const/16 v0, -0x66

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V

    return-void
.end method

.method static synthetic e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->k()V

    return-void
.end method

.method static synthetic e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V
    .locals 1

    const/16 v0, -0xc

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V

    return-void
.end method

.method static synthetic f(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V
    .locals 1

    const/16 v0, -0xf

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V

    return-void
.end method

.method static synthetic g(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->h:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    return-object v0
.end method

.method static synthetic g(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V
    .locals 1

    const/16 v0, -0x10

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V

    return-void
.end method

.method static synthetic h(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V
    .locals 1

    const/16 v0, -0x66

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V

    return-void
.end method

.method static synthetic i(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V
    .locals 1

    const/16 v0, -0x66

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V

    return-void
.end method

.method static synthetic j(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a:Landroid/content/Context;

    return-object v0
.end method

.method private j()V
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u6ca1\u6709\u7f51\u7edc,\u767b\u5f55\u5931\u8d25"

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    const/16 v1, -0x66

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/e;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/e;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method static synthetic j(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V
    .locals 1

    const/16 v0, -0x66

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V

    return-void
.end method

.method static synthetic k(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a:Landroid/content/Context;

    return-object v0
.end method

.method private k()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->j:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->j:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic k(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V
    .locals 1

    const/16 v0, -0x66

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;I)V

    return-void
.end method

.method static synthetic l(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->h:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    return-object v0
.end method

.method static synthetic q(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->k()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    const/16 v2, 0x4e20

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->k()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    const/16 v2, 0x4e23

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected final b()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->b:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->k()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    const v2, 0x9c40

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u81ea\u52a8\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u624b\u52a8\u767b\u5f55\u3002\u5f02\u5e38\u4fe1\u606f:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->j()V

    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 5

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->k()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x1004

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    const v2, 0x9c40

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u81ea\u52a8\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u624b\u52a8\u767b\u5f55\u3002\u5f02\u5e38\u4fe1\u606f:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u3002\u5f02\u5e38\u4ee3\u7801:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->j()V

    return-void
.end method

.method protected final c()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->c:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->k()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x820

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    const/16 v2, 0x7531

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method protected final d()Landroid/view/View;
    .locals 2

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-object v0
.end method

.method protected final d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->j:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaomi/gamecenter/sdk/ui/MiProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->j:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->j:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method protected final e()V
    .locals 0

    return-void
.end method

.method protected final f()V
    .locals 0

    return-void
.end method

.method protected final g()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->k()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->k:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->k:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->l:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
