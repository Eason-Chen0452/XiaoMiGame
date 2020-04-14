.class public Lcom/xiaomi/gamecenter/channel/v1reader/ChannelUtil;
.super Ljava/lang/Object;


# static fields
.field private static mChannelCache:Ljava/lang/String;

.field private static mRawChannelCache:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteChannel(Ljava/io/File;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/v1reader/Util;->judgeChannelPackageMode(Ljava/io/File;)I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->deleteChannelForCmd(Ljava/io/File;)Z

    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/writer/ChannelWriter;->deleteChannelForV2(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/channel/writer/ChannelWriter;->deleteChannelForV3(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static getHashWithoutChannel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/gamecenter/channel/v1reader/Util;->judgeChannelPackageMode(Ljava/io/File;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/xiaomi/gamecenter/channel/common/V1SchemeUtil;->getHashWithoutChannel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p0, p1}, Lcom/xiaomi/gamecenter/channel/common/V2SchemeUtil;->getHashWithoutChannel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p0, p1}, Lcom/xiaomi/gamecenter/channel/common/V3SchemeUtil;->getHashWithoutChannel(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getRawChannelInfo(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/gamecenter/channel/reader/ChannelReader;->getChannelByZipComment(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/xiaomi/gamecenter/channel/reader/ChannelReader;->getChannel(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/xiaomi/gamecenter/channel/v1reader/Util;->getRawChannelFromDatFile(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "{\"cid\":\"meng_100_1_android\",\"version\":\"1.0\"}"

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static readChannelId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/channel/v1reader/ChannelUtil;->mChannelCache:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/channel/v1reader/ChannelUtil;->mChannelCache:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/v1reader/Util;->getApkFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/channel/v1reader/ChannelUtil;->readChannelId(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/channel/v1reader/ChannelUtil;->mChannelCache:Ljava/lang/String;

    goto :goto_0
.end method

.method public static readChannelId(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/gamecenter/channel/v1reader/Util;->readChannel(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/v1reader/Util;->getChannelFromAssets(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "meng_100_1_android"

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static writeChannel(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/xiaomi/gamecenter/channel/v1reader/Util;->judgeChannelPackageMode(Ljava/io/File;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/xiaomi/gamecenter/channel/v1reader/Util;->generateV1ChannelApk(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p0, p1}, Lcom/xiaomi/gamecenter/channel/v1reader/Util;->generateV2ChannelApk(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p0, p1}, Lcom/xiaomi/gamecenter/channel/v1reader/Util;->generateV3ChannelApk(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
