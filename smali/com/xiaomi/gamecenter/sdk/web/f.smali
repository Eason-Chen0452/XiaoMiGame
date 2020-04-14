.class final Lcom/xiaomi/gamecenter/sdk/web/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/web/f;->a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x7e9

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/f;->a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/f;->a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->a(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)Lcom/xiaomi/gamecenter/sdk/web/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/web/g;->a()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/web/f;->a:Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;->b(Lcom/xiaomi/gamecenter/sdk/web/VerifyIDWebFragment;)V

    return-void
.end method
