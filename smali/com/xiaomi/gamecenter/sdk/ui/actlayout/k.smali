.class final Lcom/xiaomi/gamecenter/sdk/ui/actlayout/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/k;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/k;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->g(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->a(Lcom/xiaomi/gamecenter/sdk/utils/AccountType;)Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v0, "\u8bf7\u7a0d\u7b49"

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/k;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->h(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/k;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->h(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/k;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->h(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x7530

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/k;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->h(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/k;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->h(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/k;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->h(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Landroid/os/Handler;

    move-result-object v4

    const v5, 0x9c40

    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_MI:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v1, v0, :cond_4

    const-string v0, "\u5c0f\u7c73\u7528\u6237"

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v1, v0, :cond_5

    const-string v0, "QQ\u7528\u6237"

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_WX:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v1, v0, :cond_6

    const-string v0, "\u5fae\u4fe1\u7528\u6237"

    goto :goto_0

    :cond_6
    const-string v0, "\u8bf7\u7a0d\u7b49"

    goto :goto_0
.end method
