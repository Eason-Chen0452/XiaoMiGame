.class public Lcom/xiaomi/gamecenter/sdk/SDKPaymentUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(ILcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/xiaomi/gamecenter/sdk/SDKPaymentUtil;->b(ILcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    .locals 4

    const/16 v3, -0x4653

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getAccountAdapter()Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->ChangeIndex()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v1

    const/16 v2, 0x98

    invoke-virtual {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xc06

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    invoke-virtual {p3}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/TokenUtils;->b(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->IS_LOGGED_IN:Z

    if-nez v1, :cond_3

    :cond_0
    new-instance v1, Lcom/xiaomi/gamecenter/sdk/av;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/av;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->b(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/TokenUtils;->b(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/TokenUtils;->a(Landroid/content/Context;)V

    :cond_2
    invoke-static {v3, p2}, Lcom/xiaomi/gamecenter/sdk/SDKPaymentUtil;->b(ILcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x9a

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    const-string v0, "\u53c2\u6570\u65e0\u6548"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {v3, p2}, Lcom/xiaomi/gamecenter/sdk/SDKPaymentUtil;->b(ILcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;->a()Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/aw;

    invoke-direct {v2, v0, p0, p2}, Lcom/xiaomi/gamecenter/sdk/aw;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V

    invoke-virtual {v1, p0, p1, v2}, Lcom/xiaomi/gamecenter/sdk/pay/PaySDK;->a(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/pay/b;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/SdkAccountAdapter;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xc07

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ay;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/ay;-><init>(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Please call MiCommplatform.Init () in application onCreate() and the MiappInfo parameter can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static b(ILcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ax;

    invoke-direct {v1, p1, p0}, Lcom/xiaomi/gamecenter/sdk/ax;-><init>(Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
