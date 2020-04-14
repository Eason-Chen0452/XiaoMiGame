.class final Lcom/xiaomi/gamecenter/sdk/aw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/pay/b;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/aw;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/aw;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/aw;->c:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/16 v2, 0x99

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aw;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->ordinal()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(ILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aw;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xc12

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aw;->c:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/SDKPaymentUtil;->a(ILcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Payment Code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",ErrMsg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/aw;->b:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x9a

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    const/16 v0, 0x2c9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x25e

    if-ne p1, v0, :cond_1

    :cond_0
    const/16 v0, -0x4655

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aw;->c:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/SDKPaymentUtil;->a(ILcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, -0x4653

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/aw;->c:Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/SDKPaymentUtil;->a(ILcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V

    goto :goto_0
.end method
