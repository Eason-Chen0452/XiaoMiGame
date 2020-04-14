.class final Lcom/xiaomi/gamecenter/sdk/ui/actlayout/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/e;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x7fb

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/e;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/e;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/e;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/e;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/e;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v2

    const v3, 0xc350

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
