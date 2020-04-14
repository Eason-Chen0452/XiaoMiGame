.class public final Lcom/xiaomi/accountsdk/utils/WebViewUserSpaceIdUtil;
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

    const-string v0, "userSpaceId"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method
