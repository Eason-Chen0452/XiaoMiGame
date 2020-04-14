.class public Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter;
.super Lcom/xiaomi/gamecenter/sdk/adapter/ArrayListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gamecenter/sdk/adapter/ArrayListAdapter",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/adapter/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter;->b:Landroid/content/Context;

    const-string v2, "mio_item_pay"

    invoke-static {v1, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter$a;

    invoke-direct {v1}, Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter$a;-><init>()V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter;->b:Landroid/content/Context;

    const-string v2, "iv_logo"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter$a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter;->b:Landroid/content/Context;

    const-string v2, "tv_name"

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/utils/ResourceUtils;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter$a;->b:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v2, v1, Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter$a;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;->getLogo()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v1, Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/adapter/PayAdapter$a;

    move-object v1, v0

    goto :goto_0
.end method
