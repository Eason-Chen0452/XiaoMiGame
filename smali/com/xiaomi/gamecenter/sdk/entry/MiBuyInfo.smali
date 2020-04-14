.class public Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private amount:I

.field private count:I

.field private cpOrderId:Ljava/lang/String;

.field private cpUserInfo:Ljava/lang/String;

.field private extraInfo:Landroid/os/Bundle;

.field private miBuyInfoVersion:I

.field private productCode:Ljava/lang/String;

.field private purchaseName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/j;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/j;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->miBuyInfoVersion:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->amount:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->miBuyInfoVersion:I

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAmount()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->amount:I

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->count:I

    return v0
.end method

.method public getCpOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->cpOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getCpUserInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->cpUserInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraInfo()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->extraInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public getMiBuyInfoVersion()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->miBuyInfoVersion:I

    return v0
.end method

.method public getProductCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->productCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->purchaseName:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->cpOrderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->count:I

    const/16 v1, 0x270f

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->amount:I

    const/16 v1, 0x4e20

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAmount(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->amount:I

    return-void
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->count:I

    return-void
.end method

.method public setCpOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->cpOrderId:Ljava/lang/String;

    return-void
.end method

.method public setCpUserInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->cpUserInfo:Ljava/lang/String;

    return-void
.end method

.method public setExtraInfo(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->extraInfo:Landroid/os/Bundle;

    return-void
.end method

.method public setMiBuyInfoVersion(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->miBuyInfoVersion:I

    return-void
.end method

.method public setProductCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->productCode:Ljava/lang/String;

    return-void
.end method

.method public setPurchaseName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->purchaseName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->miBuyInfoVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->cpOrderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->productCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->cpUserInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->amount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->extraInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->miBuyInfoVersion:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfo;->purchaseName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
