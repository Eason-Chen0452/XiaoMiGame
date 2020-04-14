.class public Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil$ServerTimeAlignedListenerImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/webkit/WebView;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;-><init>()V

    sget-object v0, Lcom/xiaomi/accountsdk/utils/FidNonce$Type;->WEB_VIEW:Lcom/xiaomi/accountsdk/utils/FidNonce$Type;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/FidNonce$Builder;->a(Lcom/xiaomi/accountsdk/utils/FidNonce$Type;)Lcom/xiaomi/accountsdk/utils/FidNonce;

    goto :goto_0
.end method
