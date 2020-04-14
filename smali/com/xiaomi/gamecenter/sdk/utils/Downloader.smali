.class public Lcom/xiaomi/gamecenter/sdk/utils/Downloader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;,
        Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;,
        Lcom/xiaomi/gamecenter/sdk/utils/Downloader$a;,
        Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadHandler;
    }
.end annotation


# static fields
.field private static e:Ljava/io/File;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/DownloadManager;

.field private c:J

.field private d:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/os/Handler;

.field private l:Lcom/xiaomi/gamecenter/sdk/utils/Downloader$a;

.field private m:Landroid/content/BroadcastReceiver;

.field private n:Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;-><init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/utils/Downloader$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/utils/Downloader$a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->c:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->d:I

    const-string v0, "temp.apk"

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->h:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadHandler;-><init>(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->k:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/utils/d;-><init>(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->m:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->l:Lcom/xiaomi/gamecenter/sdk/utils/Downloader$a;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a:Landroid/content/Context;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->e:Ljava/io/File;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;Landroid/app/DownloadManager;)Landroid/app/DownloadManager;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->b:Landroid/app/DownloadManager;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;)Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->n:Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Lcom/xiaomi/gamecenter/sdk/utils/Downloader$a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->l:Lcom/xiaomi/gamecenter/sdk/utils/Downloader$a;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a(Ljava/io/File;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private a(J)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "MiGameSDK.Downloader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkTaskIfExist "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v3, v0, [J

    aput-wide p1, v3, v1

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->b:Landroid/app/DownloadManager;

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    move v0, v1

    :goto_1
    :sswitch_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v1, v0

    :goto_2
    const-string v0, "MiGameSDK.Downloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exist ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->b:Landroid/app/DownloadManager;

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager;->remove([J)I

    :sswitch_2
    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->b:Landroid/app/DownloadManager;

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager;->remove([J)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "MiGameSDK.Downloader"

    const-string v4, "continue task if exist"

    invoke-static {v3, v4, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :sswitch_3
    move v0, v1

    goto :goto_1

    :sswitch_4
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->b:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p1, v3, v4

    invoke-virtual {v0, v3}, Landroid/app/DownloadManager;->remove([J)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
    .end sparse-switch
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a(J)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->b(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;J)J
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->c:J

    return-wide p1
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)V
    .locals 6

    new-instance v0, Landroid/app/DownloadManager$Query;

    invoke-direct {v0}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->c:J

    aput-wide v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->b:Landroid/app/DownloadManager;

    invoke-virtual {v1, v0}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "status"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->d:I

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_1
    return-void

    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->k:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "MiGameSDK.Downloader"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :sswitch_2
    :try_start_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->k:Landroid/os/Handler;

    const/16 v2, 0x3ec

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "local_uri"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-le v3, v4, :cond_2

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_2
    const-string v3, "MiGameSDK.Downloader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fileName "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MiGameSDK.Downloader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fileUri "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    :try_start_4
    const-string v0, "local_filename"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :sswitch_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->k:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private static b(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MiGameSDK.Downloader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "targetMd5 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "MiGameSDK.Downloader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is exist? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-static {p0, p1}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->c(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MiGameSDK.Downloader"

    const-string v3, "Check apk exist in cache error."

    invoke-static {v2, v3, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->l:Lcom/xiaomi/gamecenter/sdk/utils/Downloader$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->l:Lcom/xiaomi/gamecenter/sdk/utils/Downloader$a;

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$a;->b()V

    :cond_0
    const-string v0, "MiGameSDK.Downloader"

    const-string v1, "network is error."

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/wali/basetool/utils/MD5;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "MiGameSDK.Downloader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fmd5 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MiGameSDK.Downloader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "targetMd5 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "MiGameSDK.Downloader"

    const-string v3, "Check md5 error."

    invoke-static {v2, v3, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->c:J

    return-wide v0
.end method

.method static synthetic f()Ljava/io/File;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->e:Ljava/io/File;

    return-object v0
.end method

.method static synthetic f(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Landroid/app/DownloadManager;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->b:Landroid/app/DownloadManager;

    return-object v0
.end method

.method static synthetic k(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;)Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->n:Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadObserver;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/utils/Downloader$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->l:Lcom/xiaomi/gamecenter/sdk/utils/Downloader$a;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->f:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->m:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->h:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a:Landroid/content/Context;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->e:Ljava/io/File;

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MiGameSDK.Downloader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download url error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->j:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;-><init>(Lcom/xiaomi/gamecenter/sdk/utils/Downloader;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader$DownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->i:Ljava/lang/String;

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->d:I

    return v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->j:Ljava/lang/String;

    return-void
.end method

.method public final e()Z
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->c:J

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/Downloader;->a(J)Z

    move-result v0

    return v0
.end method
