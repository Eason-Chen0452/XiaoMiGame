.class public final Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil$ServerTimeAlignedListenerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/accountsdk/utils/ServerTimeUtil$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServerTimeAlignedListenerImpl"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil$ServerTimeAlignedListenerImpl;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil$ServerTimeAlignedListenerImpl;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;-><init>()V

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/WebViewFidNonceUtil;->a(Landroid/webkit/WebView;)V

    :cond_0
    return-void
.end method
