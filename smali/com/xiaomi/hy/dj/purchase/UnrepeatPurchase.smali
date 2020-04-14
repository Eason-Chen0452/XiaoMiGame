.class public Lcom/xiaomi/hy/dj/purchase/UnrepeatPurchase;
.super Lcom/xiaomi/hy/dj/purchase/Purchase;


# instance fields
.field private chargeCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/hy/dj/purchase/Purchase;-><init>()V

    return-void
.end method


# virtual methods
.method public getChargeCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/hy/dj/purchase/UnrepeatPurchase;->chargeCode:Ljava/lang/String;

    return-object v0
.end method

.method public setChargeCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/hy/dj/purchase/UnrepeatPurchase;->chargeCode:Ljava/lang/String;

    return-void
.end method
