.class public Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static volatile b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 4

    const-wide/16 v0, -0x1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getAccountAdapter()Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->b()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->a()J

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->j()Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "no milinkAccountProps found"

    invoke-static {v2}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->a(Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;->a()J

    move-result-wide v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;
    .locals 7

    :try_start_0
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkForVipInfo;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkForVipInfo;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkForVipInfo;->a()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Lcom/xiaomi/gamecenter/sdk/entry/LoginType;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/SocketTouch;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->a:Ljava/lang/String;

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->FastXmsdkReport(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getAccountAdapter()Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->c()V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x7fc

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/as;

    invoke-direct {v1, p0, p1}, Lcom/xiaomi/gamecenter/sdk/as;-><init>(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->c(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Lcom/xiaomi/gamecenter/sdk/entry/LoginType;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/b;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "migame.cfg"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/a;->a(Landroid/content/Context;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;
    .locals 7

    :try_start_0
    new-instance v0, Lcom/xiaomi/gamecenter/sdk/milink/MilinkForMemInfo;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkForMemInfo;-><init>(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkForMemInfo;->a()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v0

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Lcom/xiaomi/gamecenter/sdk/entry/LoginType;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->c(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Lcom/xiaomi/gamecenter/sdk/entry/LoginType;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "start refreshVipAndMember"

    invoke-static {v1}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getAccountAdapter()Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    move-result-object v1

    const-wide/16 v2, 0x0

    new-instance v6, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;

    sget-object v4, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {v6, v4}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->b()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/milink/MilinkAccount;->a()J

    move-result-wide v2

    :cond_0
    :goto_0
    invoke-static {p0, v2, v3, v0, v6}, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->a(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;

    move-result-object v5

    invoke-static {p0, v2, v3, v0, v6}, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->b(Landroid/content/Context;JLjava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiAppEntry;)Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;

    move-result-object v6

    const-string v0, "end refreshVipAndMember request"

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/SDKAccountUtil;->a()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-eqz v0, :cond_3

    const-string v0, "user changed, ignore"

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    if-eqz v4, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->j()Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "no milinkAccountProps found"

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->a(Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refreshVipAndMember error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/account/MilinkAccountProps;->a()J

    move-result-wide v2

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->b()Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;-><init>(JZLorg/xiaomi/gamecenter/milink/msg/VipProtos$GetUserLevelInfoRsp;Lorg/xiaomi/gamecenter/milink/msg/VipProtos$QueryVipUserRsp;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/mifloat/utils/k;->a(Lcom/xiaomi/gamecenter/sdk/entry/UserLevelAndVipInfo;)V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/entry/RefreshVipEvent;

    invoke-direct {v1, v2, v3, v4}, Lcom/xiaomi/gamecenter/sdk/entry/RefreshVipEvent;-><init>(JZ)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static c(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Lcom/xiaomi/gamecenter/sdk/entry/LoginType;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/au;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaomi/gamecenter/sdk/au;-><init>(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;Lcom/xiaomi/gamecenter/sdk/entry/LoginType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
