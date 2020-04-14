.class public Lcom/xiaomi/gamecenter/sdk/bh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/bh$a;
    }
.end annotation


# static fields
.field private static a:Lcom/xiaomi/gamecenter/sdk/bh;


# instance fields
.field private b:Lcom/xiaomi/gamecenter/sdk/bd$a;

.field private c:Lcom/xiaomi/gamecenter/sdk/bh$a;

.field private d:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

.field private e:Landroid/app/Activity;

.field private f:Landroid/app/Dialog;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/bi;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/bi;-><init>(Lcom/xiaomi/gamecenter/sdk/bh;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bh;->b:Lcom/xiaomi/gamecenter/sdk/bd$a;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/bh;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bh;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public static a()Lcom/xiaomi/gamecenter/sdk/bh;
    .locals 2

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/bh;->a:Lcom/xiaomi/gamecenter/sdk/bh;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/gamecenter/sdk/bh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/bh;->a:Lcom/xiaomi/gamecenter/sdk/bh;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/bh;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/bh;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/bh;->a:Lcom/xiaomi/gamecenter/sdk/bh;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/bh;->a:Lcom/xiaomi/gamecenter/sdk/bh;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/bh;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/wali/gamecenter/report/utils/MD5;->getMD5([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "misdk.splash"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/bh;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/utils/FileUtils;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getImagePortraitUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/bh;->b(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getImageLandscapeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/bh;->b(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "misdk.splash"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getSplashid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "duration"

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getDuration()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "url.landscape"

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getImageLandscapeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "url.portrait"

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getImagePortraitUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "url.action"

    invoke-virtual {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$SplashScreen;->getActionUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "MiGameSDK.SplashScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "store "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/bh;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bh;->f:Landroid/app/Dialog;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "splash"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/bh;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {p0, p1}, Lcom/xiaomi/gamecenter/sdk/bh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "MiGameSDK.SplashScreenManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " exist."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/com/wali/basetool/log/Logger;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_1
    :try_start_1
    const-string v2, "MiGameSDK.SplashScreenManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "download error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcn/com/wali/basetool/log/Logger;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v3, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_2
    :goto_2
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_4
    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    :try_start_5
    invoke-virtual {v5}, Ljava/net/URLConnection;->getContentLength()I

    if-nez v3, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "stream is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_5
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v2, 0x400

    :try_start_6
    new-array v2, v2, [B

    :goto_3
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_6

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_3

    :catch_3
    move-exception v0

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_7
    if-eqz v3, :cond_8

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_8
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_5
    if-eqz v3, :cond_9

    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    :cond_9
    :goto_6
    if-eqz v1, :cond_a

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_a
    :goto_7
    throw v0

    :catch_7
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/bh;)Lcom/xiaomi/gamecenter/sdk/bh$a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bh;->c:Lcom/xiaomi/gamecenter/sdk/bh$a;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/bh;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/bh;->d:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 12

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/bh;->e:Landroid/app/Activity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    :try_start_0
    const-string v2, "mio_layout_splash"

    invoke-static {p1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {p1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/widget/ImageView;

    move-object v8, v0

    const-string v2, "misdk.splash"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "duration"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    :try_start_1
    new-instance v2, Landroid/app/Dialog;

    const-string v3, "splashStyle"

    invoke-static {p1, v3}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->f:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string v2, "misdk.splash"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "url.landscape"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {p1, v2}, Lcom/xiaomi/gamecenter/sdk/bh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->c:Lcom/xiaomi/gamecenter/sdk/bh$a;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->c:Lcom/xiaomi/gamecenter/sdk/bh$a;

    invoke-interface {v2}, Lcom/xiaomi/gamecenter/sdk/bh$a;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->f:Landroid/app/Dialog;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/xiaomi/gamecenter/sdk/bk;

    invoke-direct {v4, p0, v2, v10, v11}, Lcom/xiaomi/gamecenter/sdk/bk;-><init>(Lcom/xiaomi/gamecenter/sdk/bh;Landroid/app/Dialog;J)V

    int-to-long v6, v9

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_2
    :try_start_2
    const-string v2, "misdk.splash"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "url.portrait"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->c:Lcom/xiaomi/gamecenter/sdk/bh$a;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->c:Lcom/xiaomi/gamecenter/sdk/bh$a;

    invoke-interface {v2}, Lcom/xiaomi/gamecenter/sdk/bh$a;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->f:Landroid/app/Dialog;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/xiaomi/gamecenter/sdk/bk;

    invoke-direct {v4, p0, v2, v10, v11}, Lcom/xiaomi/gamecenter/sdk/bk;-><init>(Lcom/xiaomi/gamecenter/sdk/bh;Landroid/app/Dialog;J)V

    int-to-long v6, v9

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    :try_start_3
    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->f:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->f:Landroid/app/Dialog;

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->f:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->a()V

    const-string v2, "misdk.splash"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->d:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {v7, v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    const-string v2, "splash"

    invoke-static {v2, v6, v7}, Lcom/xiaomi/gamecenter/sdk/report/ReportData;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    const-string v2, "misdk.splash"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "url.action"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/bj;

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaomi/gamecenter/sdk/bj;-><init>(Lcom/xiaomi/gamecenter/sdk/bh;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->f:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->f:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->f:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->f:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->f:Landroid/app/Dialog;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/xiaomi/gamecenter/sdk/bk;

    invoke-direct {v4, p0, v2, v10, v11}, Lcom/xiaomi/gamecenter/sdk/bk;-><init>(Lcom/xiaomi/gamecenter/sdk/bh;Landroid/app/Dialog;J)V

    int-to-long v6, v9

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :goto_2
    :try_start_4
    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/bh;->c:Lcom/xiaomi/gamecenter/sdk/bh$a;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/bh;->c:Lcom/xiaomi/gamecenter/sdk/bh$a;

    invoke-interface {v4}, Lcom/xiaomi/gamecenter/sdk/bh$a;->a()V

    :cond_7
    const-string v4, "MiGameSDK.SplashScreenManager"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcn/com/wali/basetool/log/Logger;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->f:Landroid/app/Dialog;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/xiaomi/gamecenter/sdk/bk;

    invoke-direct {v5, p0, v2, v10, v11}, Lcom/xiaomi/gamecenter/sdk/bk;-><init>(Lcom/xiaomi/gamecenter/sdk/bh;Landroid/app/Dialog;J)V

    int-to-long v2, v3

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    move v9, v3

    :goto_3
    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/bh;->f:Landroid/app/Dialog;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/xiaomi/gamecenter/sdk/bk;

    invoke-direct {v5, p0, v3, v10, v11}, Lcom/xiaomi/gamecenter/sdk/bk;-><init>(Lcom/xiaomi/gamecenter/sdk/bh;Landroid/app/Dialog;J)V

    int-to-long v6, v9

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v2

    :catchall_1
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    move v3, v9

    goto :goto_2
.end method

.method public final a(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;Lcom/xiaomi/gamecenter/sdk/bh$a;)V
    .locals 2

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/bh;->c:Lcom/xiaomi/gamecenter/sdk/bh$a;

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/bh;->d:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/bd;->a()Lcom/xiaomi/gamecenter/sdk/bd;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/bh;->b:Lcom/xiaomi/gamecenter/sdk/bd$a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/bd;->a(Lcom/xiaomi/gamecenter/sdk/bd$a;)V

    return-void
.end method
