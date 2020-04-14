.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/e;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/e;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    sget-boolean v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->d:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "market://details/detailmini?id=%s&finishWhenOpen=true&back=true"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "com.xiaomi.gamecenter.sdk.service"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MiGameSDK.MiFloatHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startInstallInAppStore url "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/e;->a:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/e;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/e;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/e;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/b;->b(Landroid/content/Context;)V

    goto :goto_0
.end method
