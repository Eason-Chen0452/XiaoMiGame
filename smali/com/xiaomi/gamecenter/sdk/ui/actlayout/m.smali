.class final Lcom/xiaomi/gamecenter/sdk/ui/actlayout/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/DownloadServiceUtil;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;Lcom/xiaomi/gamecenter/sdk/ui/actlayout/DownloadServiceUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/m;->b:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/l;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/m;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/DownloadServiceUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/m;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/DownloadServiceUtil;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/DownloadServiceUtil;->a()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x8fe

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
