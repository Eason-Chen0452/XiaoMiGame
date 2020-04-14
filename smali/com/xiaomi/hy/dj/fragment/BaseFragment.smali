.class public Lcom/xiaomi/hy/dj/fragment/BaseFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Lcom/xiaomi/hy/dj/d/a;


# instance fields
.field protected a:Lcom/xiaomi/hy/dj/d/b;

.field public b:Landroid/app/ProgressDialog;

.field public c:Landroid/os/CountDownTimer;

.field private d:[Ljava/lang/String;

.field private e:Lcom/xiaomi/hy/dj/purchase/Purchase;

.field private f:J

.field private g:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/hy/dj/fragment/BaseFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->b()V

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->e:Lcom/xiaomi/hy/dj/purchase/Purchase;

    instance-of v0, v0, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->a:Lcom/xiaomi/hy/dj/d/b;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->d:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/d/b;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->a:Lcom/xiaomi/hy/dj/d/b;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/d/b;->a([Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/16 v0, 0xbf4

    invoke-virtual {p0, v0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->b(I)V

    return-void
.end method

.method public a(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->b(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    const-string v0, "404"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "405"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getOpenId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/hy/dj/model/TokenManager;->getToken(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getSession()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_url"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://static.g.mi.com/pages/realname/index.html?fuid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&sid="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&pid=7010"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_code"

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;

    invoke-direct {v1}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x1020002

    const-string v3, "WEBVIEW"

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    new-instance v0, Lcom/xiaomi/hy/dj/fragment/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/hy/dj/fragment/a;-><init>(Lcom/xiaomi/hy/dj/fragment/BaseFragment;)V

    invoke-virtual {v1, v0}, Lcom/xiaomi/hy/dj/fragment/HyWebFragment;->a(Lcom/xiaomi/hy/dj/fragment/y;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->b()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;JJ)V
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->b:Landroid/app/ProgressDialog;

    const-string v1, "\u6b63\u5728\u67e5\u8be2\u8ba2\u5355\u4fe1\u606f..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->c:Landroid/os/CountDownTimer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/hy/dj/fragment/b;

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/hy/dj/fragment/b;-><init>(Lcom/xiaomi/hy/dj/fragment/BaseFragment;JJLjava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->c:Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->c:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/d/b;->d()V

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->c:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->c:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->c:Landroid/os/CountDownTimer;

    :cond_1
    iget-wide v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->f:J

    invoke-static {v0, v1}, Lcom/xiaomi/hy/dj/model/CallModel;->pop(J)Lcom/xiaomi/hy/dj/PayResultCallback;

    move-result-object v1

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb5

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xad

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_2

    const/16 v0, 0xbf

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->e:Lcom/xiaomi/hy/dj/purchase/Purchase;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/purchase/Purchase;->getCpOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/xiaomi/hy/dj/PayResultCallback;->onSuccess(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_1
    return-void

    :cond_3
    sget-object v0, Lcom/xiaomi/hy/dj/config/ResultCode;->errorMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Lcom/xiaomi/hy/dj/PayResultCallback;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/model/TokenManager;->isExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/d/b;->b()V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->g:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    const-string v0, "_bundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->g:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->g:Landroid/os/Bundle;

    const-string v1, "_appinfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/hy/dj/model/AppInfo;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/model/AppInfo;->getPaymentList()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->d:[Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->g:Landroid/os/Bundle;

    const-string v2, "_purchase"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/hy/dj/purchase/Purchase;

    iput-object v1, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->e:Lcom/xiaomi/hy/dj/purchase/Purchase;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/model/AppInfo;->getCallId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->f:J

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->b:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->b:Landroid/app/ProgressDialog;

    const-string v2, "\u6b63\u5728\u83b7\u53d6\u8ba2\u5355\u4fe1\u606f..."

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->b:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    new-instance v1, Lcom/xiaomi/hy/dj/d/b;

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->e:Lcom/xiaomi/hy/dj/purchase/Purchase;

    invoke-direct {v1, v2, v0, v3}, Lcom/xiaomi/hy/dj/d/b;-><init>(Landroid/content/Context;Lcom/xiaomi/hy/dj/model/AppInfo;Lcom/xiaomi/hy/dj/purchase/Purchase;)V

    iput-object v1, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->a:Lcom/xiaomi/hy/dj/d/b;

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-virtual {v0, p0}, Lcom/xiaomi/hy/dj/d/b;->a(Lcom/xiaomi/hy/dj/d/a;)V

    invoke-static {}, Lcom/xiaomi/hy/dj/model/TokenManager;->getInstance()Lcom/xiaomi/hy/dj/model/TokenManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/hy/dj/model/TokenManager;->isExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/d/b;->b()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->a:Lcom/xiaomi/hy/dj/d/b;

    invoke-virtual {v0}, Lcom/xiaomi/hy/dj/d/b;->a()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "_bundle"

    iget-object v1, p0, Lcom/xiaomi/hy/dj/fragment/BaseFragment;->g:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
