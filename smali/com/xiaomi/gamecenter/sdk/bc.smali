.class final Lcom/xiaomi/gamecenter/sdk/bc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/bc;->c:Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/bc;->a:Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/bc;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x89e

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/bc;->a:Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    invoke-virtual {v3}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getGuideLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/bc;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bc;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bc;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bc;->b:Landroid/content/Context;

    const-string v1, "\u9700\u8981\u6d4f\u89c8\u5668\u624d\u80fd\u6253\u5f00\u94fe\u63a5"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
