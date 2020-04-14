.class final Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/utils/Downloader$a;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;->a:Landroid/app/Activity;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/h;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/h;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;->a:Landroid/app/Activity;

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/i;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/i;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
