.class final Lcom/xiaomi/gamecenter/sdk/ui/actlayout/r;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/r;->b:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/r;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/r;->b:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;->g(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectLoginMethod;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x8fd

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/r;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
