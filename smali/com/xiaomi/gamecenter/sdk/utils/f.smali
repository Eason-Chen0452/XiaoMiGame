.class final Lcom/xiaomi/gamecenter/sdk/utils/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    const-string v0, "http://app.migc.xiaomi.com/contentapi/page/json/data/9243"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ConnectionUtils;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ServiceInfo"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/utils/SdkPreferenceUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ServiceInfoCheckTime"

    sget-wide v2, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/SdkPreferenceUtils;->a(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
