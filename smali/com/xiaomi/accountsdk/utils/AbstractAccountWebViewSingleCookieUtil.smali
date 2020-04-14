.class public abstract Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/xiaomi/accountsdk/account/XMPassport;->a:Z

    if-eqz v0, :cond_0

    const-string v0, ".account.preview.n.xiaomi.net"

    :goto_0
    sput-object v0, Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;->a:Ljava/lang/String;

    return-void

    :cond_0
    const-string v0, ".account.xiaomi.com"

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method public final a(Landroid/webkit/WebView;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    :goto_1
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    goto :goto_0

    :cond_3
    const-string v3, "%s=%s;"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/accountsdk/utils/AbstractAccountWebViewSingleCookieUtil;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected abstract b()Ljava/lang/String;
.end method
