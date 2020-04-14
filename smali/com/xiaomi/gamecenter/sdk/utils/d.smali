.class final Lcom/xiaomi/gamecenter/sdk/utils/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/d;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/d;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->b(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/d;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->c(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)V

    goto :goto_0
.end method
