.class public Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private count:I

.field private cpOrderId:Ljava/lang/String;

.field private productCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/k;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/k;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->count:I

    return v0
.end method

.method public getCpOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->cpOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->productCode:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->productCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->cpOrderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->count:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->count:I

    const/16 v1, 0x270f

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->count:I

    return-void
.end method

.method public setCpOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->cpOrderId:Ljava/lang/String;

    return-void
.end method

.method public setProductCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->productCode:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->getCpOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->getProductCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOffline;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
