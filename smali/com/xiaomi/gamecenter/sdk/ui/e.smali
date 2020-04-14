.class final Lcom/xiaomi/gamecenter/sdk/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/hy/dj/PayResultCallback;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/e;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0xb9

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xc0d

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/e;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->a(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xc0c

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    goto :goto_0
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xc0b

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/e;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->b(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)V

    return-void
.end method
