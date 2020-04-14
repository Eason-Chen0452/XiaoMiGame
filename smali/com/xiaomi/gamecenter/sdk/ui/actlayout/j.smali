.class final Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->j()V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v1, v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->j()V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->getInstance()Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;

    move-result-object v0

    const/16 v1, 0x7e2

    invoke-virtual {v0, v1}, Lcom/xiaomi/gamecenter/sdk/utils/ReporterUtils;->xmsdkReport(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->b(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->b(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a()Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->c(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/utils/PackgeInfoHelper;->a(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    move-result-object v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->d(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;-><init>(Landroid/widget/ImageView;)V

    invoke-static {v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;)Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->f(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    new-instance v3, Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;

    invoke-direct {v3}, Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;-><init>()V

    invoke-static {v1, v3}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->a(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;)Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;

    :cond_2
    sget-object v1, Lcom/xiaomi/gamecenter/sdk/utils/AccountType;->AccountType_QQ:Lcom/xiaomi/gamecenter/sdk/utils/AccountType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/entry/Image;->get(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/Image;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mio_login_wait_default_icon"

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->d(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v5}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->f(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->b(Landroid/content/Context;Landroid/widget/ImageView;Lcom/xiaomi/gamecenter/sdk/entry/Image;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;Lcom/bumptech/glide/load/Transformation;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->e(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v2}, Lcom/xiaomi/gamecenter/sdk/entry/Image;->get(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/Image;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-virtual {v3}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "mio_login_wait_default_icon"

    invoke-static {v3, v4}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v4}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->d(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/j;->a:Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;

    invoke-static {v5}, Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;->f(Lcom/xiaomi/gamecenter/sdk/ui/actlayout/ViewSelectAccount;)Lcom/xiaomi/gamecenter/sdk/ui/notice/transform/CircleTransform;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoader;->a(Landroid/content/Context;Landroid/widget/ImageView;Lcom/xiaomi/gamecenter/sdk/entry/Image;ILcom/xiaomi/gamecenter/sdk/ui/notice/imageload/ImageLoadCallback;Lcom/bumptech/glide/load/Transformation;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x4e20 -> :sswitch_1
        0x7530 -> :sswitch_2
        0x9c40 -> :sswitch_3
    .end sparse-switch
.end method
