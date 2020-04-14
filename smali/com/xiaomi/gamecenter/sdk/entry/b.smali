.class final Lcom/xiaomi/gamecenter/sdk/entry/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;-><init>(Lcom/xiaomi/gamecenter/sdk/entry/b;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->setCardNumber(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->setCardPass(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gamecenter/sdk/entry/CardType;->valueOf(Ljava/lang/String;)Lcom/xiaomi/gamecenter/sdk/entry/CardType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->setCardType(Lcom/xiaomi/gamecenter/sdk/entry/CardType;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->setMoney(I)V

    const-class v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;->setInfoOffline(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;)V

    return-object v1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/xiaomi/gamecenter/sdk/entry/CardBuyInfoOffline;

    return-object v0
.end method
