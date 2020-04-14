.class public Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetSplashScreen;
.super Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    .locals 4

    const-string v0, "gamesdk.config.getsplashscreen"

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    invoke-direct {v1, p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkBaseRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-static {}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;->newBuilder()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    move-result-object v2

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;->setBusinessId(I)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;->setChannel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    const-wide/16 v0, 0x0

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_0
    invoke-virtual {v2, v0, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;->setDevAppId(J)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    invoke-static {p1}, Lcom/xiaomi/gamecenter/sdk/utils/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;->setDeviceNo(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;->setGamePackageName(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;->setGameVersionCode(I)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;->setGameVersionName(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;->setSdkType(I)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    const-string v0, "SDK_MI_SP_3.1.2"

    invoke-virtual {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;->setSdkVersion(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;->setModel(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/b;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;->setUa(Ljava/lang/String;)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;

    invoke-virtual {v2}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq$Builder;->build()Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenReq;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetSplashScreen;->a:Lcom/google/protobuf/GeneratedMessage;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a([B)Lcom/google/protobuf/GeneratedMessage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-static {p1}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->parseFrom([B)Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/SplashScreenProto$GetSplashScreenRsp;->getRetCode()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkGetSplashScreen;->e:I

    :cond_0
    return-object v0
.end method
