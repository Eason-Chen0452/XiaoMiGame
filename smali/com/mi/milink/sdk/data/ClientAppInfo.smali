.class public Lcom/mi/milink/sdk/data/ClientAppInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;
    }
.end annotation


# static fields
.field public static final CARTOON_APP_ID:I = 0x2719

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mi/milink/sdk/data/ClientAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_LANGUAGE_CODE:Ljava/lang/String; = "zh_CN"

.field public static final FORUM_APP_ID:I = 0x2715

.field public static final GAME_CENTER_APP_ID:I = 0x4e21

.field public static final GAME_LOGIN_PAY_SDK:I = 0x4e22

.field public static final KNIGHTS_APP_ID:I = 0x271a

.field public static final LIVE_APP_ID:I = 0x2717

.field public static final LIVE_PUSH_SDK_BOTTOM:I = 0x186a1

.field public static final LIVE_PUSH_SDK_UP:I = 0x30d40

.field public static final LIVE_SDK_APP_ID:I = 0x2718

.field public static final MILIAO_2:I = 0x271e

.field public static final MILIAO_APP_ID:I = 0x2714

.field public static final MILIAO_APP_ID_TEMP:I = 0x2712

.field public static final MI_GAME_CHIJI_APP_ID:I = 0x4e26

.field public static final MI_NEW_GAME_CENTER_APP_ID:I = 0x4e25

.field public static final MI_SHOP_APP_ID:I = 0x4e23

.field public static final MODE_LONG_CONNECTION:I = 0x0

.field public static final MODE_MEDIUM_CONNECTION:I = 0x1

.field public static final ON_APP_ID:I = 0x271b

.field public static final SUPPORT_APP_ID:I = 0x2716

.field public static final VTALK_APP_ID:I = 0x2711

.field public static final XIAOMI_PUSH_APP_ID:I = 0x7531

.field public static final YI_MI_BUY:I = 0x271c


# instance fields
.field private appId:I

.field private appName:Ljava/lang/String;

.field private backServer:Ljava/lang/String;

.field private customTag:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private gv:Ljava/lang/String;

.field private isHeartBeatEnable:Z

.field private isIpModle:Z

.field private languageCode:Ljava/lang/String;

.field private logPath:Ljava/lang/String;

.field public mIpConfig:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

.field private mMode:I

.field private mipushAppId:Ljava/lang/String;

.field private mipushAppKey:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private platformName:Ljava/lang/String;

.field public releaseChannel:Ljava/lang/String;

