.class public Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cpOrderId:Ljava/lang/String;

.field private cpUserInfo:Ljava/lang/String;

.field private mili:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/l;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/l;-><init>()V

    sput-object v0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public getCpOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->cpOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getCpUserInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->cpUserInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getMili()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->mili:I

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->cpOrderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->mili:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->mili:I

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

.method public setCpOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->cpOrderId:Ljava/lang/String;

    return-void
.end method

.method public setCpUserInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->cpUserInfo:Ljava/lang/String;

    return-void
.end method

.method public setMiBi(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->mili:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->getCpOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->getMili()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->getCpUserInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
