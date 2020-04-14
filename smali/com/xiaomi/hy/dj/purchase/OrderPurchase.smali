.class public Lcom/xiaomi/hy/dj/purchase/OrderPurchase;
.super Lcom/xiaomi/hy/dj/purchase/Purchase;


# instance fields
.field private displayName:Ljava/lang/String;

.field private feeValue:Ljava/lang/String;

.field private miOrderId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/purchase/Purchase;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFeeValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;->feeValue:Ljava/lang/String;

    return-object v0
.end method

.method public getMiOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;->miOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setFeeValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;->feeValue:Ljava/lang/String;

    return-void
.end method

.method public setMiOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/purchase/OrderPurchase;->miOrderId:Ljava/lang/String;

    return-void
.end method
