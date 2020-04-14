.class final Lcom/xiaomi/gamecenter/sdk/ac;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/pm/PackageInfo;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/RewardListener;

.field final synthetic d:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Ljava/lang/String;Landroid/content/pm/PackageInfo;Lcom/xiaomi/gamecenter/sdk/RewardListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ac;->d:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ac;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/ac;->b:Landroid/content/pm/PackageInfo;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/ac;->c:Lcom/xiaomi/gamecenter/sdk/RewardListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$700()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ac;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ac;->b:Landroid/content/pm/PackageInfo;

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ac;->b:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageFactory;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "errcode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "downloadFrom"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "launchFrom"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "isReward"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v4, 0xc8

    if-ne v4, v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x803

    invoke-virtual {v0, v4, v5}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReportBonus(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ac;->c:Lcom/xiaomi/gamecenter/sdk/RewardListener;

    invoke-interface {v0, v2, v3, v1}, Lcom/xiaomi/gamecenter/sdk/RewardListener;->onSuccess(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x804

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReportBonus(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ac;->c:Lcom/xiaomi/gamecenter/sdk/RewardListener;

    invoke-interface {v1, v0}, Lcom/xiaomi/gamecenter/sdk/RewardListener;->onError(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x805

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReportBonus(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
