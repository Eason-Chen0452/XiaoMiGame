.class Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/utils/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->c:Ljava/lang/String;

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->f()Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->d(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->f()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;Ljava/io/File;)V

    :goto_0
    return-object v7

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->e(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MiGameSDK.Downloader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download task exist "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->e(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->d(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->c(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)V

    new-instance v1, Landroid/app/DownloadManager$Request;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->f(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->g(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->h(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->i(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const/4 v0, 0x3

    :try_start_3
    invoke-virtual {v1, v0}, Landroid/app/DownloadManager$Request;->setAllowedNetworkTypes(I)Landroid/app/DownloadManager$Request;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->h(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "download"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    invoke-static {v2, v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;Landroid/app/DownloadManager;)Landroid/app/DownloadManager;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->j(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Landroid/app/DownloadManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->b(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;J)J

    iget-object v6, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->d(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->h(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->e(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;-><init>(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;Landroid/os/Handler;Landroid/content/Context;J)V

    invoke-static {v6, v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;)Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->h(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://downloads/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->k(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a:Lcom/xiaomi/gamecenter/sdk/utils/Downloader;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->i(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const-string v2, "MiGameSDK.Downloader"

    const-string v3, "Set ExternalFilesDir error, try set ExternalPublicDir"

    invoke-static {v2, v3, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
