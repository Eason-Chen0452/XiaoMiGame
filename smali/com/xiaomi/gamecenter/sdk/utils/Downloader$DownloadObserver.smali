.class Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/utils/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadObserver"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

.field private b:J

.field private c:Landroid/os/Handler;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;Landroid/os/Handler;Landroid/content/Context;J)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;->c:Landroid/os/Handler;

    iput-wide p4, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;->b:J

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "MiGameSDK.Downloader"

    iget-wide v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;->b:J

    aput-wide v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;->d:Landroid/content/Context;

    const-string v3, "download"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    invoke-virtual {v0, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bytes_so_far"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v3, "total_size"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_1

    mul-int/lit8 v0, v0, 0x63

    div-int/2addr v0, v3

    :goto_1
    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;->c:Landroid/os/Handler;

    const/16 v4, 0x3eb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "progress"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiGameSDK.Downloader"

    const-string v2, "DownloadObserver.onChange error"

    invoke-static {v1, v2, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method
