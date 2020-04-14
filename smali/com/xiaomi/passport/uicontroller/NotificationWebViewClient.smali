.class public Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/webkit/CookieManager;

.field private c:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$a;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p2, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->b:Landroid/webkit/CookieManager;

    iput-object p3, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->c:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$a;

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->c:Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient$a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->b:Landroid/webkit/CookieManager;

    iget-object v2, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebViewClient;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "passInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "need-relogin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "login-end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v1}, Lcom/xiaomi/accountsdk/utils/XMPassportUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, "auth-end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
