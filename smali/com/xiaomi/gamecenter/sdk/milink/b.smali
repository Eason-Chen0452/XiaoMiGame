.class final Lcom/xiaomi/gamecenter/sdk/milink/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mi/milink/sdk/session/common/ResponseListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/milink/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/milink/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/milink/b;->a:Lcom/xiaomi/gamecenter/sdk/milink/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataSendFailed(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/b;->a:Lcom/xiaomi/gamecenter/sdk/milink/a;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/b;->a:Lcom/xiaomi/gamecenter/sdk/milink/a;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/a;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/b;->a:Lcom/xiaomi/gamecenter/sdk/milink/a;

    new-instance v1, Lcom/mi/milink/sdk/client/MiLinkException;

    invoke-direct {v1, p1, p2}, Lcom/mi/milink/sdk/client/MiLinkException;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/a;->a(Lcom/xiaomi/gamecenter/sdk/milink/a;Ljava/lang/Throwable;)V

    :cond_0
    const-string v0, "-1"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    const/16 v2, 0x1d66

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final onDataSendSuccess(ILcom/mi/milink/sdk/aidl/PacketData;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/b;->a:Lcom/xiaomi/gamecenter/sdk/milink/a;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/a;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/b;->a:Lcom/xiaomi/gamecenter/sdk/milink/a;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/a;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/b;->a:Lcom/xiaomi/gamecenter/sdk/milink/a;

    invoke-static {v0, p2}, Lcom/xiaomi/gamecenter/sdk/milink/a;->a(Lcom/xiaomi/gamecenter/sdk/milink/a;Ljava/lang/Object;)V

    if-nez p2, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x1d64

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x1d65

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(ILjava/lang/String;)V

    goto :goto_0
.end method
