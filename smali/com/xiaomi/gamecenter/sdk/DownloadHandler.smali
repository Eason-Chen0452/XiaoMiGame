.class public Lcom/xiaomi/gamecenter/sdk/DownloadHandler;
.super Landroid/os/Handler;


# instance fields
.field private a:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/DownloadHandler;Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x8a5

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/j;-><init>(Lcom/xiaomi/gamecenter/sdk/DownloadHandler;Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static a(Z)V
    .locals 4

    const/16 v2, 0x8

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    if-eqz p0, :cond_0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sDownloadHandler:Lcom/xiaomi/gamecenter/sdk/DownloadHandler;

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->removeMessages(I)V

    :cond_0
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sDownloadHandler:Lcom/xiaomi/gamecenter/sdk/DownloadHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v1, 0x0

    const/4 v13, -0x1

    const/4 v12, -0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v3, Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;

    invoke-direct {v3, p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;-><init>(Landroid/os/Handler;Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;)V

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :pswitch_1
    invoke-static {v10}, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a(Z)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v4

    const/16 v5, 0x898

    invoke-virtual {v4, v5}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    sget-object v4, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sLoginActivity:Landroid/app/Activity;

    if-eqz v4, :cond_1

    if-nez v2, :cond_2

    :cond_1
    invoke-static {v11}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Z)V

    goto :goto_1

    :cond_2
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_6

    new-instance v4, Landroid/app/ProgressDialog;

    sget-object v5, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sLoginActivity:Landroid/app/Activity;

    const v6, 0x1030239

    invoke-direct {v4, v5, v6}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    :goto_2
    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v11}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v10}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v10}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    const-string v5, "\u5347\u7ea7\u4e2d"

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    const-string v5, "\u4e0b\u8f7d\u4e2d..."

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    const-string v5, "%1dKB/%2dKB"

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->c()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v5, v6

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setMax(I)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    const-string v5, "\u7ee7\u7eed\u767b\u5f55"

    new-instance v6, Lcom/xiaomi/gamecenter/sdk/b;

    invoke-direct {v6, p0, v2, v3}, Lcom/xiaomi/gamecenter/sdk/b;-><init>(Lcom/xiaomi/gamecenter/sdk/DownloadHandler;Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;)V

    invoke-virtual {v4, v13, v5, v6}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    const/4 v5, -0x2

    const-string v6, "\u9000\u51fa\u6e38\u620f"

    new-instance v7, Lcom/xiaomi/gamecenter/sdk/c;

    invoke-direct {v7, p0}, Lcom/xiaomi/gamecenter/sdk/c;-><init>(Lcom/xiaomi/gamecenter/sdk/DownloadHandler;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->f()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v12, v5, v1}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_3
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v12}, Landroid/app/ProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v4, Lcom/xiaomi/gamecenter/sdk/d;

    invoke-direct {v4, p0, v0, v2}, Lcom/xiaomi/gamecenter/sdk/d;-><init>(Lcom/xiaomi/gamecenter/sdk/DownloadHandler;Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v13}, Landroid/app/ProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    const/4 v4, -0x2

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-eqz v1, :cond_4

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_4
    if-eqz v2, :cond_5

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_5
    if-nez v0, :cond_7

    invoke-static {v11}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Z)V

    goto/16 :goto_1

    :cond_6
    new-instance v4, Landroid/app/ProgressDialog;

    sget-object v5, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sLoginActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    goto/16 :goto_2

    :cond_7
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/e;

    invoke-direct {v1, p0, v3}, Lcom/xiaomi/gamecenter/sdk/e;-><init>(Lcom/xiaomi/gamecenter/sdk/DownloadHandler;Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v11}, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a(Z)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    div-int/lit16 v0, v0, 0x3e8

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    goto/16 :goto_1

    :pswitch_4
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->removeMessages(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x899

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    const-string v1, "\u6821\u9a8c\u4e2d"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :pswitch_5
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x8a2

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    const-string v1, "\u5b89\u88c5\u4e2d...\n\u8bf7\u786e\u8ba4\u5b89\u88c5\u6210\u529f\u540e\u70b9\u51fb\u7ee7\u7eed\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v13}, Landroid/app/ProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    const-string v1, "\u5b89\u88c5\u4e2d...\n\u8bf7\u786e\u8ba4\u5b89\u88c5\u6210\u529f\u5e76\u7ed9\u4e88\u5168\u90e8\u6743\u9650\u540e\u70b9\u51fb\u7ee7\u7eed\u767b\u5f55"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_3

    :pswitch_6
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    const-string v1, ""

    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v10}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5f02\u5e38-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_4

    :pswitch_7
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x89a

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v10}, Landroid/app/ProgressDialog;->setProgress(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    const-string v1, "\u91cd\u8bd5\u8fc7\u591a\uff0c\u4e0d\u518d\u91cd\u8bd5\uff0c\u8bf7\u91cd\u542f\u6e38\u620f"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v13}, Landroid/app/ProgressDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    :pswitch_8
    if-nez v0, :cond_9

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getConfigFromServer()V

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    sget-object v4, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sLoginActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/ui/MiAlertDialog;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "\u63d0\u9192"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/b;->c(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string v5, "\u5b89\u88c5\u4e2d...\n\u8bf7\u786e\u8ba4\u5b89\u88c5\u6210\u529f\u540e\u70b9\u51fb\u7ee7\u7eed\u767b\u5f55"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_5
    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->d()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "\u9000\u51fa\u6e38\u620f"

    new-instance v6, Lcom/xiaomi/gamecenter/sdk/f;

    invoke-direct {v6, p0}, Lcom/xiaomi/gamecenter/sdk/f;-><init>(Lcom/xiaomi/gamecenter/sdk/DownloadHandler;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_6
    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->f()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_a
    const-string v1, "\u7ee7\u7eed\u767b\u5f55"

    new-instance v5, Lcom/xiaomi/gamecenter/sdk/h;

    invoke-direct {v5, p0, v2, v3}, Lcom/xiaomi/gamecenter/sdk/h;-><init>(Lcom/xiaomi/gamecenter/sdk/DownloadHandler;Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;)V

    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v12}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/i;

    invoke-direct {v3, p0, v0, v2}, Lcom/xiaomi/gamecenter/sdk/i;-><init>(Lcom/xiaomi/gamecenter/sdk/DownloadHandler;Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_b
    const-string v5, "\u5b89\u88c5\u4e2d...\n\u8bf7\u786e\u8ba4\u5b89\u88c5\u6210\u529f\u5e76\u7ed9\u4e88\u5168\u90e8\u6743\u9650\u540e\u70b9\u51fb\u7ee7\u7eed\u767b\u5f55"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :cond_c
    const-string v5, "\u53d6\u6d88"

    new-instance v6, Lcom/xiaomi/gamecenter/sdk/g;

    invoke-direct {v6, p0}, Lcom/xiaomi/gamecenter/sdk/g;-><init>(Lcom/xiaomi/gamecenter/sdk/DownloadHandler;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_2
    .end packed-switch
.end method
