.class public Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;
.super Ljava/lang/Object;


# instance fields
.field private logo:I

.field private name:Ljava/lang/String;

.field private payType:Lcom/xiaomi/gamecenter/sdk/entry/PayType;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogo()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;->logo:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()Lcom/xiaomi/gamecenter/sdk/entry/PayType;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;->payType:Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    return-object v0
.end method

.method public setLogo(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;->logo:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;->name:Ljava/lang/String;

    return-void
.end method

.method public setPayType(Lcom/xiaomi/gamecenter/sdk/entry/PayType;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/PaytypeModel;->payType:Lcom/xiaomi/gamecenter/sdk/entry/PayType;

    return-void
.end method
