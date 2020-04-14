.class public Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->a:Z

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.xiaomi.permission.AUTH_SERVICE"

    aput-object v1, v0, v4

    const-string v1, "android.permission.INTERNET"

    aput-object v1, v0, v3

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v1, v0, v5

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    aput-object v1, v0, v6

    const-string v1, "com.xiaomi.sdk.permission.PAYMENT"

    aput-object v1, v0, v7

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->b:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.xiaomi.permission.AUTH_SERVICE"

    aput-object v1, v0, v4

    const-string v1, "android.permission.INTERNET"

    aput-object v1, v0, v3

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v1, v0, v5

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->c:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.xiaomi.gamecenter.sdk.ui.MiActivity"

    aput-object v1, v0, v4

    const-string v1, "com.xiaomi.gamecenter.sdk.ui.PayListActivity"

    aput-object v1, v0, v3

    const-string v1, "com.xiaomi.hy.dj.HyDjActivity"

    aput-object v1, v0, v5

    const-string v1, "com.alipay.sdk.app.H5PayActivity"

    aput-object v1, v0, v6

    const-string v1, "com.xiaomi.gamecenter.sdk.ui.notice.NoticeActivity"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.xiaomi.gamecenter.sdk.ui.fault.ViewFaultNoticeActivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->d:[Ljava/lang/String;

    const/16 v0, 0x2e

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mio_progress_horizontal"

    aput-object v1, v0, v4

    const-string v1, "mio_selector_dialog_cancel_blue"

    aput-object v1, v0, v3

    const-string v1, "mio_selector_dialog_cancel_white"

    aput-object v1, v0, v5

    const-string v1, "mio_selector_login_item"

    aput-object v1, v0, v6

    const-string v1, "mio_selector_mipayment_item"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mio_shape_alert_background"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mio_shape_auto_login_dialog_bg"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mio_shape_auto_login_dialog_change_button"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mio_shape_dialog_cancel_blue_nor"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mio_shape_dialog_cancel_blue_press"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mio_shape_dialog_cancel_white_nor"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mio_shape_dialog_cancel_white_press"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mio_shape_last_login_tip"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mio_shape_login_normal"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mio_shape_login_press"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mio_shape_simple_dialog_left_btn"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "mio_shape_simple_dialog_right_btn"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "mio_auto_login_icon"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "mio_close_button"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "mio_close"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "mio_connect_failure"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mio_download_failure"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "mio_icon_login_wait"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "mio_img_title"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "mio_install"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "mio_list_item_single_bg_60_n"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "mio_list_item_single_bg_60_p"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "mio_login_failure"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "mio_login_msg_back"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "mio_login_third_account_mi"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "mio_login_third_account_mi_pure"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "mio_login_third_account_qq"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "mio_login_third_account_qq_pure"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "mio_login_third_account_wb"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "mio_login_third_account_wechat_disable"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "mio_login_third_account_wechat"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "mio_login_third_account_weibo_disable"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "mio_login_third_account_weibo"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "mio_login_third_account_wx"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "mio_login_wait_default_icon"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "mio_mipay_payment_alipay"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "mio_mipay_payment_arrow"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "mio_mipay_payment_wx"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "mio_time_out"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "mio_wechat_disable"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "mio_weibo_disable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->e:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "iv_logo"

    aput-object v1, v0, v4

    const-string v1, "tv_name"

    aput-object v1, v0, v3

    const-string v1, "tv_purchase_name"

    aput-object v1, v0, v5

    const-string v1, "tv_price"

    aput-object v1, v0, v6

    const-string v1, "ll_container"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lv_pay"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->f:[Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mio_item_pay"

    aput-object v1, v0, v4

    const-string v1, "mio_auto_login"

    aput-object v1, v0, v3

    const-string v1, "mio_dialog_cancel_login"

    aput-object v1, v0, v5

    const-string v1, "mio_dialog_download_failure"

    aput-object v1, v0, v6

    const-string v1, "mio_dialog_install"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mio_dialog_login_error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mio_dialog_login_failure"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mio_dialog_login_time_out"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mio_download_progress"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mio_login"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mio_activity_paylist"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mio_layout_splash"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mio_notice_image_dialog"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mio_notice_text_dialog"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mio_layout_float_view"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "mifloat_menu_layout"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "mifloat_meun_icon_item"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "float_new_msg_layout"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "float_window_close"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "float_window_hide"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->g:[Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.arch.core.internal.FastSafeIterableMap"

    aput-object v1, v0, v4

    const-string v1, "android.arch.core.util.Function"

    aput-object v1, v0, v3

    const-string v1, "android.arch.lifecycle.Lifecycle"

    aput-object v1, v0, v5

    const-string v1, "android.arch.lifecycle.Observer"

    aput-object v1, v0, v6

    const-string v1, "android.arch.lifecycle.ReportFragment"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "android.arch.lifecycle.ViewModel"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "android.support.v4.app.Fragment"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "android.support.annotation.AnimatorRes"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "android.support.v4.app.ActivityCompat"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "android.support.design.widget.CoordinatorLayout"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "android.support.v4.app.AppLaunchChecker"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "android.support.v4.app.BackStackState"

    aput-object v2, v0, v1

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->h:[Ljava/lang/String;

    const-string v0, "\u8bf7\u786e\u4fdd\u5728AndroidManifest.xml\u6b63\u786e\u58f0\u660e\u4e86\u4ee5\u4e0bProvider:\n<provider\n            android:name=\"android.support.v4.content.FileProvider\"\n            android:authorities=\"${applicationId}.fileprovider\"\n            android:exported=\"false\"\n            android:grantUriPermissions=\"true\">\n            <meta-data\n                android:name=\"android.support.FILE_PROVIDER_PATHS\"\n                android:resource=\"@xml/file_paths\" />\n        </provider>"

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "no "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->h:[Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/CheckApkElementUtil;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->b:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/CheckApkElementUtil;->a(Landroid/content/Context;[Ljava/lang/String;)V

    :goto_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->d:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/CheckApkElementUtil;->b(Landroid/content/Context;[Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->c:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/CheckApkElementUtil;->a(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->e:[Ljava/lang/String;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->f:[Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->g:[Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/CheckApkElementUtil;->a(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "RecyclerView"

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/notice/utils/ResourceUtil;->d(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u8bf7\u786e\u4fdd\u5f15\u5165\u4e86mio_support_values.xml\uff0c\u5e76\u4e14App\u7684R\u6587\u4ef6\u672a\u88ab\u6df7\u6dc6"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {v5, v6, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v7, :cond_d

    array-length v8, v7

    move v4, v2

    move v1, v2

    :goto_0
    if-ge v4, v8, :cond_1

    aget-object v0, v7, v4

    iget-object v9, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v10, "com.xiaomi.gamecenter.push.GamePushService"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v0, :cond_c

    new-instance v0, Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".MI_GAME_PUSH"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x40

    invoke-virtual {v5, v0, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const-string v10, "com.xiaomi.gamecenter.push.GamePushService"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_1
    if-nez v0, :cond_2

    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_3
    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u8bf7\u786e\u4fdd\u5728AndroidManifest.xml\u6b63\u786e\u58f0\u660e\u4e86\u4ee5\u4e0bService:com.xiaomi.gamecenter.push.GamePushService (\u6ce8\u610f\u662f:\u4f60\u7684\u5305\u540d.MI_GAME_PUSH)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {v5, v6, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_a

    array-length v7, v6

    move v4, v2

    move v1, v2

    :goto_4
    if-ge v4, v7, :cond_6

    aget-object v0, v6, v4

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v8, "com.xiaomi.gamecenter.push.OnClickReceiver"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_9

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.xiaomi.hy.push.client.ONCLICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x40

    invoke-virtual {v5, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v8, "com.xiaomi.gamecenter.push.OnClickReceiver"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    :goto_5
    if-nez v0, :cond_7

    :goto_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v1, v0

    goto :goto_4

    :cond_6
    move v0, v1

    :cond_7
    :goto_7
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\u8bf7\u786e\u4fdd\u5728AndroidManifest.xml\u6b63\u786e\u58f0\u660e\u4e86\u4ee5\u4e0bReceivers:com.xiaomi.gamecenter.push.OnClickReceiver"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_8
    move v0, v1

    goto :goto_5

    :cond_9
    move v0, v1

    goto :goto_6

    :cond_a
    move v0, v2

    goto :goto_7

    :cond_b
    move v0, v1

    goto :goto_1

    :cond_c
    move v0, v1

    goto :goto_2

    :cond_d
    move v0, v2

    goto :goto_3
.end method

.method public static d(Landroid/content/Context;)V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    :try_start_0
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_0

    array-length v1, v3

    if-nez v1, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string v4, "android.support.v4.content.FileProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    array-length v5, v3

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_3

    aget-object v6, v3, v1

    iget-object v7, v6, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, v6, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v7, :cond_4

    iget-boolean v6, v6, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-eqz v6, :cond_4

    const/4 v0, 0x1

    :cond_3
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/RunEnvironmentCheck;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
