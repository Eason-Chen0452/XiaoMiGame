.class Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/web/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebLoginListenerImpl"
.end annotation


# instance fields
.field a:Lcom/xiaomi/gamecenter/sdk/ui/c;

.field b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

.field c:I

.field final synthetic d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/c;Lcom/xiaomi/gamecenter/sdk/utils/AccountType;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->a:Lcom/xiaomi/gamecenter/sdk/ui/c;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    iput p4, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v1

    const v2, 0x9c40

    const-string v3, "\u7b2c\u4e09\u65b9\u767b\u5f55\u51fa\u73b0\u5f02\u5e38"

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xfb6

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;->ACTION_OK:Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;Lcom/xiaomi/gamecenter/sdk/ui/ActionTransfor$ActionResult;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->b(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/MiLayout;->a(Landroid/content/Context;)V

    return-void

    :cond_2
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xfb4

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x4e21

    const-string v3, "\u6b63\u5728\u767b\u5f55..."

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;

    iget v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->c:I

    const/4 v3, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-object v2, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaomi/gamecenter/sdk/utils/AccountType;)V

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    const/16 v2, 0x819

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    :cond_1
    :goto_0
    new-instance v1, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->a:Lcom/xiaomi/gamecenter/sdk/ui/c;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->d(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/xiaomi/gamecenter/sdk/milink/LoginForSDK;-><init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/ui/c;Lcom/xiaomi/gamecenter/sdk/milink/LoginEvent$OAuthResultEvent;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void

    :cond_2
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    const/16 v2, 0x816

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->c(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)V

    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->b:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout$WebLoginListenerImpl;->d:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewLoginLayout;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x4e22

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
