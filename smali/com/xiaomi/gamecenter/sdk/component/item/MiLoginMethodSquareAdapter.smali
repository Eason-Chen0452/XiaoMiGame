.class public Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareAdapter;
.super Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;

    invoke-direct {v0, p1}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 1

    check-cast p2, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;

    instance-of v0, p1, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;

    invoke-virtual {p1, p2}, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareItem;->a(Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareInfo;)V

    :cond_0
    return-void
.end method

.method public final a([Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareAdapter;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/component/item/MiLoginMethodSquareAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    invoke-super {p0, p1}, Lcom/xiaomi/gamecenter/sdk/utils/ArrayAdapter;->a([Ljava/lang/Object;)V

    return-void
.end method
