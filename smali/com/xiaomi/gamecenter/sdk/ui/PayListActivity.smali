.class public Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter;

.field private c:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/app/ProgressDialog;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->h:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->o:J

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/CallModel;->get(J)Lcom/xiaomi/gamecenter/sdk/pay/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->o:J

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/entry/CallModel;->remove(J)Lcom/xiaomi/gamecenter/sdk/pay/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/pay/b;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->finish()V

    invoke-virtual {p0, v4, v4}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->c()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->m:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 2

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->p:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->p:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)V
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->o:J

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/CallModel;->get(J)Lcom/xiaomi/gamecenter/sdk/pay/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->o:J

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/entry/CallModel;->remove(J)Lcom/xiaomi/gamecenter/sdk/pay/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaomi/gamecenter/sdk/pay/b;->a()V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->finish()V

    invoke-virtual {p0, v4, v4}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->j:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->l:Ljava/lang/String;

    return-object p1
.end method

.method private static c()Z
    .locals 1

    :try_start_0
    const-string v0, "com.google.zxing.BarcodeFormat"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->i:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->c:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    return-object v0
.end method

.method static synthetic f(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->b:Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter;

    return-object v0
.end method

.method static synthetic l(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 6

    const/16 v5, 0xc0e

    const/4 v4, 0x0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    iget-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->o:J

    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/entry/CallModel;->get(J)Lcom/xiaomi/gamecenter/sdk/pay/b;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->o:J

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/entry/CallModel;->remove(J)Lcom/xiaomi/gamecenter/sdk/pay/b;

    if-eqz v0, :cond_0

    const-string v1, "\u53d6\u6d88\u652f\u4ed8"

    invoke-interface {v0, v5, v1}, Lcom/xiaomi/gamecenter/sdk/pay/b;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->finish()V

    invoke-virtual {p0, v4, v4}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "_callback"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->o:J

    :cond_0
    const-string v0, "mio_activity_paylist"

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->setContentView(I)V

    const-string v0, "tv_purchase_name"

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->d:Landroid/widget/TextView;

    const-string v0, "tv_price"

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->e:Landroid/widget/TextView;

    const-string v0, "ll_container"

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "_bundle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    const/16 v0, -0x3f2

    const-string v1, "\u53c2\u6570\u9519\u8bef"

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "_mibuyinfo"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->c:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    const-string v0, "_appid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->f:Ljava/lang/String;

    const-string v0, "_appkey"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->g:Ljava/lang/String;

    const-string v0, "_callback"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->o:J

    const-string v0, "lv_pay"

    invoke-static {p0, v0}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->a:Landroid/widget/ListView;

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter;

    invoke-direct {v0, p0}, Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->b:Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->b:Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->j:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->j:Landroid/app/ProgressDialog;

    const-string v1, "\u67e5\u8be2\u8ba2\u5355\u4fe1\u606f..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->j:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->f:Ljava/lang/String;

    const-string v3, "login"

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/xiaomi/gamecenter/sdk/protocol/ServiceToken;->a()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;->pay:Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/protocol/VerifyType;)V

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/d;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/d;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/verifyid/VerifyID;->a(Lcom/xiaomi/gamecenter/sdk/web/h;)V

    :goto_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xc10

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->b()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->p:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->p:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->j:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->j:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/xiaomi/gamecenter/sdk/utils/TokenUtils;->b(Landroid/content/Context;)Lcom/xiaomi/hy/dj/model/ServiceToken;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, -0x1

    const-string v1, "ServiceToken is NULL"

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->i:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v2, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;

    invoke-direct {v2}, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;->setMiOrderId(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;->setDisplayName(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;->setFeeValue(Ljava/lang/String;)V

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/ui/g;->a:[I

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;->getPayType()Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/PayType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v3, 0xc04

    invoke-virtual {v1}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->c:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/hy/dj/HyDJ;->getInstance()Lcom/xiaomi/hy/dj/HyDJ;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/e;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/e;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)V

    invoke-virtual {v0, p0, v2, v1}, Lcom/xiaomi/hy/dj/HyDJ;->aliPay(Landroid/app/Activity;Lcom/xiaomi/hy/dj/purchase/Purchase;Lcom/xiaomi/hy/dj/PayResultCallback;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v3, 0xc05

    invoke-virtual {v1}, Lcom/xiaomi/hy/dj/model/ServiceToken;->getUid()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->c:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->getCpOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v1, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/hy/dj/HyDJ;->getInstance()Lcom/xiaomi/hy/dj/HyDJ;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/ui/f;

    invoke-direct {v1, p0}, Lcom/xiaomi/gamecenter/sdk/ui/f;-><init>(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)V

    invoke-virtual {v0, p0, v2, v1}, Lcom/xiaomi/hy/dj/HyDJ;->wxPay(Landroid/app/Activity;Lcom/xiaomi/hy/dj/purchase/Purchase;Lcom/xiaomi/hy/dj/PayResultCallback;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "_callback"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->o:J

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0xc11

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->report(I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "_callback"

    iget-wide v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->o:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method
