.class public final Lcom/xiaomi/accountsdk/utils/WebViewDeviceIdUtil;
.super Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    const-string v0, "deviceId"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;

    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->d()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Landroid/webkit/WebView;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;->a(Landroid/webkit/WebView;)V

    return-void
.end method
