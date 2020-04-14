.class final Lcom/xiaomi/gamecenter/sdk/verifyid/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/web/g;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/a;->a:Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x7ec

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/a;->a:Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->a:Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->c(Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;)Lcom/xiaomi/gamecenter/sdk/web/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/web/h;->a()V

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x7eb

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/verifyid/a;->a:Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID$VerifyIDTask;->a:Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->c(Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;)Lcom/xiaomi/gamecenter/sdk/web/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/web/h;->b()V

    return-void
.end method
