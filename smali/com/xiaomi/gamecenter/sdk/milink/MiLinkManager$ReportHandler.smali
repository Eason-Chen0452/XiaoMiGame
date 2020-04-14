.class Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager$ReportHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReportHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager$ReportHandler;->a:Lcom/xiaomi/gamecenter/sdk/milink/MiLinkManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->reportMilink(JILjava/lang/String;)V

    return-void
.end method
