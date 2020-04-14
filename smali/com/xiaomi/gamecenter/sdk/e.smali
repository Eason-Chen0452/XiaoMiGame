.class final Lcom/xiaomi/gamecenter/sdk/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;

.field final synthetic b:Lcom/xiaomi/gamecenter/sdk/DownloadHandler;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/DownloadHandler;Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/e;->b:Lcom/xiaomi/gamecenter/sdk/DownloadHandler;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/e;->a:Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/e;->a:Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/DownloadFileUtils;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
