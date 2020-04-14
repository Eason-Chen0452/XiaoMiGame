.class final Lcom/xiaomi/gamecenter/sdk/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/r;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/r;->a:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/r;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v2, 0x0

    const-string v0, "0"

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/floatwindow/MiFloatManager;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1700()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1700()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1700()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.xiaomi.gamecenter.sdk.service"

    const/16 v4, 0x40

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1700()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/com/wali/basetool/utils/SystemConfig;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1700()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    sget-object v4, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {v3, v4}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    invoke-static {v1, v0, v3}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageFactory;->a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    :try_start_3
    sget-boolean v0, Lcn/com/wali/basetool/log/Logger;->a:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "note:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getNote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "guide word:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getGuideWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :cond_1
    const-string v0, "MiGameSDK.MiCommplatform"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkSdkVersionRsp "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v2, 0x89f

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getRetCode()I

    move-result v0

    const/16 v2, 0xc8

    if-eq v2, v0, :cond_2

    const/16 v2, 0x7d1

    if-eq v2, v0, :cond_2

    const/16 v2, 0x3e9

    if-eq v2, v0, :cond_2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1900()Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/r;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Ljava/lang/String;)V

    :goto_3
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/r;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sendToastMsg()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/r;->a:Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;

    const/16 v1, -0x66

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;->finishLoginProcess(ILcom/xiaomi/gamecenter/sdk/entry/MiAccountInfo;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/r;->c:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1802(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Z)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v1, v2

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$1900()Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    :cond_5
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x8a0

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/r;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_4
.end method
