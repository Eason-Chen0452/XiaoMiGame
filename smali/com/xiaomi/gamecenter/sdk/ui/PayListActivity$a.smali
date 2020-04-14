.class final Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestCreateUnifiedOrder;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->l(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->m(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->e(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestCreateUnifiedOrder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/protocol/MessageRequestCreateUnifiedOrder;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 10

    const/16 v9, 0xc0f

    const/4 v0, 0x0

    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->c(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->c(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    const-string v1, "\u83b7\u53d6\u652f\u4ed8\u5217\u8868\u5931\u8d25"

    invoke-static {v0, v9, v1}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->a(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "5010"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    const/16 v1, 0x25e

    const-string v2, "\u7528\u6237\u5df2\u8d2d\u4e70"

    invoke-static {v0, v1, v2}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->a(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->d(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    const-string v3, "orderId"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->a(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "feeValue"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->b(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->e(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->e(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->getMiBuyInfoVersion()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->e(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->getPurchaseName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->e(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->getPurchaseName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_6

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->e(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->getPurchaseName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x1d

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->c(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    const-string v4, "paymentList"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->d(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->f(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "%.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    int-to-float v2, v2

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v2, v8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u5143"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->h(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->g(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->i(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_9

    :goto_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_8

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "payment"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->a()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/utils/HyUtils;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const-string v3, "WXWAP"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;

    invoke-direct {v3}, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    const-string v5, "mio_mipay_payment_wx"

    invoke-static {v4, v5}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;->setLogo(I)V

    const-string v4, "\u5fae\u4fe1\u652f\u4ed8"

    invoke-virtual {v3, v4}, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;->setName(Ljava/lang/String;)V

    sget-object v4, Lcom/xiaomi/gamecenter/sdk/entry/PayType;->WXWAP:Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    invoke-virtual {v3, v4}, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;->setPayType(Lcom/xiaomi/gamecenter/sdk/entry/PayType;)V

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->j(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v3, "ALIPAY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;

    invoke-direct {v2}, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    const-string v4, "mio_mipay_payment_alipay"

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;->setLogo(I)V

    const-string v3, "\u652f\u4ed8\u5b9d"

    invoke-virtual {v2, v3}, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;->setName(Ljava/lang/String;)V

    sget-object v3, Lcom/xiaomi/gamecenter/sdk/entry/PayType;->ALIPAY:Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    invoke-virtual {v2, v3}, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;->setPayType(Lcom/xiaomi/gamecenter/sdk/entry/PayType;)V

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v3}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->j(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->e(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->getPurchaseName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->c(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    const-string v1, "\u83b7\u53d6\u652f\u4ed8\u5217\u8868\u5931\u8d25"

    invoke-static {v0, v9, v1}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->a(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    const-string v4, "displayName"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->c(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->k(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->j(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter;->a(Ljava/util/List;)V

    :cond_9
    invoke-static {p1}, Lcn/com/wali/basetool/log/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected final onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->c(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity$a;->a:Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;->c(Lcom/xiaomi/gamecenter/sdk/ui/PayListActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method