.field private serviceProcessName:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milink/sdk/data/ClientAppInfo$1;

    invoke-direct {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo$1;-><init>()V

    sput-object v0, Lcom/mi/milink/sdk/data/ClientAppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->appId:I

    const-string v0, "and"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->platformName:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->appName:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->versionName:Ljava/lang/String;

    iput v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->versionCode:I

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->releaseChannel:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->packageName:Ljava/lang/String;

    iput v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mMode:I

    const-string v0, "zh_CN"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->languageCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->logPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mipushAppId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mipushAppKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->gv:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->serviceProcessName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->domain:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->backServer:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->isHeartBeatEnable:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->customTag:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mIpConfig:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$000(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->appId:I

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$100(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->platformName:Ljava/lang/String;

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$200(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->versionCode:I

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$300(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->versionName:Ljava/lang/String;

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$400(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->appName:Ljava/lang/String;

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$500(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->releaseChannel:Ljava/lang/String;

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$600(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$700(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->serviceProcessName:Ljava/lang/String;

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$800(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->languageCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$900(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->logPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$1000(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mipushAppId:Ljava/lang/String;

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$1100(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mipushAppKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$1200(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->gv:Ljava/lang/String;

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$1300(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mMode:I

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$1400(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->domain:Ljava/lang/String;

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$1500(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->backServer:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->isIpModle()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->isIpModle:Z

    invoke-static {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;->access$1600(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mIpConfig:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    iget v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->appId:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appid can not be 0, error!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->versionCode:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "versionCode can not be 0, error!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "N/A"

    iget-object v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "versionName is not correct, error!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string v0, "N/A"

    iget-object v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "appName is not correct, error!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string v0, "N/A"

    iget-object v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->releaseChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "releaseChannel is not correct, error!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "N/A"

    iget-object v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "packageName is not correct, error!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;Lcom/mi/milink/sdk/data/ClientAppInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/data/ClientAppInfo;-><init>(Lcom/mi/milink/sdk/data/ClientAppInfo$Builder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->appId:I

    const-string v0, "and"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->platformName:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->appName:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->versionName:Ljava/lang/String;

    iput v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->versionCode:I

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->releaseChannel:Ljava/lang/String;

    const-string v0, "N/A"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->packageName:Ljava/lang/String;

    iput v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mMode:I

    const-string v0, "zh_CN"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->languageCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->logPath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mipushAppId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mipushAppKey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->gv:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->serviceProcessName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->domain:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->backServer:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->isHeartBeatEnable:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->customTag:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mIpConfig:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    invoke-direct {p0, p1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->fromString(Ljava/lang/String;)V

    return-void
.end method

.method private fromString(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-static {v1, v2}, Lcom/mi/milink/sdk/base/data/Convert;->strToInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setAppId(I)V

    aget-object v1, v0, v4

    invoke-static {v1, v4}, Lcom/mi/milink/sdk/base/data/Convert;->strToInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setVersionCode(I)V

    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setVersionName(Ljava/lang/String;)V

    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setReleaseChannel(Ljava/lang/String;)V

    array-length v1, v0

    if-le v1, v5, :cond_0

    aget-object v1, v0, v5

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setAppName(Ljava/lang/String;)V

    :cond_0
    array-length v1, v0

    if-le v1, v6, :cond_1

    aget-object v1, v0, v6

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setPackageName(Ljava/lang/String;)V

    :cond_1
    array-length v1, v0

    const/4 v2, 0x6

    if-le v1, v2, :cond_2

    const/4 v1, 0x6

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setLanguageCode(Ljava/lang/String;)V

    :cond_2
    array-length v1, v0

    const/4 v2, 0x7

    if-le v1, v2, :cond_3

    const/4 v1, 0x7

    aget-object v1, v0, v1

    invoke-virtual {p0, v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setLogPath(Ljava/lang/String;)V

    :cond_3
    array-length v1, v0

    const/16 v2, 0x8

    if-le v1, v2, :cond_4

    const/16 v1, 0x8

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setServiceProcessName(Ljava/lang/String;)V

    :cond_4
    array-length v1, v0

    const/16 v2, 0x9

    if-le v1, v2, :cond_5

    const/16 v1, 0x9

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setMiPushAppId(Ljava/lang/String;)V

    :cond_5
    array-length v1, v0

    const/16 v2, 0xa

    if-le v1, v2, :cond_6

    const/16 v1, 0xa

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setMiPushAppKey(Ljava/lang/String;)V

    :cond_6
    array-length v1, v0

    const/16 v2, 0xb

    if-le v1, v2, :cond_7

    const/16 v1, 0xb

    aget-object v1, v0, v1

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setGv(Ljava/lang/String;)V

    :cond_7
    array-length v1, v0

    if-le v1, v3, :cond_8

    aget-object v1, v0, v3

    invoke-static {v1, v3}, Lcom/mi/milink/sdk/base/data/Convert;->strToInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setLinkMode(I)V

    :cond_8
    array-length v1, v0

    const/16 v2, 0xd

    if-le v1, v2, :cond_9

    const/16 v1, 0xd

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setPlatformName(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static isForumApp()Z
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    const/16 v1, 0x2715

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGameCenterApp()Z
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    const/16 v1, 0x4e21

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHigherVersion(Lcom/mi/milink/sdk/data/ClientAppInfo;Lcom/mi/milink/sdk/data/ClientAppInfo;)I
    .locals 2

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getVersionCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getVersionCode()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public static isLiveApp()Z
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    const/16 v1, 0x2717

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMiliaoApp()Z
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    const/16 v1, 0x2712

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    const/16 v1, 0x2714

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOnApp()Z
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    const/16 v1, 0x271b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportApp()Z
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    const/16 v1, 0x2716

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportMiPush()Z
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getMiPushAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getMiPushAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTestChannel()Z
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTestChannel(I)Z
    .locals 2

    invoke-static {p0}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo(I)Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVtalkApp()Z
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isXiaoMiPushApp()Z
    .locals 2

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    const/16 v1, 0x7531

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAppId(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->appId:I

    return-void
.end method

.method private setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method private setGv(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->gv:Ljava/lang/String;

    return-void
.end method

.method private setLinkMode(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mMode:I

    return-void
.end method

.method private setMiPushAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mipushAppId:Ljava/lang/String;

    return-void
.end method

.method private setMiPushAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mipushAppKey:Ljava/lang/String;

    return-void
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method private setPlatformName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->platformName:Ljava/lang/String;

    return-void
.end method

.method private setServiceProcessName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->serviceProcessName:Ljava/lang/String;

    return-void
.end method

.method private setVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->versionCode:I

    return-void
.end method

.method private setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->versionName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->appId:I

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getBackServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->backServer:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->customTag:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getGv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->gv:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkMode()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mMode:I

    return v0
.end method

.method public getLogPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->logPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMiPushAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mipushAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getMiPushAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mipushAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->platformName:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->releaseChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->serviceProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getmIpConfig()Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;
    .locals 1

    iget-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mIpConfig:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    return-object v0
.end method

.method public isHasSetAccServerDomain()Z
    .locals 1

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mi/milink/sdk/base/Global;->getClientAppInfo()Lcom/mi/milink/sdk/data/ClientAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getBackServer()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHeartBeatEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->isHeartBeatEnable:Z

    return v0
.end method

.method public isIpModle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->isIpModle:Z

    return v0
.end method

.method public isMediumConnection()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setAppId(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setVersionCode(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setVersionName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setReleaseChannel(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setAppName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setLanguageCode(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setLogPath(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setServiceProcessName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setMiPushAppId(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setMiPushAppKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setGv(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setLinkMode(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->setPlatformName(Ljava/lang/String;)V

    return-void
.end method

.method public setBackServer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->backServer:Ljava/lang/String;

    return-void
.end method

.method public setCustomTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->customTag:Ljava/lang/String;

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->domain:Ljava/lang/String;

    return-void
.end method

.method public setHeartBeatEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->isHeartBeatEnable:Z

    return-void
.end method

.method public setIpModle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->isIpModle:Z

    return-void
.end method

.method public setLanguageCode(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->languageCode:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "zh_CN"

    iput-object v0, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->languageCode:Ljava/lang/String;

    goto :goto_0
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->logPath:Ljava/lang/String;

    return-void
.end method

.method public setReleaseChannel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->releaseChannel:Ljava/lang/String;

    return-void
.end method

.method public setmIpConfig(Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->mIpConfig:Lcom/mi/milink/sdk/config/IIpInfoManager$AppIpConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->appId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->releaseChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->languageCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->logPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mi/milink/sdk/data/ClientAppInfo;->platformName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getVersionCode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getReleaseChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getLogPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getServiceProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getMiPushAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getMiPushAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getGv()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getLinkMode()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/mi/milink/sdk/data/ClientAppInfo;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
