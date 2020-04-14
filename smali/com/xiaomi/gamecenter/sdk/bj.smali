.class final Lcom/xiaomi/gamecenter/sdk/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

.field final synthetic e:Lcom/xiaomi/gamecenter/sdk/bh;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/bh;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/bj;->e:Lcom/xiaomi/gamecenter/sdk/bh;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/bj;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/bj;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/bj;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/gamecenter/sdk/bj;->d:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const-string v0, "MiGameSDK.SplashScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "click "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bj;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bj;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bj;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/UrlUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "splash"

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bj;->c:Ljava/lang/String;

    const-string v2, "splash_goto"

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/bj;->d:Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    return-void
.end method
