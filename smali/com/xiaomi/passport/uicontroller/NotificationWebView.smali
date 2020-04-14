.class public Lcom/xiaomi/passport/uicontroller/NotificationWebView;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/uicontroller/NotificationWebView$Builder;,
        Lcom/xiaomi/passport/uicontroller/NotificationWebView$ExternalParams;
    }
.end annotation


# instance fields
.field private final a:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$b;

.field private final b:Z


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->a:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$b;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->a(Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$b;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->a:Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$b;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/ServerTimeUtil;->b(Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$b;)V

    iget-boolean v0, p0, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/passport/uicontroller/NotificationWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    return-void
.end method
