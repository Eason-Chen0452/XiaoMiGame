.class final Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/WxCallBack;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onWxLoginCancel()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->c(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    return-void
.end method

.method public final onWxLoginFail()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xfbf

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->c(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->i(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final onWxLoginSuccess(Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;

    const/4 v1, 0x1

    const/4 v7, 0x0

    sget-object v8, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_WX:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    move-object v6, v2

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaomi/gamecenter/sdk/utils/AccountType;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v1, v1, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    const-string v2, "\u6b63\u5728\u767b\u5f55..."

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    const/16 v2, 0x817

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v1, v1, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v3, v3, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v4, v4, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->d(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    move-result-object v4

    invoke-direct {v2, v1, v3, v0, v4}, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;-><init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/ui/c;Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v1, v1, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x9c40

    const-string v3, "\u5fae\u4fe1\u767b\u5f55\u51fa\u73b0\u5f02\u5e38"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xfbf

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->d(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/d;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/a;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->j(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
