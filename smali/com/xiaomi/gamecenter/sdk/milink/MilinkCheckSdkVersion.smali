.class public Lcom/xiaomi/gamecenter/sdk/milink/MilinkCheckSdkVersion;
.super Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V
    .locals 4

    const-string v0, "gamesdk.config.checksdkversion"

    invoke-direct {p0, p1, v0, p3}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;->getNewAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setDevAppId(J)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;

    const-string v0, "SDK_MI_SP_3.1.2"

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setJarSdkVersion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;

    invoke-virtual {v1, p2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setServiceVersion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;

    :try_start_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setImei(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setUa(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setGamePackageName(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/InternetUtil;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setAccess(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setGameVersionCode(I)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setGameVersionName(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    invoke-static {p1}, Lcom/wali/gamecenter/report/utils/ZSIMInfo;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setImsi(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;

    invoke-static {p1}, Lcom/wali/gamecenter/report/utils/ZSIMInfo;->getMacAddressNew(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setMac(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;

    invoke-static {p1}, Lcom/wali/gamecenter/report/utils/ZSIMInfo;->getSIMOperatorEnName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setCarrier(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setTimezone(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setCountry(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sLoginActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sLoginActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setResolution(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :cond_0
    :goto_5
    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setCurrentChannel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setImeiMd5(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;

    const-string v0, "channel"

    invoke-static {p1, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ChannelPreference;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setFirstChannel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;

    :try_start_6
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils;->a()Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->getBaseVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/utils/OSUtils$ROM;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->setOs(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    invoke-virtual {v1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionReq;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkCheckSdkVersion;->a:Lcom/google/protobuf/GeneratedMessage;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method


# virtual methods
.method public final a([B)Lcom/google/protobuf/GeneratedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getRetCode()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkCheckSdkVersion;->e:I

    :cond_0
    return-object v0
.end method
