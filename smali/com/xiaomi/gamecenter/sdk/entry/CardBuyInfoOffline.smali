.class public Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cardNumber:Ljava/lang/String;

.field private cardPass:Ljava/lang/String;

.field private cardType:Lcom/xiaomi/gamecenter/sdk/entry/CardType;

.field private infoOffline:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;

.field private money:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/b;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/b;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/gamecenter/sdk/entry/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/gamecenter/sdk/entry/CardType;ILcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->cardNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->cardPass:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->cardType:Lcom/xiaomi/gamecenter/sdk/entry/CardType;

    iput p4, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->money:I

    iput-object p5, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->infoOffline:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCardPass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->cardPass:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Lcom/xiaomi/gamecenter/sdk/entry/CardType;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->cardType:Lcom/xiaomi/gamecenter/sdk/entry/CardType;

    return-object v0
.end method

.method public getInfoOffline()Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->infoOffline:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;

    return-object v0
.end method

.method public getMoney()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->money:I

    return v0
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->cardNumber:Ljava/lang/String;

    return-void
.end method

.method public setCardPass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->cardPass:Ljava/lang/String;

    return-void
.end method

.method public setCardType(Lcom/xiaomi/gamecenter/sdk/entry/CardType;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->cardType:Lcom/xiaomi/gamecenter/sdk/entry/CardType;

    return-void
.end method

.method public setInfoOffline(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->infoOffline:Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;

    return-void
.end method

.method public setMoney(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->money:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->getCardPass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->getCardType()Lcom/xiaomi/gamecenter/sdk/entry/CardType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gamecenter/sdk/entry/CardType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->getMoney()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->getInfoOffline()Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
