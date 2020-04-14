.class public Lcom/xiaomi/hy/dj/e/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;

    invoke-direct {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;-><init>()V

    const-string v1, "mi"

    invoke-virtual {v0, v1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->setChannel(Ljava/lang/String;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->setContext(Landroid/content/Context;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;

    move-result-object v0

    const-string v1, "SDK_VISITOR_DJPAY_1.1.6"

    invoke-virtual {v0, v1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->setJarVersion(Ljava/lang/String;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->setReportDAU(Z)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;

    move-result-object v0

    const-string v1, "com.xiaomi.hy.dj"

    invoke-virtual {v0, v1}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->setMonitorPkgName(Ljava/lang/String;)Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig$Builder;->build()Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;->getsInstance()Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/game/plugin/stat/MiGamePluginStat;->initWithChannelAndPkgNameList(Lcom/xiaomi/game/plugin/stat/MiGamePluginStatConfig;)V

    return-void
.end method
