.class public Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cardMoney:Ljava/lang/String;

.field private cardNumber:Ljava/lang/String;

.field private cardPass:Ljava/lang/String;

.field private cardType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/a;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/a;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/gamecenter/sdk/entry/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardNumber:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardPass:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardType:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardMoney:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCardMoney()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardMoney:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCardPass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardPass:Ljava/lang/String;

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardType:Ljava/lang/String;

    return-object v0
.end method

.method public setCardMoney(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardMoney:Ljava/lang/String;

    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardNumber:Ljava/lang/String;

    return-void
.end method

.method public setCardPass(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardPass:Ljava/lang/String;

    return-void
.end method

.method public setCardType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->cardType:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->getCardNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->getCardPass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->getCardType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfo;->getCardMoney()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
