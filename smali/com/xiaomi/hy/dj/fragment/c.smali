.class Lcom/xiaomi/hy/dj/fragment/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;


# direct methods
.method constructor <init>(Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/fragment/c;->c:Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;

    iput-object p2, p0, Lcom/xiaomi/hy/dj/fragment/c;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/hy/dj/fragment/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    const-string v0, "com.alipay.sdk.app.PayTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/app/Activity;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/hy/dj/fragment/c;->c:Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;

    invoke-virtual {v4}, Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pay"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaomi/hy/dj/fragment/c;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lcom/xiaomi/hy/dj/model/PayResult;

    invoke-direct {v1, v0}, Lcom/xiaomi/hy/dj/model/PayResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/xiaomi/hy/dj/model/PayResult;->getResultStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/c;->c:Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/d;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/fragment/d;-><init>(Lcom/xiaomi/hy/dj/fragment/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "6001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/c;->c:Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/e;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/fragment/e;-><init>(Lcom/xiaomi/hy/dj/fragment/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "Exception"

    const-string v1, "\u8bf7\u6dfb\u52a0\u652f\u4ed8\u5b9d\u5b98\u65b9SDK\u76f8\u5173\u7684jar\u5305"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/c;->c:Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/f;

    invoke-direct {v1, p0}, Lcom/xiaomi/hy/dj/fragment/f;-><init>(Lcom/xiaomi/hy/dj/fragment/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
