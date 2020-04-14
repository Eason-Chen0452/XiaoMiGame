.class public Lcom/xiaomi/gamecenter/sdk/notice/Helper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq;
    .locals 8

    const-wide/16 v6, 0x0

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->i()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;->setDevAppId(J)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;->setUnionId(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->h()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;->setSdkType(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;->setSdkVersion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;->setChannel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->c()J

    move-result-wide v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_0

    invoke-virtual {v1, v2, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;->setFuid(J)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->a()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;->setDeviceNo(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;->setUa(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;->setGamePackageName(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;->setGameVersionCode(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;->setGameVersionName(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;->setModel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setImeiMd5(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->l()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setImeiSha1(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->m()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setImeiSha2(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->n()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setMacMd5(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->o()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setUa(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/InternetUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setNetwork(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setAndroid(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setOs(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->r()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setRegion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->s()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setLang(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setCarrier(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->t()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setTimezone(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    cmp-long v4, v2, v6

    if-lez v4, :cond_3

    invoke-virtual {v0, v2, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setFuid(J)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    :cond_3
    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/AndroidUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setClientVersion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setLocalTime(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setCid(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->i()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setDevAppId(J)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setSdkType(I)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setSdkJarVersion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setSdkServiceVersion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setExtra(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setSessionId(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/GeneralStatInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/notice/Helper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->setUnionId(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;->setStatInfo(Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$StatInfo;)Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;

    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/NoticeConfigProtos$GetNoticeConfigReq;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method
