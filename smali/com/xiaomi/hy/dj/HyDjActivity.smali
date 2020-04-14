.class public Lcom/xiaomi/hy/dj/HyDjActivity;
.super Landroid/app/Activity;


# instance fields
.field private bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addAliPayFragment()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xa8

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/HyDjActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;

    invoke-direct {v1}, Lcom/xiaomi/hy/dj/fragment/HyAlipayFragment;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/HyDjActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v2, 0x1020002

    const-string v3, "HyAlipayFragment"

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private addPayEcoFragment()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xba

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/HyDjActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;

    invoke-direct {v1}, Lcom/xiaomi/hy/dj/fragment/HyPayEcoFragment;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/HyDjActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v2, 0x1020002

    const-string v3, "HyAlipayFragment"

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private addQQPayFragment()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/HyDjActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;

    invoke-direct {v1}, Lcom/xiaomi/hy/dj/fragment/HyQQWapFragment;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/HyDjActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v2, 0x1020002

    const-string v3, "HyQQWapFragment"

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private addSzfPayFragment()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xbe

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/HyDjActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/HySzfPayFragment;

    invoke-direct {v1}, Lcom/xiaomi/hy/dj/fragment/HySzfPayFragment;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/HyDjActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v2, 0x1020002

    const-string v3, "HySzfPayFragment"

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private addWxScanFragment()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/HyDjActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;

    invoke-direct {v1}, Lcom/xiaomi/hy/dj/fragment/HyWxScanFragment;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/HyDjActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v2, 0x1020002

    const-string v3, "HyWxScanFragment"

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private addWxWapFragment()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/hy/dj/e/b;->a()Lcom/xiaomi/hy/dj/e/b;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/e/b;->a(I)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/HyDjActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;

    invoke-direct {v1}, Lcom/xiaomi/hy/dj/fragment/HyWxWapFragment;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/hy/dj/HyDjActivity;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v2, 0x1020002

    const-string v3, "HyWxWapFragment"

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0xbfb

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/HyDjActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/HyDjActivity;->bundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/HyDjActivity;->bundle:Landroid/os/Bundle;

    const-string v1, "_appinfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/model/AppInfo;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/model/AppInfo;->getPayType()I

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-static {p0}, Lcom/xiaomi/hy/dj/f/k;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/xiaomi/hy/dj/f/k;->f(Landroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x22020000

    if-le v1, v2, :cond_2

    invoke-static {p0}, Lcom/xiaomi/hy/dj/f/k;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "WXMWEB"

    aput-object v2, v1, v3

    const-string v2, "WXAPP"

    aput-object v2, v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/model/AppInfo;->setPaymentList([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/HyDjActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "_appinfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/HyDjActivity;->addWxWapFragment()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "WXMWEB"

    aput-object v2, v1, v3

    goto :goto_0

    :cond_2
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "WXNATIVE"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/model/AppInfo;->setPaymentList([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/HyDjActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "_appinfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/HyDjActivity;->addWxScanFragment()V

    goto :goto_1

    :cond_3
    if-ne v1, v5, :cond_4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "ALIPAY"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/model/AppInfo;->setPaymentList([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/HyDjActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "_appinfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/HyDjActivity;->addAliPayFragment()V

    goto :goto_1

    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    invoke-static {p0}, Lcom/xiaomi/hy/dj/f/k;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p0}, Lcom/xiaomi/hy/dj/f/k;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "QPAY"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/model/AppInfo;->setPaymentList([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/HyDjActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "_appinfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/HyDjActivity;->addQQPayFragment()V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/model/AppInfo;->getCallId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaomi/hy/dj/model/CallModel;->pop(J)Lcom/xiaomi/hy/dj/PayResultCallback;

    move-result-object v1

    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v6, v0}, Lcom/xiaomi/hy/dj/PayResultCallback;->onError(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/HyDjActivity;->finish()V

    invoke-virtual {p0, v3, v3}, Lcom/xiaomi/hy/dj/HyDjActivity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_7
    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "PAYECO"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/model/AppInfo;->setPaymentList([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/HyDjActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "_appinfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/HyDjActivity;->addPayEcoFragment()V

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "SZFPAY"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/model/AppInfo;->setPaymentList([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/HyDjActivity;->bundle:Landroid/os/Bundle;

    const-string v2, "_appinfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/HyDjActivity;->addSzfPayFragment()V

    goto/16 :goto_1
.end method
