.class final Lcom/xiaomi/gamecenter/sdk/ui/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/ui/h;->b:Ljava/lang/String;

    iput p3, p0, Lcom/xiaomi/gamecenter/sdk/ui/h;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;->a()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;->a()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/h;->b:Ljava/lang/String;

    iget v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/h;->c:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;->a(Landroid/widget/Toast;)Landroid/widget/Toast;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/UiUtils;->a()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
