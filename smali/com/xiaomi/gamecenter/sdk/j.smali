.class final Lcom/xiaomi/gamecenter/sdk/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/DownloadHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/DownloadHandler;Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/j;->c:Lcom/xiaomi/gamecenter/sdk/DownloadHandler;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/j;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/j;->b:Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "0"

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->isSdkServiceExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/j;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.xiaomi.gamecenter.sdk.service"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/j;->a:Landroid/content/Context;

    invoke-static {v2}, Lcn/com/wali/basetool/utils/SystemConfig;->e(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/j;->a:Landroid/content/Context;

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    sget-object v4, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {v3, v4}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    invoke-static {v2, v0, v3}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageFactory;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v2

    const/16 v3, 0x89f

    invoke-virtual {v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getRetCode()I

    move-result v2

    const/16 v3, 0x7d3

    if-eq v3, v2, :cond_2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getConfigFromServer()V

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Ljava/lang/String;)V

    :goto_2
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/j;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://app.xiaomi.com/details?id=com.xiaomi.gamecenter.sdk.service&back=true&ref=gamesdkjar&startDownload=true"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/j;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_3
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;

    invoke-direct {v2, v0}, Lcom/xiaomi/gamecenter/sdk/bean/DownloadDialogInfo;-><init>(Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sDownloadHandler:Lcom/xiaomi/gamecenter/sdk/DownloadHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/DownloadHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;->a(Z)V

    goto :goto_3

    :cond_4
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v2, 0x8a0

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getConfigFromServer()V

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Ljava/lang/String;)V

    goto :goto_2
.end method
