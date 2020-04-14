.class public Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;
.super Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, -0x3

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sLoginActivity:Landroid/app/Activity;

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Z)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->sLoginActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/MiAlertDialog;->a(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "\u63d0\u9192"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getNote()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "\u60a8\u5c1a\u672a\u5b89\u88c5\"\u65b0\u7248\u5c0f\u7c73\u6e38\u620f\u63d2\u4ef6\"\uff0c\u5b89\u88c5\u5e76\u7ed9\u4e88\u6388\u6743\u540e\u53ef\u7528\u4e8e\u5b8c\u6574\u7684\u767b\u5f55\u4ee5\u53ca\u652f\u4ed8\uff0c\u5e76\u4fdd\u969c\u8d26\u53f7\u5b89\u5168\u3002"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_2
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v4, "\u786e\u5b9a"

    new-instance v5, Lcom/xiaomi/gamecenter/sdk/az;

    invoke-direct {v5, p0, v2, v0}, Lcom/xiaomi/gamecenter/sdk/az;-><init>(Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;Landroid/content/Context;Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getForce()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcom/xiaomi/gamecenter/sdk/ba;

    invoke-direct {v5, p0}, Lcom/xiaomi/gamecenter/sdk/ba;-><init>(Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_3
    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getGuideLink()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getGuideWord()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getGuideWord()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/bc;

    invoke-direct {v3, p0, v0, v2}, Lcom/xiaomi/gamecenter/sdk/bc;-><init>(Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/xiaomi/gamecenter/milink/msg/LoginProto$CheckSdkVersionRsp;->getNote()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_4
    const-string v4, "\u9000\u51fa\u6e38\u620f"

    new-instance v5, Lcom/xiaomi/gamecenter/sdk/bb;

    invoke-direct {v5, p0}, Lcom/xiaomi/gamecenter/sdk/bb;-><init>(Lcom/xiaomi/gamecenter/sdk/ServiceUpdateHandler;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method
